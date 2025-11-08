#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1",
  type: "build",
  date: datetime(year: 2024, month: 7, day: 26),
  attendance: ("Anders", "Ishika", "Rory", "Eric", "Samia"),
  designed: "Anders",
  witnessed: "Rory",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2025/08/16
#to-do(
  date: datetime(year: 2025, month: 8, day: 16),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Build the drivetrain according to today's delegation.", "Everyone"),
  )
)

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
  figure(
    image("build/2024.07.26-1.jpg", width: 150pt),
    caption: "The materials for the drivetrain"
  ),
  [
    === Materials
    - C-Channel
    - U-Channel
    - Screws
    - Nylons
    - Bearings
    - Spacers

  ],
)


#grid(
  stack(
    spacing: 10pt,
    figure(
      image("build/2024.07.26-4.jpg", width: 175pt),
      caption: "The wheels and gears. The gears are directly screwed to the wheels."
    ),
    figure(
      image("build/2024.07.26-5.jpg", width: 150pt),
      caption: "The motors"
    )
  ),
  [
    === Assembly: Drivetrain
    - Screw all C-channel together based on the CAD model. 
    - Make sure the spacing is correct and the wheels fit.

  ],
  [
    === Troubleshooting
    - Vigorously tested the security of the bracing
  ]
)

#grid(
  figure(
    image("build/2024.07.26-6.jpg"),
    caption: "Unfinished drive half"
  ),
  figure(
    image("build/2024.07.26-7.jpg"),
    caption: "The rubber bands tensioning the drivetrain together"
  )
)

#colbreak()

= 2025/08/22
#to-do(
  date: datetime(year: 2025, month: 8, day: 22),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Build the drivetrain according to today's delegation.", "Everyone"),
  )
)

Today we continued the onerous process–like Odysseus fighting in a decades-long war–of constructing our drivetrain, the foundational backbone of our entire bot. This required the utmost concentration and focus, because any inadvertent mistake would have compounded effects on all the systems built upon it.

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
    image("build/2024.07.27-1.jpg", width: 150pt),
    caption: "The spacer that we sanded down to cut"
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
  figure(
    image("build/2024.07.27-2.jpg", width: 175pt),
    caption: "The ziptied bearing blocks"
  ),
  figure(
    image("build/2024.07.27-3.jpg", width: 200pt),
    caption: "A screwjoint"
  )
)
#grid(
  [
    === Assembly: Drivetrain
    - We continued following our CAD to produce additional aspects of our drivetrain.
    - We added c-channels with spacers and nuts.
    - We then braced these with spacers in between.

  ],
  figure(
    image("build/2024.07.27-4.jpg", width: 80pt),
    caption: "Completed right drive half"
  ),
)

#admonition(type: "note")[
  We could not add the wheels to the drivetrain due to lack of materials that we needed, so we need to wait until the next day for the completion of drivetrain. 
]


