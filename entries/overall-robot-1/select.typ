#import "/template/template.typ": *

#show: create-entry.with(
  title: "Overall Robot Plan v1",
  type: "select",
  date: datetime(year: 2025, month: 6, day: 20),
  attendance: ("Ishika", "Eric", "Rory", "Makhi", "Anders", "Samia"),
  designed: "Ishika",
  witnessed: "Eric",
)

#to-do(
  date: datetime(year: 2025, month: 6, day: 20),
  monthly-schedule: "Ahead",
  yearly-schedule: "On",
  (
    (true, "Select an overall robot idea to build for the first robot iteration.", "Everyone"),
  )
)

After brainstorming different robot ideas, we had to pick one to begin building. This will be a very important decision as it will influence the functionality of our robot and subsystems in the future. As such, we identified as much criteria as possible to make an accurate judgement of each idea.

#decision-matrix-criteria[
  - Intake - The consideration and quality of the intake.
  - Mobility - To be able to move freely and efficiently.
  - Storage - The space to store a multitude of blocks for the match.
  - Durability - The ability to remain functional despite being faced with challenges and obstacles.
  - Accuracy - How close the number of blocks scored is gets to being equal to the number of blocks intaked. 
  - Parking Ability -  The ability to park on the parking zone.
  - Weight - The overall space usage of the bot and the total central weight. 
]

#double-decision-matrix(
  criteria: (
    ("Intake", 5),
    ("Mobility", 4),
    ("Storage", 3),
    ("Accuracy", 3),
    ("Parking Ability", 2),
    ("Durability", 4),
    ("Weight", 4),
  ),
  choices: (
    ("Makhi", 3, 3, 2, 4, 4, 3, 4),
    ("Ishika", 4, 3, 4, 3, 4, 3, 3),
    ("Eric", 3, 3, 2, 3, 4, 3, 3),
    ("Rory", 3, 3, 2, 4, 4, 3, 3),
    ("Anders", 3, 2, 2, 3, 4, 2, 2),
    ("Samia", 2, 3, 2, 3, 4, 3, 3),
  ),
  body: colbreak()
)

#admonition(type: "select", title: "Final Selection")[
  Our ultimate decision was to go with Idea 4 as it scored the highest in the decision matrix. We believed that the design had a lot of strengths that would be important for the early season competition. The goal was to have a good scoring robot that could maneuver throughout the field and score many blocks at once with accuracy. We also decided to incorporate some small elements of the other designs to idea number 4 to make it an even better idea as our early season robot. 

]