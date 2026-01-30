#import "/template/template.typ": *

#show: create-entry.with(
  title: "Hopper Intake v1",
  type: "build",
  date: datetime(year: 2025, month:9, day: 20),
  attendance: ("Ishika", "Makhi", "Eric", "Samia", "Anders","Rory"),
  designed: "Eric",
  witnessed: "Rory",
)

#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2025/09/20
#to-do(
  date: datetime(year: 2025, month: 9, day: 20),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Build the intake according to today's delegation.", "Everyone"),
  )
)

We worked on the preliminary design of our hopper today. We used zip ties and rubber bands to make it easy to prototype.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the intake): Eric 
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Anders
    - *Oversight & Quality Control*: Makhi
  ],
  today: [
    - CAD: Rory
    - Build the structure of the basket: Eric, Anders, Makhi

  ]
)
#grid(
  stack(
    spacing: 40pt, 
  [
  === Materials
    - Zip ties
    - Rubber bands
    - Plastic flaps
    - Chain
    - Spacers
    - Axle
    - Motor
    - Screw



  ],
  figure(
    image("build-hopper-one.png", height: 100pt,),
    caption: "Initial idea for basket"
  ),
  ),
  stack(
    spacing: 20pt,
  [
    === Assembly
    - We used zip ties and rubber bands to create a rough box around where our blocks would be stored.
      - Since the blocks are quite big it is okay for there to be gaps, as long as they can’t fit through them.
    - To fix the problem of blocks getting stuck, we added an agitator by:
      - Placing an axle at the bottom of the hopper.
      - Putting spacers and chains on the axle.
      - Sliding plastic flaps into the chain.
      - Attaching the axle to a motor.

  ],
  [
    === Troubleshooting
    #text(red)[Problem:] The blocks would all get stuck in one spot.
    - #text(green)[Solution:] We added a motor with flaps on the bottom to jostle them and to outtake blocks.
  ],
  ),
)

#colbreak()
= 2025/09/26
#to-do(
  date: datetime(year: 2025, month: 9, day: 26),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Build the intake according to today's delegation.", "Everyone"),
    (true, "Program the intake according to today's delegation.", "Everyone"),
  )
)
We finished up our hopper design by adding mesh and also did more work to prevent stuck blocks.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the intake): Eric 
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Anders
    - *Oversight & Quality Control*:Makhi
      ],
  today: [
    - CAD: Rory
    - Add the mesh needed on the hopper: Anders
    - Finish tuning the flex wheels that lead into the hopper: Eric, Rory
    - Programming: Ishika, Samia

  ]
)

== Build Process
#grid(
  figure(
    image("hopperintake1.jpg", width: 190pt),
    caption: "Final design: Latex tubing + mesh"
  ),
  [
    === Materials
    - C-channel
    - Screws
    - Nuts
    - Plastic (ABS)



  ],
  stack(
    spacing: 20pt,
  [
    === Assembly
    - We replaced the zip ties and rubber bands with mesh.
      - This not only made our design look more professional but also prevented blocks from potentially escaping.
    - We cut c-channel to size and attached it to guide the blocks towards the agitator.
    - Plastic pieces were also used in some locations.

  ],
  [
    === Troubleshooting
    - #text(red)[Problem:] Even with the agitator, there were still some spots where blocks could get stuck.
    - #text(green)[Solution:]  We used c-channel and plastic to create guides for the blocks, stopping them from getting stuck.
    - We tuned the hopper so that the most amount of blocks possible could enter the intake and be stored. 
  ]
  ),
  figure(
    image("hopperintake2.jpg", width: 190pt),
    caption: "Close view of sprocket stage, into hopper"
  ),
  
)