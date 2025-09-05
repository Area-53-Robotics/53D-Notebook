#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1 - Wheel Types",
  type: "brainstorm",
  date: datetime(year: 2025, month: 8, day: 23),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Ishika",
  witnessed: "Rory",
)

#to-do(
  date: datetime(year: 2025, month: 8, day: 23),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Brainstorm possible wheel configurations for the tank drive.", "Everyone"),
    (false, "Select the best wheel configurations for the tank drive using a decision matrix.", "Everyone"),
  )
)

Now that we have chosen to use a tank drive configuration, our next step is to brainstorm different wheel types to use with it. Due to the simplicity of a tank drive, there are multiple different combinations of wheel types that we can use, depending on what our goals are.

= Wheel Types

#pro-con(
  name: "Omni",
  image: image("brainstorm-wheel-types/OmniWheel.excalidraw.svg", height: 12em),
  description: [Omni wheels have the traditional forward-backward movement of wheels, while also creating the possibility for side-to-side movement due to their cylindrical rollers.],
  pros: [
    - * Partially Omnidirectional Movement* - Enables the robot to move forward, backward, and sideways with ease
    - *Strafing* - The ability to strafe easily allows the robot to navigate around obstacles, align with targets, or avoid opponents
    - *Versatility* - Omni wheels are versatile and can be incorporated into various drivetrain configuration
  ],
  cons: [
    - *Reduced Traction* - Omni wheels  have less traction compared to other wheel types, which would make us easy to push around by other teams
    - *Limited Load-Bearing Capacity* - Omni wheels have a lower load-bearing capacity compared to some other wheel types
    - *Less Stability at High Speed* - Omni wheels can lead to less stability at high speeds or during rapid acceleration and deceleration. This instability may affect the robot's ability to maintain control.
  ],
)

#colbreak()

#pro-con(
  name: "Traction",
  image: image("brainstorm-wheel-types/TractionWheel.excalidraw.svg", height: 12em),
  description: [TRaction wheels are the simplest wheel type in VEX, composed of a frame and rubber surrounding that frame.],
  pros: [
    - *High Traction* - Traction wheels are designed to maximize grip on the surface
    - *Stability* - Traction wheels contribute to the stability of the robot, especially at higher speeds or during rapid acceleration and deceleration. 
    - *Pushing Power* - well-suited for applications that require the robot to exert pushing or pulling forces
  ],
  cons: [
    - *Limited Maneuverability* - Traction wheels are designed for straightforward movement
    - *Wheel Scrubbing* - Traction wheels in a tank drive configuration may experience wheel scrubbing during turns, causing excessive wears
  ],
)

#pro-con(
  name: "Mecanum",
  image: image("brainstorm-wheel-types/MecanumWheel.excalidraw.svg", height: 12em),
  description: [Mecanum wheels have angled rollers that limit their movement onto one axis. However, when multiple of them roll in tandem, they create omni-directional movement.],
  pros: [
    - *Omnidirectional Movement* - Mecanum wheels enable omnidirectional movement
    - *Simple Control System* - The control system for mecanum wheels is relatively simple compared to some other omnidirectional drive systems.
  ],
  cons: [
    - *Complex Programming* - Programming a mecanum drive system can be more complex compared to traditional drive systems
    - *Reduced Traction* - Mecanum wheels may have reduced traction compared to other wheel types
  ],
)

#colbreak()

= Tank Drive Configurations

#pro-con(
  name: "Tank Drive with Omnis",
  image: image("brainstorm-wheel-types/TankDriveOmnis.excalidraw.svg", height: 14em),
  description: [This configuration has 2-4 omni wheels on each side of the drivetrain. The wheels can be either be powered directly, through gears, or through chains.],
  pros: [
    - *Basic Maneuverability* - Excels in basic maneuverability (forward, backward, and turns)
    - *Pivoting* - Wheels can pivot easily, putting less stress on the motors
    - *Availability* - Area 53 has multiple omnis of different sizes in storage
  ],
  cons: [
    - *Low Traction* - Makes it easier to be pushed around by other teams, which could inhibit our ability to score
    - *Strafing* - Omni wheels cannot strafe diagonally, and a tank drive with omnis cannot strafe side-to-side on command
  ],
)

#pro-con(
  name: "Tank Drive with Traction",
  image: image("brainstorm-wheel-types/TankDriveTraction.excalidraw.svg", height: 14em),
  description: [This configuration has 2-4 traction wheels on each side of the drivetrain. The wheels can be either be powered directly, through gears, or through chains.],
  pros: [
    - *Immovability* - Cannot be pushed from the side by other teams, making it easier to score without interference
    - *Force* - Generates a lot of traction, which makes it easier to push other teams
  ],
  cons: [
    - *Maneuverability* - Cannot strafe side-to-side or diagonally, severely limiting our movement
    - *Inefficient Turns* - Makes it harder for the driver to make quick responses on the field
    - *Slow* - Has the slowest speed out of all the wheel types
    - *Motor Strain* - The low maneuverability of traction wheels puts strain on motors
    // - *Availability* - Area 53 does not currently have many 3.25" traction wheels in storage, so if we want to use that size we will have to delay construction
    - *Wheel Durability* - A full traction drive displays wear and tear on the wheel quicker than any other drivetrain.
  ],
)

#colbreak()

#pro-con(
  name: "Tank Drive w/ Omnis & Traction",
  image: image("brainstorm-wheel-types/TankDriveOmnis+Traction.excalidraw.svg", height: 14em),
  description: [This configuration has a mix of 2-4 omni and traction wheels on each side of the drivetrain. The wheels can be either be powered directly, through gears, or through chains.],
  pros: [
    - *Motor Strain* - Has a decreased strain on motors compared to a full traction configuration
    - *Immovability* - More protected against pushing compared to a full omni configuration
    - *Versatility* - The combination allows for smooth transitions between omnidirectional movement and enhanced traction.
  ],
  cons: [
    - *Turning* - Less ability to turn in place compared to full omnis
  ],
)

#pro-con(
  name: "Tank Drive with Mecanums",
  image: image("brainstorm-wheel-types/TankDriveMecanums.excalidraw.svg", height: 14em),
  description: [This configuration has 2 mecanum wheels on each side of the drivetrain. The wheels must be powered directly via motors.],
  pros: [
    - *Build Difficulty* - Relatively simple to build
    - *Lateral Movement* - Difficult to move from the side
    - *Strafing* - Able to strafe
    - *Driving Precision* - Can get into more precise positions than a full omni drive
  ],
  cons: [
    - *Driving* - Driving can be clunky, especially because nobody on 53D has driven a mecanum configuration
    - *Building Precision* - Wheels require a certain orientation to allow strafing
    - *Less Traction* - Mecanum wheels have less surface area than omnis and traction wheels, causing them to have less traction.
    - *Weight* - Weigh more than omnis
    - *Programming* - Requires more complex programming
    - *Torque* - Requires more torque from the motors
  ],
)