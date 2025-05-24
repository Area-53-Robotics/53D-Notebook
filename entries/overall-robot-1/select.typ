#import "/template/template.typ": *

#show: create-entry.with(
  title: "Overall Robot Plan v1",
  type: "select",
  date: datetime(year: 2024, month: 6, day: 15),
  attendance: ("Ishika", "Eric", "Rory", "Makhi"),
  designed: "Rory",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2024, month: 6, day: 15),
  monthly-schedule: "Ahead",
  yearly-schedule: "On",
  (
    (true, "Select an overall robot idea to build for the first robot iteration.", "Everyone"),
    (true, "Plan the implementation of the overall robot idea.", "Everyone"),
  )
)

After brainstorming different robot ideas, we had to pick one to begin building. This will be a very important decision as it will influence the functionality of our robot and subsystems in the future. As such, we identified as much criteria as possible to make an accurate judgement of each idea.

#decision-matrix-criteria[
  - Durability - The ability to remain functional despite being faced with challenges and obstacles.
  - Mobility - To be able to move freely and efficiently.
  - Space Use - To utilize the space to the maximum ability.
  - Intake - The consideration and quality of the intake.
  - Clamp Ability - How well the clamp functions in consideration to the rest of the robot.
  - Wall Stake Consistency - How consistently the robot can score rings on the wall stakes.
  - Climb Ability - How efficient the climb is.
]

#double-decision-matrix(
  criteria: (
    ("Durability", 4),
    ("Mobility", 5),
    ("Space Use", 4),
    ("Intake", 5),
    ("Clamp Ability", 4),
    ("Wall Stake Consistency", 3),
    ("Climb Ability", 3),
  ),
  choices: (
    ("Makhi", 2, 2, 2, 1, 3, 4, 2),
    ("Ishika", 2, 3, 3, 4, 4, 3, 3),
    ("Eric", 3, 4, 4, 4, 3, 2, 2),
    ("Rory", 3, 4, 4, 4, 3, 2, 2),
  ),
  body: colbreak()
)

#admonition(type: "select", title: "Final Selection")[
  After careful consideration 's design was selected, as the subsystems are supported well and the whole design is sturdy and space efficient. However, the intake area is a little crowded, which could block rings from being scored. The clamp is quite well supported but it might slip off during a match. The movable intake should allow for wall stake scoring if it can move high up enough.
]