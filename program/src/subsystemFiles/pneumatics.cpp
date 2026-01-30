#include "main.h"


bool intakePistonsActivated = false;
bool loaderPistonActivated = false;
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

void PneumaticLoader() {
    if (!loaderPistonActivated) {
        LoaderPistons.set_value(1);
        loaderPistonActivated = true;
    } else {
        LoaderPistons.set_value(0);
        loaderPistonActivated = false;
    }
}