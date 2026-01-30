#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1",
  type: "build",
  date: datetime(year: 2025, month: 8, day: 16),
  attendance: ("Anders", "Makhi", "Ishika", "Rory", "Eric", "Samia"),
  designed: "Anders",
  witnessed: "Makhi",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2025/08/16

Today we built both sides of the drivetrain chassis and tested the spacing. We then connected both sides with bracing and added the two towers in the front of the robot. We determined that the sides of the drivetrain are wider than they need to be, so they could be compressed from six to five holes wide.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the drivetrain): Anders, Rory 
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Eric
    - *Oversight & Quality Control*: 
    - *Initial Testing*: Everyone
    - *Programming*: 
  ],
  today: [
    - Build drivetrain chassis and test spacing: Anders, Rory
    - Build two identical towers: Eric

  ]
)

== Build Process
#grid(
  [
    === Materials
    - C-Channel
    - U-Channel
    - Screws
    - Nylons
    - Bearings
    - Spacers

  ],
  stack(
    spacing: 10pt, 
  figure(
    image("build/2025.8.16-1.png", width: 100pt),
    caption: "Drivetrain chassis"
  ),
  [
    === Assembly: Drivetrain
    - Screw all C-channel together based on the CAD model. 
    - Make sure the spacing is correct and the wheels fit.

  ],
  ),
),
  #grid(
  figure(
    image("build/2025.8.16-2.png", width: 100pt),
  ),
  [
    === Troubleshooting
    - Vigorously tested the security of the bracing
  ]
)

#colbreak()

= 2025/08/22

We continued to construct our drivetrain structure, which required the utmost concentration and focus, because any inadvertent mistake would have compounded effects on all the systems built upon it.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the drivetrain): Anders, Rory 
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Eric, Makhi
    - *Oversight & Quality Control*: Ishika
    - *Initial Testing*: Eric, Makhi
  ],
  today: [
    - Add structure and bracing to the drivetrain: Eric, Makhi, Anders, Rory
  ]
)

== Build Process
#grid(
  figure(
    image("build/2025.8.22-1.png", width: 100pt),
    caption: "The bracing on the structure of the drivetrain"
  ),
  [
    === Materials
    - C-channel
    - Screws
    - Nuts
    - Spacers

  ],
)
#grid(
  [
    === Assembly: Drivetrain
    - We continued following our CAD to produce additional aspects of our drivetrain.
    - We added c-channels with spacers and nuts.
    - We then braced these with spacers in between.

  ],
  figure(
    image("build/2025.8.22.png", width: 80pt),
    caption: "Completed drivetrain structure"
  ),
)

#admonition(type: "note")[
  We could not add the wheels to the drivetrain due to lack of materials that we needed, so we need to wait until the next day for the completion of drivetrain. 
]


