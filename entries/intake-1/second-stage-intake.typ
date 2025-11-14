#import "/template/template.typ": *

#show: create-entry.with(
  title: "Build Second Stage Intake",
  type: "identify",
  date: datetime(year: 2025, month:9, day: 13),
  attendance: ("Ishika", "Makhi", "Eric", "Samia", "Anders"),
  designed: "Samia",
  witnessed: "Ishika",
)

Today we continued working on the intake. Our intake utilizes many different stages, so today we focused on the second level of the intake (for scoring on goals in the middle).

#table(
  columns: (2fr),
  rows: 2,
  align: left + top,

  table.header(table.cell(fill: gray, align: center)[*Delgation:*]),
  [*Reccuring Tasks* - 
    -Inventory (collecting materials): Eric
    -Manufacturing (cutting pieces to size, cleaning sharp edges): Anders
    -Oversight & Quality Control: Makhi
    -Initial Testing: N/A


  ],
  [*Today's Tasks* -
  -CADing: Rory 
  -Teaching/learning programming: Ishika and Samia
  ]

)
#table(
  columns: (2fr),
  rows: 2,
  align: left + top,

  table.header(table.cell(fill: gray, align: center)[*Build Process*]),
  [*Images:* - [#image("second-stage-intake-one.png", height: 290pt)] ],
  [*Materials*
    -24 tooth gears
    -Rubber band
    -Spacers
    -Axles
    -Hex nuts
    -Screws
    -Motors
    -Collars


  ],
  [*Assembly* - 
    4.Place the axle into the correct height to align with the goals.
    5.Add two collars in the middle, followed by two gears and then spacers (equal on each side). Ensure about 5 inches of gap in the middle.
    6.Attach a motor on the right side when looking forward.
    7.Place rubber bands across the gears.



 ],
  [*Troubleshooting* - 
    -Problem: The rubber bands would keep breaking/snapping
    -Solution: We increased the spacing so that they would not get caught.

  ]
)



