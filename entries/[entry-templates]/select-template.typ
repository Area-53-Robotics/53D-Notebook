#import "/template/template.typ": *

#show: create-entry.with(
  title: "",
  type: "select",
  date: datetime(year: 2023, month: 9, day: 23),
  attendance: ("Ishika", "Makhi", "Rory", "Eric"),
  designed: "Ishika",
  witnessed: "Ishika",
)


#decision-matrix-criteria[
  - Crit - e
]

#double-decision-matrix(
  criteria: (
    ("-", 5),
    ("-", 5),
    ("-", 3),
    ("-", 4),
    ("-", 5),
    ("-", 4),
  ),
  choices: (
    ("-", 2, 4, 4, 4, 3, 0),
    ("-", 0, 0, 0, 0, 0, 0),
    ("-", 2, 3, 3, 2, 3, 4),
  ),
)

#admonition(type: "select", title: "Final Selection")[
  E
]