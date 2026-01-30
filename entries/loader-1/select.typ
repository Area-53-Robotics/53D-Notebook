#import "/template/template.typ": *

#show: create-entry.with(
  title: "Loader v1",
  type: "select",
  date: datetime(year: 2025, month: 11, day: 28),
  attendance: ("Ishika", "Eric", "Rory", "Makhi", "Anders", "Samia"),
  designed: "Rory",
  witnessed: "Anders",
)

Continuing with the design process for the loader mechanism, we identified criteria that we could use to evaluate the loader mechanism ideas. Since the loader mechanism will be the most critical subsystem this seasons so, careful consideration was required.

#decision-matrix-criteria[
  - Efficiency - How easily the loader mechanism can take out the blocks from the loader.
  - Grip - How reliable the grip on the blocks is. 
  - Size Usage - How much size does the mechanism take up. 
  - Speed - How fast the loader mechanism can take out the blocks and then score them.
  - Simplicity - How simple the design is to implement. 
  - Durability -  How many times the mechanism can be used without obvious, glaring problems. 
]

#double-decision-matrix(
  criteria: (
    ("Efficiency", 5),
    ("Grip", 3),
    ("Size Usage", 4),
    ("Speed", 5),
    ("Simplicity", 3),
    ("Durability", 4),
  ),
  choices: (
    ("Idea 1", 3, 4, 3, 2, 3, 3),
    ("Idea 2", 4, 3, 3, 4, 4, 3),
    ("Idea 3", 4, 2, 4, 3, 4, 3),
  ),
  body: colbreak()
)

#admonition(type: "select", title: "Final Selection")[
We chose idea 2 because it fit all the criteria we wanted to the best of its ability. Although the third idea was also good, we wanted to prioritize speed because during fast matchplay it is impossible to take your time with loader so it is important the robot stays on par with these standards. We also found that it can have a better grip/surface due to the plastic so that is an important factor to keep in mind throughout this season. 
]