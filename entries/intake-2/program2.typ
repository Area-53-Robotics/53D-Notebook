#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v2 - Indexer",
  type: "program",
  date: datetime(year: 2025, month: 11, day: 21),
  attendance: ( "Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Samia",
  witnessed: "Ishika",
)
Before competition our driver noticed that there would be a better way to keep the blocks from going out of the intake very fast because the speed of our intake is very high. An aspect of our intake design is the indexer which acts as a flap connected to a pneumatic piston and goes out and in depending on whether we want to score or store the blocks. 

= Indexer Driver Control
First, we declared a global pneumatic object for the piston to use throughout the program.

#code-header[src/global.cpp]
```cpp
// Declares the indexer piston and sets it to port C
pros::adi::DigitalOut TopPistons(3);
```

= Pneumatic Code for Indexer
Using the decleration from the global file, we had to create boolean so that the piston of the loader mechanism would know to go in or out. 
#code-header[src/pneumatics.cpp]
```cpp
// Creates a boolean variable for the mechanism and sets the default value to false
bool topPistonActivated = false;
//creates a function that has two possibilities: either the piston goes out or the piston goes in
void PneumaticTop(){
    if(!topPistonActivated){
        TopPistons.set_value(1);
        topPistonActivated = true;       
    }else {
        TopPistons.set_value(0);
        topPistonActivated = false;
    }
}
```

= Final Driver Control Code for Indexer
Using the decleration from the global file, and the function we have already create we just have to take the two, add them to the main file, and add a controller button that corresponds with it. 
#code-header[src/main.cpp]
```cpp
// If L2 is pressed the function the piston is activated
		if(Controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_L2)) PneumaticTop();
```