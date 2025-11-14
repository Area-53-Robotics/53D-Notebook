#import "/template/template.typ": *

#show: create-entry.with(
  title: "Build Hopper Part 2",
  type: "identify",
  date: datetime(year: 2025, month:9, day: 26),
  attendance: ("Ishika", "Makhi", "Eric", "Samia", "Anders", "Rory"),
  designed: "Anders",
  witnessed: "Ishika",
)

We finished up our hopper design by adding mesh and also did more work to prevent stuck blocks.

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
  [*Images:* - [#image("build-hopper-2.png", height: 290pt)], [#image("build-hopper-two.png", height: 290pt)] ],
  [*Materials* - 
    -C-channel
    -Screws
    -Nuts
    -Plastic (ABS)



  ],
  [*Assembly* - 
    1.We replaced the zip ties and rubber bands with mesh.
      a.This not only made our design look more professional but also prevented blocks from potentially escaping.
    2.We cut c-channel to size and attached it to guide the blocks towards the agitator.
    3.Plastic pieces were also used in some locations.



 ],
  [*Troubleshooting* - 
    - Problem: Even with the agitator, there were still some spots where blocks could get stuck.
    - Solution: We used c-channel and plastic to create guides for the blocks, stopping them from getting stuck.



  ]
)



