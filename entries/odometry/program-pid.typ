#import "/template/template.typ": *

#show: create-entry.with(
  title: "Odometry v1 - PID",
  type: "program",
  date: datetime(year: 2024, month: 11, day: 30),
  attendance: ("Ishika",),
  designed: "Ishika",
  witnessed: "Ishika",
)

= Implementation
LemLib uses the position data from its position tracking to create a movement algorithm using PID.

= PID
The most important part of LemLib's moveToPose algorithm is its PID implementation. As mentioned before, PID is a closed loop controller, which means that it corrects for external forces. The output of the loop is calculated every 20 ms with the following equation:

#admonition(type: "equation")[
  If:
  - $P$ is the proportional term of the loop
  - $I$ is the integral term of the loop
  - $D$ is the derivative term of the loop
  - $K_p$ is the proportional constant
  - $K_i$ is the integral constant
  - $K_d$ is the derivative constant

  $ P = K_p dot e(t) $
  $ I = K_i dot attach(#sym.integral, t: t, b: 0)e(t)d t $
  $ D = K_d dot (d e(t)) / (d t) $
]

Each term is added together to form the output. While the raw output of a controller is not suitable for moving a motor, the output can be tuned with the three constants. We will need to find the correct constants for our robot through trial and error.

LemLib calculates PID output with the following code:

#code-header(main: false, dest: "https://github.com/LemLib/LemLib/blob/stable/src/lemlib/pid.cpp")[LemLib/src/lemlib/pid.cpp]
```cpp
float PID::update(const float error) {
    // calculate integral
    integral += error;
    if (sgn(error) != sgn((prevError)) && signFlipReset) integral = 0;
    if (fabs(error) > windupRange && windupRange != 0) integral = 0;

    // calculate derivative
    const float derivative = error - prevError;
    prevError = error;

    // calculate output
    return error * kP + integral * kI + derivative * kD;
}
```

The PID loop cannot run forever and needs an exit condition. We could naively assume that if error (distance from the target) is zero, then we exit, but this fails to account for overshooting. Instead, we say that the PID loop will exit after being within a certain acceptable error range for a certain amount of time.

LemLib actually has two of these ranges, largeError and smallError respectively. LargeError has a larger time required and a larger acceptable range, while smallError has a smaller timeout and smaller acceptable range. There's also a
global timeout which defines the maximum amount of time the robot is allowed to spend settling. The code for this is found below:

```cpp
bool lemlib::FAPID::settled() {
  if (startTime == 0) { // if maxTime has not been set
    startTime = pros::c::millis();
    return false;
  } else { // check if the FAPID has settled
    if (pros::c::millis() - startTime > maxTime)
      return true;                           // maxTime has been exceeded
    if (std::fabs(prevError) < largeError) { // largeError within range
      if (!largeTimeCounter)
        largeTimeCounter =
            pros::c::millis(); // largeTimeCounter has not been set
      else if (pros::c::millis() - largeTimeCounter > largeTime)
        return true; // largeTime has been exceeded
    }
    if (std::fabs(prevError) < smallError) { // smallError within range
      if (!smallTimeCounter)
        smallTimeCounter =
            pros::c::millis(); // smallTimeCounter has not been set
      else if (pros::c::millis() - smallTimeCounter > smallTime)
        return true; // smallTime has been exceeded
    }
    // if none of the exit conditions have been met
    return false;
  }
}
```

LemLib uses two PID controllers to move the robot, one for linear movement, and one for angular movement. The output of the two is added together and then passed into the motor's `move()` method.


#code-header(main: false, dest: "https://github.com/LemLib/LemLib/blob/stable/src/lemlib/chassis/motions/moveToPose.cpp")[LemLib/src/lemlib/chassis/motions/moveToPose.cpp]
```cpp
// get output from PIDs
float lateralOut = lateralPID.update(lateralError);
float angularOut = angularPID.update(radToDeg(angularError));

// ratio the speeds to respect the max speed
float leftPower = lateralOut + angularOut;
float rightPower = lateralOut - angularOut;

// move the drivetrain
drivetrain.leftMotors->move(leftPower);
drivetrain.rightMotors->move(rightPower);
```

