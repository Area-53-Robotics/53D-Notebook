#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v2",
  type: "program",
  date: datetime(year: 2025, month: 11, day: 07),
  attendance: ( "Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Samia",
  witnessed: "Ishika",
)

= Intake Driver Control
First, we declared a global intake motor object to use throughout the program.

#code-header[src/global.cpp]
```cpp
// Declares the intake motor and sets it to port 9
pros::Motor bottomMotor(7, pros::v5::MotorGears::blue);
pros::Motor topMotor(10, pros::v5::MotorGears::blue);
```

= Completed Intake Driver Control Code
Using the declarations that were made, the intake was programmed to operate under driver control. The intake has two motions: 

#code-header[src/main.cpp]
```cpp
// The intake motor has different stages based on the button pressed
if(Controller.get_digital(pros::E_CONTROLLER_DIGITAL_R1)){
			 // Bottom Motor - Rotate positive
       // Top motor - rotate negative
			bottomMotor.move(127);
			topMotor.move(-127);
		}
		else{
			bottomMotor.move(0);
			topMotor.move(0);
		}
```

= Pneumatics Intake Decleration Code
Due to our intake being controlled by two pneumatic pistons we needed to code the pneumatics by first making a global pneumatic object.

#code-header[src/global.cpp]
```cpp
// The intake motor has different stages based on the button pressed
      pros::adi::DigitalOut IntakePistons(1);
      pros::adi::DigitalOut IntakePistons2(2);
```
#colbreak()
= Pneumatics Intake Function Code
After we had the pneumatics declerations we chose to create a function where both the pneumatic pistons would be activated depending on whether the boolean value is true or false.  
#code-header[src/pneumatics.cpp]
```cpp
// boolean functions for the activation of the piston
    bool intakePistonsActivated = false;
  //Pneumatic function
    void PneumaticIntake() {
    if (!intakePistonsActivated) {
        IntakePistons.set_value(1);
        IntakePistons2.set_value(1);
        intakePistonsActivated = true;
    } else {
        IntakePistons.set_value(0);
        IntakePistons2.set_value(0);
        intakePistonsActivated = false;
    }
}
```
= Pneumatics Intake Driver Control Code
After we have created a function, all that is left to do is implement the the pneumatics to work under driver control:
#code-header[src/main.cpp]
```cpp
  // When L1 is pressed then the pistons are activated 
  if(Controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_L1)) PneumaticIntake();
```

