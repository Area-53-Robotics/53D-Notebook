#import "/template/template.typ": *

#show: create-entry.with(
  title: "Odometry v1 - Movement",
  type: "select",
  date: datetime(year: 2024, month: 11, day: 23),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Ishika",
  witnessed: "Ishika",
)

After brainstorming the autonomous movement methods, we needed to select one to use. We determined the criteria and their weights based on how important those criteria have been in previous seasons.

#decision-matrix-criteria[
  - Implementation Time - How little time it takes to create the algorithms and functions necessary for the movement method. A higher score means that it takes less implementation time.
  - Testing Time - How little time it takes to develop and test the autons made using the movement method. A higher score means that it takes less testing time.
  - Robustness - How many types of movements (straight, curved, etc) can be made using the movement method. A higher score means the movement method is more robust.
  - Consistency - How consistent the autons made using the movement method are. A higher score means the movement method is more consistent.
]

#double-decision-matrix(
  criteria: (
    ("Implementation Time", 5),
    ("Testing Time", 5),
    ("Robustness", 3),
    ("Consistency", 4),
  ),
  choices: (
    ("Relative Movements", 4, 1, 2, 2),
    ("PID", 3, 3, 3, 3),
    ("Pure Pursuit", 1, 3, 4, 4),
  )
)

#admonition(type: "select", title: "Final Selection")[
  PID strikes the best balance between implementation & testing time and its resulting performance.
]

#admonition(type: "note")[
  Although we will be using PID for the majority of our autonomous movements, it is not mutually exclusive with Pure Pursuit implementation. If possible, we would like to implement both movement options and use them as needed.
]