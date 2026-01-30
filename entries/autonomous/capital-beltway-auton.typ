#import "/template/template.typ": *

#show: create-entry.with(
  title: "Autonomous - Capital Beltway Challenge",
  type: "program",
  date: datetime(year: 2025, month: 11, day: 21),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Samia",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2025, month: 11, day: 21),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Program an autonomous code for the upcoming competition", "Everyone"),
     (true, "Program code for an additional aspect of the intake", "Everyone"),
  )
)
= Auton Routine
Due to the Capital Beltway competition coming up we needed to create an auton that would be able to score at least 3 rings, on the middle goal. The goal was to make an auton on both sides of the field that would be consistent and good at scoring. 


= Auton Setup
Before making the actual auton path we needed to create autonomous functions for the intake. These functions allow us to command different intake motors at once instead of sending commands individually to the two motors of the intake

#code-header[src/autonomous.cpp]
```cpp
void intakeMove(int power, int timeout){
    bottomMotor.move(power);
	topMotor.move(-power);
    pros::delay(timeout);
    bottomMotor.brake();
    topMotor.brake();
}
```

= Autonomous Programming
With all of the setup done, we could finally program the auton itself, under the name red_right.
#code-header[src/autonomous.cpp]
```cpp
 chassis.setPose(0, 0, 0);
    chassis.moveToPoint(8, 34, 1000);
    chassis.waitUntilDone();
    chassis.turnToHeading(65, 1000);
    chassis.waitUntilDone();
    chassis.setPose(0, 0, 0);
    chassis.moveToPoint(2, 10, 1000);
    chassis.waitUntilDone();
    chassis.setPose(0, 0, 0);
    intakeMove(70, 1300);
    chassis.moveToPoint(0, 17, 1000);
    chassis.waitUntilDone();
    intakeMove(40, 400);
    chassis.waitUntilDone();
    chassis.setPose(0, 0, 0);
    chassis.turnToHeading(-108, 1000);
    chassis.waitUntilDone();
    chassis.setPose(0, 0, 0);
    chassis.moveToPoint(0, 17,1000);
    chassis.waitUntilDone();
    intakeMove(127, 3000);
    chassis.waitUntilDone();
    intakeMove(-127, 500);
```

= Autonomous Path Visualization
#set grid(
  columns: (30fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

#grid(
  figure(
    align(center, image("beltway-auton.png", width: 250pt,)),
    caption: "Diagram for Auton Path"
  ),
),  