#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1 - Driver Control",
  type: "program",
  date: datetime(year: 2025, month: 8, day: 29),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Ishika",
  witnessed: "Samia",
)

#to-do(
  date: datetime(year: 2025, month: 8, day: 29),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Program the robot's drivetrain system, and implement the necessary features.", "Everyone"),
    (true, "Test the drivetrain according to several different critera.", "Everyone"),
  )
)

Because basic tank drive code does not change between seasons, it did not take long for us to program the tank drive configuration for our drivetrain.

#code-header[src/main.cpp]
```cpp
  // Gets amount forward/backward from the left joystick
   int = Controller.get_analog(pros::E_CONTROLLER_ANALOG_LEFT_Y);
  // Gets the turn left/right from the right joystick
   int = Controller.get_analog(pros::E_CONTROLLER_ANALOG_RIGHT_Y);
   // Sets left motor voltage
   left_mg.move(GetCurveOutput(LYAxis)); 
   // Sets right motor voltage
		right_mg.move(GetCurveOutput(RYAxis)); 
```

#admonition(type: "note")[
  PROS #glossary-footnote[PROS] takes joystick input from the closed interval [-127, 127], and controls motors using the same interval.
]

After verifying that the basic tank drive code worked as intended, we brainstormed some programming features that could help our driver drive more effectively while on the field.

#admonition(type: "brainstorm", title: "Sub-Brainstorm: Driver Control")[
  - Drive Curve (Suggested by Ishika)
]
#colbreak()
= Drive Curve
The purpose of a drive curve is to give the driver more precise control over the power output of the drivetrain. Normally, the relationship between the position of the joystick and the power output to the drivetrain is linear:

#align(center)[
  #figure(
    image("program-driver-control/linear-control.svg", height: 35%),
    caption: [Visualization of the linear drive mapping in the interval [-127,127].]
  )
]

However, this default value mapping does not make the best use of the joysticks because the driver will not need fine control of the speed of the motors when moving the robot at full speed. By using an exponential curve mapping instead of a linear mapping, we shift that control to when the robot is moving at slower speeds, which is more useful to the driver. In other words, larger changes in the joystick input result in smaller changes in real speed when driving slowly, but when the joystick is pushed to a high speed, the drivetrain jumps to full speed faster.

To create the drive curve, we used the following formula created by Team 5225A The E-Bots PiLons #footnote([https://www.vexforum.com/t/vexcode-joystick-curving/76987]):

#admonition(type: "equation")[
  If:
  - $x$ is an integer from [-127, 127] representing the joystick input
  - $t$ is a constant value representing the severity of the curve

  #text(size: 15pt)[
    $ ( e^(-t/10) + e^( (abs(x)-127)/10) * (1-e^(t/10)) )x $
  ]
]

The graph below is an exponential curve with a t-value of 20 compared to a linear graph.

#align(center)[
  #figure(
    image("program-driver-control/exponential-control.svg", height: 35%),
    caption: [Visualization of the exponential drive curve mapping in red versus the linear drive mapping in blue.]
  )
]

We implemented this into our code by creating a function that takes in the joystick value as a parameter and outputs the curved value as a decimal.

#code-header[src/subsystemFiles/drive.cpp]
```cpp
  // Returns the curved output based off of the joystick value input as a parameter
  float GetCurveOutput(int input) {
      return (std::exp(-20/12.7)+std::exp((std::abs(input)-127)/12.7)*(1-std::exp(-20/12.7))) * input;
  }
```
