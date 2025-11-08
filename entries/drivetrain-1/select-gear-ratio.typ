#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1 - Gear Ratio",
  type: "select",
  date: datetime(year: 2025, month: 8, day: 15),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Rory",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2025, month: 8, day: 15),
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
    ("Torque", 3),
    ("Maneuverability", 5),
    ("Traction", 3),
    ("Control", 5),
    ("Stability", 4),
    ("Weight Capacity", 4),
  ),
  choices: (
    ("450 RPM,\n2.75\" Wheels", 3, 3, 4, 3, 4, 3, 3),
    ("600 RPM,\n2.75\" Wheels", 4, 2, 3, 3, 2, 3, 2),
    ("450 RPM,\n3.25\" Wheels", 3, 4, 3, 3, 3, 3, 4),
  ),
  body: colbreak()
)

#admonition(type: "select", title: "Final Selection")[
  We are looking for a drivetrain that has a good balance of speed and torque. We need the speed to get around the field and score as many blocks as possible. We need the torque to push back enemy bots trying to score and also to get into the parking area to park. Additionally, since our drivetrain is going to be lighter than last year’s drivetrain, we also want a drivetrain that works well at high speeds. None of the gear ratio above perfectly fit what we needed so we decided to do a combination of a 600 RPM drivetrain on 3.25” wheels. This works best with all criteria and they compliment each other as we have seen from the selected values on the table. 
]