#import "/template/template.typ": *

#show: create-entry.with(
  title: "Odometry v1 - Position Tracking",
  type: "program",
  date: datetime(year: 2024, month: 11, day: 30),
  attendance: ("Ishika",),
  designed: "Ishika",
  witnessed: "Ishika",
)

#show figure.caption: it => {
  "Figure " + figure.numbering + ": " + it.body
}

#to-do(
  date: datetime(year: 2024, month: 11, day: 30),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Program the position tracking system.", ("Ishika",)),
    (true, "Program the PID algorithms.", ("Ishika",)),
  )
)

= Background
A position tracking algorithm has 3 goals:
- Track changes in the robot's orientation
- Track vertical (y-axis) displacements
- Track horizontal (x-axis) displacements

= Units
We chose the following units for our position tracking algorithm:
- Inches for distance and position, because that is the custom for VEX field measurements and many user-made libraries.
- Radians for angles, because they are used for standard C++ trigonometric functions.

#admonition(type: "note")[
  Because LemLib is a library, it has a lot of code that is meant to account for the varying situations of its users. To reduce redundancy, we only included the code snippets that are relevant to our robot's configuration.
]

= Global Variables
#code-header(main: false, dest: "https://github.com/LemLib/LemLib/blob/stable/src/lemlib/chassis/odom.cpp")[LemLib/src/lemlib/chassis/odom.cpp]
```cpp
// tracking thread
pros::Task* trackingTask = nullptr;

// global variables
lemlib::OdomSensors odomSensors(nullptr, nullptr, nullptr, nullptr, nullptr); // the sensors to be used for odometry
lemlib::Drivetrain drive(nullptr, nullptr, 0, 0, 0, 0); // the drivetrain to be used for odometry
lemlib::Pose odomPose(0, 0, 0); // the pose of the robot

float prevVertical = 0;
float prevVertical1 = 0;
float prevVertical2 = 0;
float prevHorizontal = 0;
float prevHorizontal1 = 0;
float prevHorizontal2 = 0;
float prevImu = 0;
```

= Definitions
The following variables are approximately in the order that they are first used in the document. They will be further explained throughout the document.

Constants:
- $s_V$ - the left-right distance from the tracking center to the vertical tracking wheel

Variables: \
- $arrow(d)$ - global position vector at current reset
- $theta$ - global orientation at current reset
- $Delta theta$ - the change in the robot's orientation since the last reset
- $Delta V$ - distance the vertical tracking wheel rolled since the last reset
- $r_V$ - distance from the center of rotation to the vertical tracking wheel
- $r_C$ - distance/radius from the center of rotation to the tracking center
- $arrow(d_l)$ - local translation vector
- $theta_m$ - average orientation
- $theta_0$ - global orientation at last reset
- $arrow(d#sub("lx"))$ - local horizontal displacement
- $arrow(d#sub("ly"))$ - local vertical displacement
- $arrow(d_0)$ - global position vector at last reset
- $Delta arrow(d)$ - global position displacement

#admonition(type: "note")[
  These variables are not constants because they change with each _reset_, which ideally is an infinitely small time interval set by the programmer. Due to hardware constraints, this reset should generally occur every 10-20 milliseconds.
]

= Tracking Theory
The position tracking system provides the rest of the robots' code with live data on the current position and orientation (represented as a position vector $arrow(d)$, and orientation $theta$) of a predefined point on the robot (called the "tracking center", see @figure1). Note that the tracking wheels can be placed anywhere along the dotted lines without affecting the math; it is the _perpendicular_ distance to the tracking center that matters, as explained below.

#figure(
  image(
    "program-odometry/Odometry Robot Setup.svg",
    height: 300pt
  ),
  caption: "A sample robot base with tracking wheels."
) <figure1>

Position tracking works by modelling the robot's motion (i.e. the motion of the tracking center) as an arc that occurs between each timed reset. The vertical tracking wheel path is an arc that is concentric with the tracking center's arc.

== Calculating the Change in Orientation
Because our odometry hardware setup has an inertial measurement unit (IMU), to find the robot's change in orientation, we just subtract the current angle of the IMU from the previous angle of the IMU.

// TODO: Fix comments on this code segment