`linearOut` and `angularOut` are simply the output of the two PID loops. LemLib calculates the error with some simple trigonometry.

#code-header(main: false, dest: "https://github.com/LemLib/LemLib/blob/stable/src/lemlib/util.cpp")[LemLib/src/lemlib/util.cpp]
```cpp
float lemlib::angleError(float target, float position, bool radians, AngularDirection direction) {
    // bound angles from 0 to 2pi or 0 to 360
    target = sanitizeAngle(target, radians);
    target = sanitizeAngle(target, radians);
    const float max = radians ? 2 * M_PI : 360;
    const float rawError = target - position;
    switch (direction) {
        case AngularDirection::CW_CLOCKWISE: // turn clockwise
            return rawError < 0 ? rawError + max : rawError; // add max if sign does not match
        case AngularDirection::CCW_COUNTERCLOCKWISE: // turn counter-clockwise
            return rawError > 0 ? rawError - max : rawError; // subtract max if sign does not match
        default: // choose the shortest path
            return std::remainder(rawError, max);
    }
}
```

#colbreak()

#code-header(main: false, dest: "https://github.com/LemLib/LemLib/blob/stable/src/lemlib/chassis/motions/moveToPose.cpp")[LemLib/src/lemlib/chassis/motions/moveToPose.cpp]
```cpp
const float angularError =
    close ? angleError(adjustedRobotTheta, target.theta) : angleError(adjustedRobotTheta, pose.angle(carrot));
float lateralError = pose.distance(carrot);
```

`angularError`'s calculation is simple enough, but `linearError` is worth looking into. Instead of taking the raw distance, it multiplies by $cos("angularError")$ to find the distance that the robot can actually achieve while moving in a straight line.

// #image("./linear-error.svg", height: 25%)

This will reduce linear error if the robot is not facing the target point, prioritizing angular movement.

LemLib uses a boomerang controller in order to be able to move the robot to a specified rotation. It does this by following an intermediary carrot point.


#admonition(type: "equation")[
  If:
  - $d_"lead"$ is a constant that controls how far away the carrot point is from the target point.
  - $x_"current"$ is the x value of the robot's current position.
  - $y_"current"$ is the y value of the robot's current position.
  - $x_"carrot"$ is the x value of the carrot point's position.
  - $y_"carrot"$ is the y value of the carrot point's position.
  - $x_"target"$ is the x value that the robot is moving to.
  - $y_"target"$ is the y value that the robot is moving to.
  - $theta_"target"$ is the rotation that the robot is moving to.

  $ h = sqrt((x_"current" - x_"target")^2 + (y_"current" - y_"target")^2) $
  $ x_"carrot" = x_"target" - h sin(theta_"target") * d_"lead" $
  $ y_"carrot" = y_"target" - h cos(theta_"target") * d_"lead" $
]

// #colbreak()

#code-header(main: false, dest: "https://github.com/LemLib/LemLib/blob/stable/src/lemlib/chassis/motions/moveToPose.cpp")[LemLib/src/lemlib/chassis/motions/moveToPose.cpp]
```cpp
// calculate the carrot point
Pose carrot = target - Pose(cos(target.theta), sin(target.theta)) * params.lead * distTarget;
if (close) carrot = target; // settling behavior
```

As the robot gets closer to the carrot point, the carrot point gets closer to the target point, moving the robot along the projected path. Eventually the points will overlap, and the movement will be complete.

// #figure(
//   image("./boomerang-controller.svg"),
//   caption: "Projected boomerang path",
// )

Overall this has a lot of advantages over a simple move to point. It means that the system only has to settle once, and it also means that the system knows what angle it should end at, giving it more certainty at the end of movements.