#include "main.h"
#include "lemlib/api.hpp"
#include <tuple>

//Fix Auton for New Bot 

void intakeMove(int power, int timeout){
    bottomMotor.move(power);
	topMotor.move(-power);
    pros::delay(timeout);
    bottomMotor.brake();
    topMotor.brake();
}
void moveDrivetrain(int power, int timeout){
    left_mg.move(power);
    right_mg.move(power);
    pros::delay(timeout);
    left_mg.brake();
    right_mg.brake();
}

void turnDrivetrain(int power, int timeout){
    left_mg.move(-power);
    right_mg.move(power);
    pros::delay(timeout);
    left_mg.brake();
    right_mg.brake();
}
 void scrim_auton(){
    moveDrivetrain(75,500);
    pros::delay(1000);
    turnDrivetrain(50,400);
    pros::delay(1000);
    moveDrivetrain(63,490);
    pros::delay(1000);
} 

void scrim2_auton(){
    moveDrivetrain(50,250);
    pros::delay(1000);
    turnDrivetrain(40,455);
    pros::delay(1000); 
    moveDrivetrain(55,500);
    pros::delay(100);
   // firstStage(2000);
    pros::delay(100);
    turnDrivetrain(25,457);
    pros::delay(100);
    moveDrivetrain(60,297);
    pros::delay(100);
   // firstStageOFF(3500);
  //  secondStage(3000);

} 
//error by 45 - theta
void red_right(){
     // set position to x:0, y:0, heading:0
    chassis.setPose(0, 0, 0);
    //chassis.turnToHeading(-180, 1000);
   /// chassis.moveToPoint(0, 48, 10000);
    // turn to face heading 90 with a very long timeout
    chassis.moveToPoint(8, 34, 1000);
    chassis.waitUntilDone();
    //chassis.moveToPoint(3,31, 1000);
   // chassis.waitUntilDone();
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
    chassis.waitUntilDone();
    chassis.setPose(0, 0, 0);
    //chassis.turnToHeading(270, 1000);
    chassis.waitUntilDone();
    chassis.setPose(0, 0, 0);
    chassis.moveToPoint(0, -40, 1000, {.forwards = false});
    chassis.turnToHeading(-180, 1000);
    chassis.waitUntilDone();
    IntakePistons.set_value(1);
    chassis.waitUntilDone();
    //chassis.moveToPoint(19, 39.1, 200); 
}
int auton = 1;

void autonomous() {

     pros::Task screen_task([&]() {
        while (true) {
            // print robot location to the brain screen
            pros::lcd::print(0, "X: %f", chassis.getPose().x); // x
            pros::lcd::print(1, "Y: %f", chassis.getPose().y); // y
            pros::lcd::print(2, "Theta: %f", chassis.getPose().theta); // heading

            printf("X: %f, Y: %f, Theta: %f\n", chassis.getPose().x, chassis.getPose().y, chassis.getPose().theta);
            // delay to save resources
            pros::delay(75);
        }
    });
    switch (auton) {
        case 0:
            scrim_auton();
            break;
        case 1:
            red_right();
            break;
    }
} 