#code-header(main: false, dest: "https://github.com/LemLib/LemLib/blob/stable/src/lemlib/chassis/odom.cpp")[LemLib/src/lemlib/chassis/odom.cpp]
```cpp
void lemlib::update() {
    // ... Non-relevant lines of code excluded

    float imuRaw = 0;

    // ... Non-relevant lines of code excluded

    // Gets the current heading detected by the inertial sensor
    if (odomSensors.imu != nullptr) imuRaw = degToRad(odomSensors.imu->get_rotation());

    // ... Non-relevant lines of code excluded

    // calculate the change in sensor values
    float deltaImu = imuRaw - prevImu;

    // ... Non-relevant lines of code excluded

    // update the previous sensor values
    prevImu = imuRaw;

    // ... Non-relevant lines of code excluded

    // Obtains the current heading of the robot
    float heading = odomPose.theta;

    // ... Non-relevant lines of code excluded

    if (odomSensors.imu != nullptr) heading += deltaImu;

    // ... Non-relevant lines of code excluded

    float deltaHeading = heading - odomPose.theta;
}
```


== Calculating the Translation
#admonition(type: "note")[
  To simplify the calculation of the global coordinates, we will first perform the calculations in a local coordinate system that treats the straight path from the initial position to the final position as the positive y direction.
]

#figure(
  image(
    "program-odometry/Arc Movement.png"
  ),
  caption: "A simple example maneuver."
) <figure2>

The arc movement of a robot is modeled in @figure2. There are two important things to note from the model:
// TODO: change add "local" to "vertical displacement" in the bullet point below and do so for the pictures
+ The straight line from the initial to the new tracking center position (which is the vertical displacement, $Delta y$) forms an isosceles triangle with $r_C$, which is the same for both the initial and new tracking center position.
+ $Delta y$ is a chord formed by connecting the tracking center's initial and new positions. We can calculate the length of the chord by treating it as one of the legs of the isosceles triangle formed by the robot's movement.

We found two methods to calculate the formula for the length of the chord:
- Right Angle Trigonometry
- Law of Cosines

However, before calculating the formula for the chord length, we need to find the unknown value $r_C$, the distance from the center of rotation to the tracking center. We can calculate $r_C$ knowing that the movement of the vertical tracking wheel can be modeled as an arc.

#admonition(type: "equation", title: "Arc Length Equation")[
  If:
  - $s$ = arc length
  - $r$ = radius
  - #sym.theta = central angle in radians

  $ s = r theta $
]

#set enum(numbering: "(1)")

#grid(
  columns: (2fr, 3fr),
  column-gutter: 5pt,
  row-gutter: 5pt,
  align: horizon,


  [
    $ Delta V = r_V Delta theta $
  ],
  [
    1. Create arc length equation using the distance traveled by the vertical tracking wheel
  ],
  [
    $ Delta V = (r_C - s_V) Delta theta $
  ],
  [
    2. Substitute $r_C$ into the equation
  ],
  [
    $ (Delta V) / (Delta theta) = r_C - s_V $
  ],
  [
    3. Divide both sides of the equation by $Delta theta$
  ],
  [
    $ r_C = (Delta V) / (Delta theta) + s_V $
  ],
  [
    4. Isolate $r_C$
  ],
)

=== Right Angle Trigonometry Method
We can bisect the isosceles triangle created by the robot's movement into two right triangles as modeled in @figure3, allowing us to solve for $y$.

#figure(
  image(
    "program-odometry/Half Chord.png"
  ),
  caption: "Illustration of bisected triangle."
) <figure3>

#grid(
  columns: (4fr, 3fr),
  column-gutter: 5pt,
  row-gutter: 5pt,
  align: horizon,

  [
    $ sin((Delta theta) / 2) = ((Delta y) / 2) / r_C $
  ],
  [
    1. Substitute known variables into sin definition
  ],
  [
    $ Delta y = 2 r_C sin((Delta theta) / 2) $
  ],
  [
    2. Isolate $Delta y$
  ],
  [
    $ Delta y = 2 ((Delta R) / (Delta theta) + s_R) sin((Delta theta) / 2) $
  ],
  [
    3. Substitute $r_C$ with equivalent right tracking wheel arc length expression
  ],
)

=== Law of Cosines Method
Alternatively, we can take the entire isosceles triangle and substitute the known information into the Law of Cosines.

#admonition(type: "equation", title: "Law of Cosines Formula")[
  If:
  - $a$, $b$, and $c$ are the lengths of the sides of the triangle
  - $C$ is the angle opposite to side $c$

  $ c^2 = a^2 + b^2 - 2 a b cos(C) $
]

#admonition(type: "equation", title: "Sin Half-Angle Identity")[
  $ sin(theta / 2) = sqrt((1 - cos(theta)) / 2) $
]


