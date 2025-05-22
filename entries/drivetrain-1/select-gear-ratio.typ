#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1 - Gear Ratio",
  type: "select",
  date: datetime(year: 2024, month: 6, day: 29),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Rory",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2024, month: 6, day: 29),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Select the best gear ratio for the tank drive using a decision matrix.", "Everyone"),
  )
)

#decision-matrix-criteria[
  - Speed - The maximum speed of the gear ratio.
  - Torque - How much rotational force the gear ratio can generate.
  - Maneuverability - The smoothness of the turns made with the drivetrain configuration.
  - Traction - How well the gear ratio enhances the force of the wheels onto the surface below them.
  - Control - The responsiveness of the drivetrain using the gear ratio.
  - Stability - How well the gear ratio holds together under extended usage.
  - Weight Capacity - How well the gear ratio allows the drivetrain to support the robot's weight.
]

#double-decision-matrix(
  criteria: (
    ("Speed", 5),
    ("Torque", 5),
    ("Maneuverability", 5),
    ("Traction", 3),
    ("Control", 5),
    ("Stability", 4),
    ("Weight Capacity", 4),
  ),
  choices: (
    ("450 RPM,\n2.75\" Wheels", 3, 3, 4, 3, 4, 3, 3),
    ("600 RPM,\n2.75\" Wheels", 4, 2, 2, 3, 2, 3, 2),
    ("450 RPM,\n3.25\" Wheels", 3, 4, 4, 4, 4, 3, 4),
  ),
  body: colbreak()
)

#admonition(type: "select", title: "Final Selection")[
  We decided to use 3.25 inch wheels powered by 600 RPM motors geared with a 3:4 gear ratio.

  + *Speed-Torque Balance* - This gear ratio provides the best balance of speed and torque. We need the speed to get around the field and secure as many mobile goals as possible. We need the torque to push back enemy bots trying to take away our mobile goals or upsetting them when they are trying to score on the wall stakes.
  + *Weight Capacity* - Because our drivetrain is likely going to be heavier than last year's drivetrain (to provide extra force), we also want a gear ratio that can support that weight.
]