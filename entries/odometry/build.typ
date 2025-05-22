#import "/template/template.typ": *

#show: create-entry.with(
  title: "Odometry v1 - Hardware",
  type: "build",
  date: datetime(year: 2024, month: 11, day: 29),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Ishika",
  witnessed: "Ishika",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 10pt,
)

= 2024/11/29
To aid in autonomous navigation, a tracking wheel was designed to monitor forward and backward movement, and an inertial measurement unit (IMU) was installed above it to monitor robot orientation. Both components were securely mounted on the central drivetrain bracing to ensure stability and accuracy during operation.

== Delegation
#delegation(
  recurring: [
    - *Inventory*: Eric, Anders
    - *Manufacturing*: Anders, Eric
    - *Oversight & Quality Control*: 
    - *Initial Testing*: Ishika
  ],
  today: [
    - Assemble the frame for the tracking wheel: Eric
    - Assemble the tracking wheel: Eric
    - Attach the tracking wheel to the drivetrain: Eric, Makhi
  ]
)

== Build Process
#grid(
  stack(
    spacing: 15pt,
    [
      === Materials
      - 2.5 inch Omni Wheel
      - x1 6x3x1 C-channel
      - Rotation Sensor
      - IMU
      - The rest of the materials can be found in the toolbox.
    ],
    [
      === Assembly
      - Cut the middle out of the 6x3x1 C-channel to create a wheel bed.
      - Attached the wheel between the sides of the C-channel with an axle.
      - Attached a rotation sensor to the C-channel and wired it to the brain.
      - Attached the IMU above the odometry wheel onto C-channel braces and wired it to the brain.
    ],
  ),
  stack(
    dir: ltr,
    spacing: 15pt,
    figure(
      image("build/11.29.24-1.png", width: 120pt),
      caption: "IMU and Odometry Wheel"
    ),
    figure(
      image("build/11.29.24-2.png", width: 120pt),
      caption: "Odometry Wheel"
    ),
  )
)