#grid(
  columns: (4fr, 3fr),
  column-gutter: 5pt,
  row-gutter: 5pt,
  align: horizon,

  [
    $ c^2 = a^2 + b^2 - 2 a b cos(C) $
  ],
  [
    1. Law of Cosines formula
  ],
  [
    $ Delta y #super("2") = r_C #super("2") + r_C #super("2") - 2 r_C #super("2") cos(Delta theta) $
  ],
  [
    2. Substitute in known variables
  ],
  [
    $ Delta y #super("2") = 2 r_C #super("2") (1 - cos(Delta theta)) $
  ],
  [
    3. Simplify and factor out $2 r_C #super("2")$
  ],
  [
    $ Delta y #super("2") = 4 r_C #super("2") ((1 - cos(Delta theta)) / 2) $
  ],
  [
    4. Factor out a 2
  ],
  [
    $ Delta y = 2 r_C sqrt((1 - cos(Delta theta)) / 2) $
  ],
  [
    5. Square root both sides of the equation
  ],
  [
    $ Delta y = 2 r_C sin((Delta theta) / 2) $
  ],
  [
    6. Simplify the square root term using the sin half-angle identity
  ],
  [
    $ Delta y = 2 ((Delta R) / (Delta theta) + s_R)sin((Delta theta) / 2) $
  ],
  [
    7. Substitute $r_C$ with equivalent right tracking wheel arc length expression
  ],
)

=== Horizontal Translation
If the robot strays from the arc, there will be horizontal translation. This forms a second arc, in which the chord length can be found by repeating the calculations above. However, instead of using the right tracking wheel, for the horizontal translation we would use the strafing wheel, giving us this equation:

$ Delta x = 2 ((Delta S) / (Delta theta) + s_S)sin((Delta theta) / 2) $

Combining the two equations gives us the complete local translation vector:

$ arrow(d_l) = 2 sin((Delta theta) / 2) dot vec(delim: "[", (Delta S) / (Delta theta) + s_S, (Delta R) / (Delta theta) + s_R) $

== Converting from Local to Global Coordinates
Now that we have calculated the length of the robot's displacement (local translation vector),
we need to convert it to a global translation vector that can be added to the robot's previous position.



#code-header(main: false, dest: "https://github.com/LemLib/LemLib/blob/stable/src/lemlib/chassis/odom.cpp")[LemLib/src/lemlib/chassis/odom.cpp]
```cpp
void lemlib::update() {
    // ... Non-relevant lines of code excluded

    float vertical1Raw = 0;

    // ... Non-relevant lines of code excluded

    // get the current sensor values
    if (odomSensors.vertical1 != nullptr) vertical1Raw = odomSensors.vertical1->getDistanceTraveled();

    // ... Non-relevant lines of code excluded

    // calculate the change in sensor values
    float deltaVertical1 = vertical1Raw - prevVertical1;

    // ... Non-relevant lines of code excluded

    // update the previous sensor values
    prevVertical1 = vertical1Raw;

    // ... Non-relevant lines of code excluded

    lemlib::TrackingWheel* verticalWheel = nullptr;
    if (!odomSensors.vertical1->getType()) verticalWheel = odomSensors.vertical1;

    // ... Non-relevant lines of code excluded

    float rawVertical = 0;
    if (verticalWheel != nullptr) rawVertical = verticalWheel->getDistanceTraveled();

    // ... Non-relevant lines of code excluded

    float verticalOffset = 0;
    if (verticalWheel != nullptr) verticalOffset = verticalWheel->getOffset();

    // ... Non-relevant lines of code excluded


    // calculate change in x and y
    float deltaX = 0;
    float deltaY = 0;
    if (verticalWheel != nullptr) deltaY = rawVertical - prevVertical;
    if (horizontalWheel != nullptr) deltaX = rawHorizontal - prevHorizontal;
    prevVertical = rawVertical;
    prevHorizontal = rawHorizontal;

    // calculate local x and y
    float localX = 0;
    float localY = 0;
    if (deltaHeading == 0) { // prevent divide by 0
        localX = deltaX;
        localY = deltaY;
    } else {
        localX = 2 * sin(deltaHeading / 2) * (deltaX / deltaHeading + horizontalOffset);
        localY = 2 * sin(deltaHeading / 2) * (deltaY / deltaHeading + verticalOffset);
    }

}
```

=== Calculating the Angular Offset
However, we first need to determine the average orientation $theta_m$, which is the angle the local translation vector is offset from the global position vector by. This situation is modeled in @figure4.

#figure(
  image(
    "program-odometry/Local Offset.png",
  ),
  caption: "Illustration of the angular offset (angle S) and its relation to angle N."
) <figure4>

Note that the triangle formed by $#sym.angle S$ is adjacent to the isosceles triangle formed by the robot's arc movement. Also note that $#sym.angle S$ and $#sym.angle N$ are complementary angles (they add up to 90#sym.degree). We can use this information to determine $#sym.angle S$, the angular offset.

