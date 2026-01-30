#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v1",
  type: "program",
  date: datetime(year: 2025, month: 9, day: 26),
  attendance: ( "Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Samia",
  witnessed: "Ishika",
)

= Intake Driver Control
First, we declared a global intake motor object to use throughout the program.

#code-header[src/global.cpp]
```cpp
// Declares the intake motor and sets it to port 9
pros::Motor topMotor(9, pros::v5::MotorGears::green);
pros::Motor bottomMotor(10, pros::v5::MotorGears::green);
pros::Motor hopperMotor(5, pros::v5::MotorGears::green);
```

= Completed Intake Driver Control Code
Using the declarations that were made, the intake was programmed to operate under driver control. The intake has a few motions: intaking using R2, scoring into the lower goals using R1, scoring in the middle goals using L1, and scoring into the upper goals using L2.

#code-header[src/main.cpp]
```cpp
// The intake motor has different stages based on the button pressed
if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_R1)){
			 // Bottom Motor - Rotate negative
        	// Hopper Motor - Rotate positive 
			topMotor.move(0);
			bottomMotor.move(-100);
			hopperMotor.move(127);
		}
		else if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_R2)){
			// Bottom Motor - Rotate positive 
        	// Hopper Motor - Rotate negative 
			topMotor.move(0);
			bottomMotor.move(127);
			hopperMotor.move(-127);
		}
		else if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_L1)){
			// Bottom Motor - Rotate negative
        	// Hopper Motor - Rotate negative
       		// Top Motor - Rotate negative 
			topMotor.move(127);
			bottomMotor.move(100);
			hopperMotor.move(127);
		}
		else if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_L2)){
			 // Bottom Motor - Rotate Positive
        	// Hopper Motor - Rotate negative
        	// Top Motor - Rotate negative
			topMotor.move(127);
			bottomMotor.move(-127);
			hopperMotor.move(-127);
		}
		else{
			topMotor.move(0);
			bottomMotor.move(0);
			hopperMotor.move(0);
		}
```