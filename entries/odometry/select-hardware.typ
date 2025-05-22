#import "/template/template.typ": *

#show: create-entry.with(
  title: "Odometry v1 - Hardware",
  type: "select",
  date: datetime(year: 2024, month: 11, day: 29),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Ishika",
  witnessed: "Ishika",
)

After brainstorming odometry hardware setups, we needed to select one to use.

#decision-matrix-criteria[
  - Space Efficiency - How little space the hardware setup requires. A higher score means that it takes up less space.
  - Implementation Time - How little time it takes to create and wire the components needed for the hardware setup. A higher score means that it takes less time.
  - Orientation Tracking - How reliable the hardware setup's orientation tracking is. A higher score means it is more reliable.
  - Vertical Tracking - How reliable the hardware setup's vertical displacement tracking is. A higher score means it is more reliable.
  - Horizontal Tracking - How reliable the hardware setup's horizontal displacement tracking is. A higher score means it is more reliable.
]

#double-decision-matrix(
  criteria: (
    ("Space Efficiency", 5),
    ("Implementation Time", 3),
    ("Orientation Tracking", 5),
    ("Vertical Tracking", 5),
    ("Horizontal Tracking", 2),
  ),
  choices: (
    ("3 Tracking Wheels", 1, 2, 4, 4, 4),
    ("2 Tracking Wheels & 1 IMU", 1, 3, 4, 4, 4),
    ("1 Tracking Wheel & 1 IMU", 3, 3, 4, 4, 0),
    ("Motor Encoders", 4, 4, 2, 2, 0),
  ),
  body: colbreak()
)

#admonition(type: "select", title: "Final Selection")[
  A 1 tracking wheel and IMU odometry setup provides accurate vertical and orientation tracking, while also being space efficient. Because our drivetrain has traction wheels, we do not need the horizontal tracking provided by the other setups.
]