#grid(
  columns: (4fr, 3fr),
  column-gutter: 5pt,
  row-gutter: 5pt,
  align: horizon,

  [
    $ 2 angle N + Delta theta = 180 $
  ],
  [
    1. The angles of the isosceles triangle must add up to 180#sym.degree
  ],
  [
    $ angle N = (180 - Delta theta) / 2 $
  ],
  [
    2. Isolate $angle N$
  ],
  [
    $ angle N = 90 - (Delta theta) / 2 $
  ],
  [
    3. Simplify the equation
  ],
)

Now that we have defined $angle N$, we can relate it to $angle S$.

#grid(
  columns: (4fr, 3fr),
  column-gutter: 5pt,
  row-gutter: 5pt,
  align: horizon,

  [
    $ angle S + angle N = 90 $
  ],
  [
    1. Complementary angles add up to 90#sym.degree
  ],
  [
    $ angle S + 90 - theta / 2 = 90 $
  ],
  [
    2. Substitute $angle N$ with equivalent expression
  ],
  [
    $ angle S = theta / 2 $
  ],
  [
    3. Subtract 90 from both sides of the equation
  ]
)

In addition to $angle S$, the local translation vector is also offset by $theta_0$, the orientation at the last reset. Therefore, the average orientation $theta_m$ can be calculated with the equation:

$ theta_m = theta_0 + (Delta theta) / 2 $

=== Converting the Polar Displacement to Cartesian Displacement
Now that we know $theta_m$, we can use it to convert the local displacement to global coordinates. The local displacement vector is a polar equation, so we can convert it to cartesian equations as modeled in @figure5.

#figure(
  image(
    "program-odometry/Polar to Rectangular.png",
    height: 300pt
  ),
  caption: "Illustration of the relation between the polar and cartesian representations of position displacement."
) <figure5>

#admonition(type: "equation", title: "Representing Polar Equations in Cartesian Form")[
  If:
  - $r$ is the distance from the origin to the endpoint of the polar coordinate
  - $theta$ is the angle of the polar vector
  - $x$ is the horizontal displacement in cartesian form
  - $y$ is the vertical displacement in cartesian form

  Then polar equations can be represented in cartesian form using the following equations:

  $
    x = r cos theta \
    y = r sin theta
  $
]

Lastly, to determine the horizontal and vertical displacements in cartesian form, we can take the _derivative_ (measure of change over time) of both equations. To do this, we can use the Product Rule of Calculus.

#admonition(type: "equation", title: "Product Rule")[
  If $u$ and $v$ are differentiable functions:
  $ d / (d t) (u dot v) = v dot (d u) / (d t) + u dot (d v) / (d t) $
]

#admonition(type: "equation", title: "Derivatives of sin and cos")[
  $
    d / (d t) sin theta = cos theta \
    d / (d t) cos theta = - sin theta
  $
]

We can start with the global vertical displacement:
#grid(
  columns: (4fr, 3fr),
  column-gutter: 5pt,
  row-gutter: 5pt,
  align: horizon,

  [
    $ y = r sin theta $
  ],
  [
    1. Cartesian equation representing vertical polar displacement
  ],
  [
    $ Delta y = r' dot sin theta + r' dot cos theta $
  ],
  [
    2. Differentiate using the product rule
  ],
  [
    $ Delta y = arrow(d#sub("ly")) dot sin theta + arrow(d#sub("ly")) dot cos theta $
  ],
  [
    3. Substitute known variables into the equation
  ],
)

We can repeat the same process for the global horizontal displacement:
#grid(
  columns: (4fr, 3fr),
  column-gutter: 5pt,
  row-gutter: 5pt,
  align: horizon,

  [
    $ x = r cos theta $
  ],
  [
    1. Cartesian equation representing vertical polar displacement
  ],
  [
    $ Delta x = r' dot cos theta - r' dot sin theta $
  ],
  [
    2. Differentiate using the product rule
  ],
  [
    $ Delta x = arrow(d#sub("lx")) dot cos theta - arrow(d#sub("lx")) dot sin theta $
  ],
  [
    3. Substitute known variables into the equation
  ],
)

Therefore, the global position displacement can be represented as:
$
  Delta arrow(d) =
  vec(
    delim: "[",
    arrow(d#sub("lx")) dot cos theta - arrow(d#sub("lx")) dot sin theta,
    arrow(d#sub("ly")) dot sin theta + arrow(d#sub("ly")) dot cos theta
  )
$

=== Calculating the New Global Position
Finally, to calculate the new global position, we add the global position displacement to the current global position:

$ arrow(d) = arrow(d_0) + Delta arrow(d) $