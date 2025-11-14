#import "/template/template.typ": *

#show: create-entry.with(
  title: "Build First Stage  Part 2Intake",
  type: "identify",
  date: datetime(year: 2025, month:9, day: 6),
  attendance: ("Ishika", "Makhi", "Eric", "Samia", "Anders","Rory"),
  designed: "Anders",
  witnessed: "Ishika",
)


Today we finished up the first stage of the intake, by adding motors and testing how well it works.

#table(
  columns: (2fr),
  rows: 2,
  align: left + top,

  table.header(table.cell(fill: gray, align: center)[*Delgation:*]),
  [*Reccuring Tasks* 
    -Inventory (collecting materials): Eric
    -Manufacturing (cutting pieces to size, cleaning sharp edges): Anders
    -Oversight & Quality Control: Makhi
    -Initial Testing: Anders, Eric

  ],
  [*Today's Tasks* 
    -CADing: Rory 
    -Teaching/learning programming: Ishika and Samia
  ]

)

#table(
  columns: (2fr),
  rows: 2,
  align: left + top,

  table.header(table.cell(fill: gray, align: center)[*Build Process*]),
  [*Images:* - [#image("first-stage-intake-2.png", height: 290pt)], [#image("first-stage-intake-two.png", height: 290pt)] ],
  [*Materials* - 
    -Rubber bands
    -Motor
    -Cables
    -Screws
    -Gear
    -Chain

  ],
  [*Assembly* - 
    1.Connect the motor to the axle with screws.
    2.Add a gear on the side and place chain on it (to power the next stage).
    3.Plug a cable into the motor and brain.
    4.Program the motor to spin with a button press.
    5.Test how reliably the robot can intake blocks.

 ],
  [*Troubleshooting* - 
    - Problem: The rubber bands kept getting caught and snapping.
    - Solution: We sanded down sharp edges and shifted the rubber bands so they couldn’t get snagged as easily.

  ]
)



