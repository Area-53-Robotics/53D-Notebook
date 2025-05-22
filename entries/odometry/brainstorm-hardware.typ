#import "/template/template.typ": *

#show: create-entry.with(
  title: "Odometry v1 - Hardware",
  type: "brainstorm",
  date: datetime(year: 2024, month: 11, day: 29),
  attendance: ("Ishika"),
  designed: "Ishika",
  witnessed: "Ishika",
)

After deciding to use LemLib to implement odometry, we needed to choose an odometry hardware configuration that could obtain the data needed for the position tracking algorithm.

Each odometry setup has a combination of some of the following components:
- Tracking Wheels - Unpowered wheels with an optical shaft sensor or rotation sensor attached to them that can accurately track displacement on one axis.
  - Vertical Tracking Wheels - One vertical tracking wheel can track vertical displacement. Two vertical tracking wheels together can track robot orientation.
  - Horizontal Tracking Wheels - One horizontal tracking wheel can track horizontal displacement.
- Inertial Measurement Unit (IMU) - Sensor that tracks changes in robot orientation.
- Motor Encoders - Encoders that are internal to the VEX motors that track the rotation of the motor.

#pro-con(
  name: "3 Tracking Wheels",
  image: image("brainstorm-hardware/3-tracking-wheels.excalidraw.svg"),
  description: [
    This setup uses 2 parallel vertical tracking wheels and 1 horizontal tracking wheel.
  ],
  pros: [
    - *Versatility* - This odometry configuration is compatible with all drivetrain configurations, including an all omni-wheel setup.
    - *Horizontal Displacement Tracking* - With the horizontal tracking wheel, this configuration can track horizontal robot movements such as those due to opposing alliance interference or interactions with game elements.
  ],
  cons: [
    - *Space* - 3 tracking wheels take up a significant amount of space on the drivetrain, taking space from other subsystems and their mounting points.
  ],
)

#colbreak()

#pro-con(
  name: "2 Tracking Wheels & 1 IMU",
  image: image("brainstorm-hardware/2-tracking-wheels-1-imu.excalidraw.svg"),
  description: [
    This setup uses 1 vertical tracking wheel, 1 horizontal tracking wheel, and an IMU.
  ],
  pros: [
    - *Versatility* - This odometry configuration is compatible with all drivetrain configurations, including an all omni-wheel setup.
    - *Horizontal Displacement Tracking* - With the horizontal tracking wheel, this configuration can track horizontal robot movements such as those due to opposing alliance interference or interactions with game elements.
  ],
  cons: [
    - *IMU Drift* - IMUs are susceptible to drift, which can make them inaccurate over the time of a VEX season. We would need to check our IMU every few weeks to ensure accuracy.
  ],
)

#pro-con(
  name: "1 Tracking Wheel & 1 IMU",
  image: image("brainstorm-hardware/1-tracking-wheel-1-imu.excalidraw.svg"),
  description: [
    This setup uses 1 vertical tracking wheel and an IMU.
  ],
  pros: [
    - *Space Efficiency* - An IMU can be placed anywhere near the center of the drivetrain, and a single tracking wheel does not take up much space.
  ],
  cons: [
    - *No Horizontal Displacement Tracking* - Without a horizontal tracking wheel, the odometry system cannot account for horizontal movements. Therefore, this setup is only compatible with drivetrains that have traction wheels to prevent horizontal movement.
    - *IMU Drift* - IMUs are susceptible to drift, which can make them inaccurate over the time of a VEX season. We would need to check our IMU every few weeks to ensure accuracy.
  ],
)

#pro-con(
  name: "Motor Encoders",
  image: image("brainstorm-hardware/motor-encoders.excalidraw.svg"),
  description: [
    This setup uses the motor encoders inside the motors on our drivetrain.
  ],
  pros: [
    - *Space Efficiency* - We would be able to use the motors that are already on the drivetrain, saving space for other mechanisms.
    - *Time Saving* - This setup requires no new tracking wheels or sensors, saving us build time.
  ],
  cons: [
    - *No Horizontal Displacement Tracking* - Without a horizontal tracking wheel, the odometry system cannot account for horizontal movements. Therefore, this setup is only compatible with drivetrains that have traction wheels to prevent horizontal movement.
    - *Inaccuracy* - Due to wheel slippage, the data obtained from this odometry setup becomes inaccurate the quickest out of all the odometry setups.
  ],
)