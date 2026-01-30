#import "/template/template.typ": *

#show: create-entry.with(
  title: "Autonomous - Area 53 Scrimmage",
  type: "program",
  date: datetime(year: 2024, month: 11, day: 15),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Samia",
  witnessed: "Ishika",
)


= Auton Routine
Due to a lack of time, we made a simple auton that takes the block next to the center goals and scores it into the lower center goal. 
The robot would start in a position adjacent to the parking spot, and at the beginning of the autonomous period, the robot would move forwards, turn, and move again until it reached the 3 blocks that form a 90 degree angle before the center goal. The robot would then proceed to intake it, move to the goal and score the block into the lower stage goal.  



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

We also had to create a switch statement which would allow us to change between different autons during the match. Due to the lack of time and the fact that two sides across from each other can have the same auton we didn't need to implement the switch statement fully but it was still there to start auton. 

#code-header[src/autonomous.cpp]
```cpp
int auton = 1;

void autonomous() {
    switch (auton) {
        case 0:
            scrim_auton();
            break;
        case 1:
            red_right();
            break;
    }
} 
```

Due to the fact that the intake this year includes multiple motors and different statements for different abilities we had to create a similar function for all the different intake functions, and for each stage. A sample of one of the functions for the intake is provided below:

#code-header[src/autonomous.cpp]
```cpp
void firstStage(int timeout){
    topMotor.move(0);
	bottomMotor.move(87);
	hopperMotor.move(127);
    pros::delay(timeout);
    topMotor.brake();
	bottomMotor.brake();
	hopperMotor.brake();
}
```

#colbreak()

= Autonomous Programming
With all of the setup done, we could finally program the auton itself, under the name scrim_auton.
#code-header[src/autonomous.cpp]
```cpp
  moveDrivetrain(50,250);
    pros::delay(1000);
    turnDrivetrain(40,455);
    pros::delay(1000); 
    moveDrivetrain(55,500);
    pros::delay(100);
    firstStage(2000);
    pros::delay(100);
    turnDrivetrain(25,457);
    pros::delay(100);
    moveDrivetrain(60,297);
    pros::delay(100);
    firstStageOFF(3500);
```
= Autonomous Path Visualization
#set grid(
  columns: (8fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

#grid(
  figure(
    align(center, image("scrimmage-auton.png", width: 250pt,)),
    caption: "Diagram for Auton Path"
  ),
),