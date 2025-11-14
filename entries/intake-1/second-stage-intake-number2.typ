#import "/template/template.typ": *

#show: create-entry.with(
  title: "Build Second Stage Intake Part 2",
  type: "identify",
  date: datetime(year: 2025, month:11, day: 8),
  attendance: ("Ishika", "Makhi", "Eric", "Samia", "Anders"),
  designed: "Samia",
  witnessed: "Ishika",
)

Today we finalized testing and troubleshooting our intake. There were a couple issues we had to figure out, but we managed to get it working mostly reliably.

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
  [*Images:* - [#image("second-stage-intake-two.png", height: 290pt)] ],
  [*Materials* - 
    -Screws
    -Mesh
    -Standoffs
    -Zipties

  ],
  [*Assembly* - 
    1.Attach a motor at the correct height (7 with screws
    2.Insert an axle into the motor, with the following constituents:
      a.Spacers
      b.Three flex wheels, one of them cut at 60 degree increments
      c.Collars on the inside edge of each of the outer flex wheels.
      d.Note: the flex wheels should be evenly spaced on the axle, through the use of the spacers
    3.Repeat this process for the second to the top rotor.


 ],
  [*Troubleshooting* - 
    -Problem: The axles are spinning unevenly because they are bent
    -Solution: Replace the very bent axles

  ]
)



