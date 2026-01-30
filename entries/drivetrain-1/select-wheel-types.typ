#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1 - Wheel Types",
  type: "select",
  date: datetime(year: 2025, month: 8, day: 09),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Makhi",
  witnessed: "Samia",
)


Different wheel configurations can have very different purposes. To determine which wheel configuration would be best for us to use, we created an unweighted and a weighted decision matrix.

#decision-matrix-criteria[
  - Speed - The maximum speed of the wheel configuration.
  - Compactness - How little space the wheel configuration takes up.
  - Strafing - The ability of the wheel configuration to move from side-to-side.
  - Turning - The smoothness of the turns made with the drivetrain configuration.
  - Traction - The grip of the wheels of the wheel configuration onto the surface below it.
  - Ease of Programming - How easy the drivetrain configuration is to program.
  - Ease of Driving - How easy the drivetrain configuration is to drive.
]

#double-decision-matrix(
  criteria: (
    ("Speed", 5),
    ("Compactness", 2),
    ("Strafing", 3),
    ("Turning", 3),
    ("Traction", 4),
    ("Ease of Programming", 2),
    ("Ease of Driving", 2),
  ),
  choices: (
    ("Omnis", 4, 3, 3, 3, 2, 3, 4),
    ("Traction", 2, 4, 1, 2, 4, 3, 2),
    ("Hybrid (Omnis & Traction)", 4, 3, 2, 3, 3, 3, 4),
    ("Mecanums", 2, 2, 4, 3, 2, 3, 2),
  ),
  body: colbreak()
)

#admonition(type: "select", title: "Final Selection")[
  A hybrid wheel configuration meets the most of the criteria we identified for the wheel configurations. Many other teams use a similar wheel configuration, and we have used a similar configuration in previous years, so we will be able to do research on methods to build a drivetrain with it.
]