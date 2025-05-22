#import "/template/template.typ": *

#show: create-entry.with(
  title: "Autonomous - Area 53 Scrimmage",
  type: "program",
  date: datetime(year: 2024, month: 9, day: 28),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Ishika",
  witnessed: "Ishika",
)

#admonition(type: "note")[
  We wrote this auton between matches and during the lunch period in the Area 53 Scrimmage.
]

= Auton Routine
Due to the lack of time, we made a simple two ring auton. The robot would start in a position parallel to the mobile goal, and at the beginning of the autonomous period, the robot would move forwards until it reached the goal and then proceed to clamp it. Next, the intake would activate to score our preloaded ring onto the goal. Then, the robot would turn towards another ring and then drive towards it. When reaching the designated position the robot would activate the intake and score the ring onto the mobile goal.

= Auton Setup
Before making the actual auton path we needed to create autonomous movement functions for the drivetrain. These functions allow us to send commands to the entire drivetrain at once instead of sending commands individually to both halves of the drivetrain.

#code-header[src/autonomous.cpp]
```cpp
void moveDrivetrain(int power, int timeout) {
  left_mg.move(power);
  right_mg.move(power);
  pros::delay(timeout);
  left_mg.brake();
  right_mg.brake();
}

void turnDrivetrain(int power, int timeout) {
  left_mg.move(-power);
  right_mg.move(power);
  pros::delay(timeout);
  left_mg.brake();
  right_mg.brake();
}
```

We made two movement functions for the drivetrain. The moveDrivetrain() function commands the robot to move forward or back for a specified amount of time and with a specified speed. The turnDrivetrain() function commands the robot to turn clockwise or counterclockwise with a specified speed. Both functions end with motor brake commands so that the motors do not keep running after the intended movement is completed.

#colbreak()

= Autonomous Programming
With all of the setup done, we could finally program the auton itself.
#code-header[src/autonomous.cpp]
```cpp
  moveDrivetrain(-100, 226);
  pros::delay(1000);
  ClampPistons.set_value(1);
  pros::delay(1000);
  IntakeMotor.move(500);
  pros::delay(1500);
  turnDrivetrain(-125, 300);
  pros::delay(1000);
  moveDrivetrain(200,150);
  IntakeMotor.move(500);
```