#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1 - Drive Configurations",
  type: "select",
  date: datetime(year: 2025, month: 8, day: 08),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Eric",
  witnessed: "Rory",
)

After brainstorming different drive configurations, we had to pick one to begin building. This will be a very important decision as it will determine what we can build in the future. As such, we identified as much criteria as possible to make an accurate judgement.

#decision-matrix-criteria[
  - Speed - The maximum speed of the drivetrain configuration.
  - Acceleration - How fast the drivetrain accelerates.
  - Turning - The smoothness of the turns made with the drivetrain configuration.
  - Force - How much force the drivetrain configuration can generate.
  - Compactness - How little space the drivetrain configuration takes up.
  - Omni-Directionality - The ability of the drivetrain configuration to move in multiple directions.
  - Ease of Programming - How easy the drivetrain configuration is to program.
  - Ease of Driving - How easy the drivetrain configuration is to drive.
]

#double-decision-matrix(
  criteria: (
    ("Speed", 5),
    ("Acceleration", 5),
    ("Turning", 5),
    ("Force", 4),
    ("Compactness", 5),
    ("Omni-Directionality", 3),
    ("Ease of Programming", 2),
    ("Ease of Driving", 3),
  ),
  choices: (
    ("Tank Drive", 3, 4, 3, 4, 4, 2, 4, 4),
    ("H-Drive", 3, 3, 3, 3, 2, 3, 3, 3),
    ("Holonomic", 4, 2, 4, 2, 2, 4, 2, 3),
  ),
  body: colbreak()
)

#admonition(type: "select", title: "Final Selection")[
  Since this game’s field will be more open, much like High Stakes, we predict that we would not need as much torque. Instead, we plan to use the open field to our advantage and are particularly looking for a drivetrain type that has a good balance of acceleration and speed. However, we still believe that having enough torque to push away opponent’s bots from scoring on the wall stakes and defending our own mobile goals. We picked tank drive as it is a drivetrain that we are the most familiar with, and allows us to get the most speed and acceleration without sacrificing torque. 

]