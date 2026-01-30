#import "/template/template.typ": *

#show: create-entry.with(
  title: "Autonomous - Rebel Rumble Competition",
  type: "program",
  date: datetime(year: 2025, month: 12, day: 12),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Samia",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2025, month: 12, day: 12),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Program an autonomous code for the upcoming competition", "Everyone"),
  )
)
= Auton Routine
Due to the Rebel Rumble comepetition tomorrow we needed to create an auton that would be able to score at least 3 rings, on the top goal. The goal was to make an auton on both sides of the field that would be consistent and good at scoring. 


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
#colbreak()
= Autonomous Programming
With all of the setup done, we could finally program the auton itself, under the name red_right.
#code-header[src/autonomous.cpp]
```cpp
 chassis.moveToPoint(0,26,1000, {.maxSpeed = 70});
    chassis.waitUntilDone();
    chassis.turnToHeading(51, 1000,{.maxSpeed = 100});
    chassis.waitUntilDone();
    chassis.moveToPoint(5,30,4000,{.maxSpeed = 32});
    intakeMove(105,3000);
    chassis.waitUntilDone();
    chassis.turnToHeading(145, 1000,{.maxSpeed = 100});
    chassis.moveToPoint(38,10,1000);
    chassis.waitUntilDone();
    chassis.turnToHeading(180, 1000,{.maxSpeed=100});
```

= Autonomous Path Visualization
#set grid(
  columns: (30fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

#grid(
  figure(
    align(center, image("rebel-rumble.png", width: 250pt,)),
    caption: "Diagram for Auton Path"
  ),
),  