#import "/template/template.typ": *

#show: create-entry.with(
  title: "Build First Stage Intake",
  type: "identify",
  date: datetime(year: 2025, month:9, day: 6),
  attendance: ("Ishika", "Makhi", "Eric", "Samia", "Anders","Rory"),
  designed: "Anders",
  witnessed: "Ishika",
)

We got started with the first stage of the intake, which contains flex wheels. It will be how we first get the blocks into our bot, so it is crucial for our whole design.

#table(
  columns: (2fr),
  rows: 2,
  align: left + top,

  table.header(table.cell(fill: gray, align: center)[*Delgation:*]),
  [*Reccuring Tasks* 
  - Inventory (collecting materials): Eric, Anders 
  -Manufacturing (cutting pieces to size, cleaning sharp edges): Rory 
  - Oversight & Quality Control: Ishika 
  -Initial Testing: Anders, Eric, Makhi
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
  [*Images:* - [#image("first-stage-intake-one.png", height: 290pt)] ],
  [*Materials* - 
    -Flex Wheels
    -Axle
    -Spacers
    -Collars
    -Screws
    -Bearings
    -Nuts
  ],
  [*Assembly* - 
    1.Place the axle at the bottom of the robot, and then place these parts on in the following order.
      a.Spacers
      b.One flex wheel
      c.One collar
    2.Repeat step one for the other side.
    3.Secure the axle in place with a bearing, which can be attached with nuts and screws.
 ],
  [*Troubleshooting* - 
    -Problem: The flex wheels were not centered so they couldn’t intake blocks effectively.
    -Solution: Recalculate the spacing using online CAD software and then use that spacing on the axle.
  ]
)



