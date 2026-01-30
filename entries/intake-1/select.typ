#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v1",
  type: "select",
  date: datetime(year: 2025, month: 9, day: 05),
  attendance: ("Ishika", "Eric", "Rory", "Makhi", "Anders", "Samia"),
  designed: "Rory",
  witnessed: "Anders",
)

Continuing with the design process for the intake, we identified criteria that we could use to evaluate the intake ideas. Since the intake will be the most critical subsystem this seasons so, careful consideration was required.

#decision-matrix-criteria[
  - Efficiency - How quickly the intake can gather blocks.
  - Simplicity - How straightforward the design is to build and assemble.
  - Accuracy - How reliably the intake can take blocks and score them.
  - Speed - How fast the intake can take and score blocks.
  - Durability - How well the intake can withstand collisions. 
  - Storage Space -  How much space can be used as storage for the blocks.
]

#double-decision-matrix(
  criteria: (
    ("Efficiency", 5),
    ("Simplicity", 3),
    ("Accuracy", 5),
    ("Speed", 4),
    ("Durability", 3),
    ("Storage Space", 4),
  ),
  choices: (
    ("Basket Intake", 4, 4, 4, 4, 3, 4),
    ("Escalator Intake", 4, 3, 4, 4, 4, 3),
    ("Hybrid Intake", 3, 2, 3, 2, 3, 2),
  ),
  body: colbreak()
)

#admonition(type: "select", title: "Final Selection")[
We chose idea 1 because it fit all the criteria we wanted to the best of its ability. Although the second idea was also good, we wanted to prioritize storage because our strategy during matchplay is to collect as many blocks as possible so that we can store them for use. This design is the optimal design for the current strategy the team has implemented. 
]