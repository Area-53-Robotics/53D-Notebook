#import "/template/template.typ": *

#show: create-entry.with(
  title: "Loader Mechanism v1",
  type: "program",
  date: datetime(year: 2025, month: 12, day: 05),
  attendance: ( "Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Samia",
  witnessed: "Ishika",
)

= Loader Mechanism Driver Control
First, we declared a global loader mechanism pneumatic object for the piston to use throughout the program.

#code-header[src/global.cpp]
```cpp
// Declares the loader mechanism piston and sets it to port B
pros::adi::DigitalOut LoaderPistons(2);
```

= Pneumatic Code for Loader Mechanism
Using the decleration from the global file, we had to create boolean so that the piston of the loader mechanism would know to go in or out. 
#code-header[src/pneumatics.cpp]
```cpp
// Creates a boolean variable for the mechanism and sets the default value to false
bool loaderPistonActivated = false;
//creates a function that has two possibilities: either the piston goes out or the piston goes in
void PneumaticLoader() {
    if (!loaderPistonActivated) {
        LoaderPistons.set_value(1);
        loaderPistonActivated = true;
    } else {
        LoaderPistons.set_value(0);
        loaderPistonActivated = false;
    }
}
```

= Final Driver Control Code for Loader Mechanism
Using the decleration from the global file, and the function we have already create we just have to take the two, add them to the main file, and add a controller button that corresponds with it. 
#code-header[src/main.cpp]
```cpp
// If R2 is pressed the function the piston is activated
if(Controller.get_digital_new_press(pros::E_CONTROLLER_DIGITAL_R2)) PneumaticLoader();
```