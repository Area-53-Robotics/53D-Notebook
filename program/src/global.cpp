#include "main.h"
#include "pros/adi.hpp"
#include <cstddef>

pros::Controller Controller(pros::E_CONTROLLER_MASTER);

pros::MotorGroup left_mg({-20, -14, -19}, pros::v5::MotorGears::blue);
pros::MotorGroup right_mg({12, 17, 15}, pros::v5::MotorGears::blue);

pros::Motor bottomMotor(7, pros::v5::MotorGears::blue);
pros::Motor topMotor(10, pros::v5::MotorGears::blue);

pros::Vision vision_sensor(13);

pros::adi::DigitalOut IntakePistons(1);
pros::adi::DigitalOut IntakePistons2(2);
pros::adi::DigitalOut LoaderPistons(3);
void scrim_auton();
void scrim2_auton();
void red_right();

// drivetrain settings
lemlib::Drivetrain drivetrain(&left_mg, // left motor group
                              &right_mg, // right motor group
                              10.5, // 10 inch track width
                              lemlib::Omniwheel::NEW_275, // using new 4" omnis
                              600, // drivetrain rpm is 360
                              2 // horizontal drift is 2 (for now)
);

// imu
pros::Imu imu(1);
// horizontal tracking wheel encoder
//pros::Rotation horizontal_encoder(20);
// vertical tracking wheel encoder
//pros::Rotation vertical_encoder(1);
// horizontal tracking wheel
//lemlib::TrackingWheel horizontal_tracking_wheel(&horizontal_encoder, lemlib::Omniwheel::NEW_275, -5.75);
// vertical tracking wheel
//lemlib::TrackingWheel vertical_tracking_wheel(&vertical_encoder, lemlib::Omniwheel::NEW_2, -2.5);

// odometry settings
lemlib::OdomSensors sensors(nullptr, // vertical tracking wheel 1, set to null
                            nullptr, // vertical tracking wheel 2, set to nullptr as we are using IMEs
                            nullptr, // horizontal tracking wheel 1
                            nullptr, // horizontal tracking wheel 2, set to nullptr as we don't have a second one
                            &imu // inertial sensor
);

// lateral PID controller
lemlib::ControllerSettings lateral_controller(2, // proportional gain (kP) 7
                                              0, // integral gain (kI)
                                              0, // derivative gain (kD)16
                                              3, // anti windup
                                              1, // small error range, in inches
                                              100, // small error range timeout, in milliseconds
                                              3, // large error range, in inches
                                              500, // large error range timeout, in milliseconds
                                              20 // maximum acceleration (slew)
);

// angular PID controller
lemlib::ControllerSettings angular_controller(6, // proportional gain (kP) 4, 6,6
                                              0, // integral gain (kI)
                                              6, // derivative gain (kD) 44, 56,66, 48
                                              3, // anti windup
                                              1, // small error range, in degrees
                                              100, // small error range timeout, in milliseconds
                                              3, // large error range, in degrees
                                              500, // large error range timeout, in milliseconds
                                              0 // maximum acceleration (slew)
);

// create the chassis
lemlib::Chassis chassis(drivetrain, // drivetrain settings
                        lateral_controller, // lateral PID settings
                        angular_controller, // angular PID settings
                        sensors, 
                        nullptr,
                        nullptr  // odometry sensors
);

