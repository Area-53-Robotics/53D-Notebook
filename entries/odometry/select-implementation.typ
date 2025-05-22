#import "/template/template.typ": *

#show: create-entry.with(
  title: "Odometry v1 - Implementation",
  type: "select",
  date: datetime(year: 2024, month: 11, day: 29),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Ishika",
  witnessed: "Ishika",
)

After brainstorming the autonomous implementation options, we needed to select one to use.

#decision-matrix-criteria[
  - Setup Intuitiveness - How easy the implementation method is to set up. A higher score means it is easier.
  - PID Robustness - How flexible the implementation method's PID movement is. A higher score means it is more flexible.
  - PID Implementation Time - The amount of time it takes to get the implementation method's PID working. A higher score means it takes less time.
  - Pure Pursuit Robustness - How flexible the implementation method's Pure Pursuit is. A higher score means it is more flexible.
  - Pure Pursuit Implementation Time - The amount of time it takes to get the implementation method's Pure Pursuit working. A higher score means it takes less time.
]

#double-decision-matrix(
  criteria: (
    ("Setup Intuitiveness", 2),
    ("PID Robustness", 5),
    ("PID Implementation Time", 4),
    ("Pure Pursuit Robustness", 3),
    ("Pure Pursuit Implementation Time", 3),
  ),
  choices: (
    ("DIY Implementation", 2, 4, 3, 2, 1),
    ("LemLib", 3, 4, 4, 3, 3),
    ("ARMS", 4, 4, 4, 1, 1),
  ),
  body: colbreak()
)

#admonition(type: "select", title: "Final Selection")[
  LemLib offers the greatest flexibility with autonomous movement using both PID and Pure Pursuit.
]