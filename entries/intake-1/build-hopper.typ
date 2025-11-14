#import "/template/template.typ": *

#show: create-entry.with(
  title: "Build Hopper",
  type: "identify",
  date: datetime(year: 2025, month:9, day: 20),
  attendance: ("Ishika", "Makhi", "Eric", "Samia", "Anders", "Rory"),
  designed: "Anders",
  witnessed: "Ishika",
)

We worked on the preliminary design of our hopper today. We used zip ties and rubber bands to make it easy to prototype.

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
  [*Images:* - [#image("build-hopper-one.png", height: 290pt)] ],
  [*Materials* - 
    -Zip ties
    -Rubber bands
    -Plastic flaps
    -Chain
    -Spacers
    -Axle
    -Motor
    -Screw



  ],
  [*Assembly* - 
    1. We used zip ties and rubber bands to create a rough box around where our blocks would be stored.
      a. Since the blocks are quite big it is okay for there to be gaps, as long as they can’t fit through them.
    2. To fix the problem of blocks getting stuck, we added an agitator by:
      a. Placing an axle at the bottom of the hopper.
      b. Putting spacers and chains on the axle.
      c. Sliding plastic flaps into the chain.
      d. Attaching the axle to a motor.



 ],
  [*Troubleshooting* - 
    -Problem: The blocks would all get stuck in one spot.
    -Solution: We added a motor with flaps on the bottom to jostle them and to outtake blocks.



  ]
)



