#import "/template/template.typ": *

#show: create-entry.with(
  title: "Second Stage Intake v1",
  type: "build",
  date: datetime(year: 2025, month:9, day: 13),
  attendance: ("Ishika", "Makhi", "Eric", "Samia", "Anders","Rory"),
  designed: "Anders",
  witnessed: "Eric",
)

#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2025/09/13
#to-do(
  date: datetime(year: 2025, month: 9, day: 13),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Build the intake according to today's delegation.", "Everyone"),
  )
)

Today we continued working on the intake. Our intake utilizes many different stages, so today we focused on the second level of the intake (for scoring on goals in the middle).

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the intake): Eric 
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Anders
    - *Oversight & Quality Control*: Makhi
  ],
  today: [
    - CAD: Rory
    - Build the first part of the second stage: Eric, Anders, Makhi

  ]
)
#grid(
  stack(
    spacing: 40pt, 
  [
  === Materials
    - 24 tooth gears
    - Rubber bands
    - Spacers
    - Axles
    - Hex nuts
    - Screws
    - Motors
    - Collars


  ],
  figure(
    image("second-stage-intake-one.png", height: 100pt,),
    caption: "Side view of Basket intake"
  ),
  ),
  stack(
    spacing: 20pt,
  [
    === Assembly
    - Place the axle into the correct height to align with the goals.
    - Add two collars in the middle, followed by two gears and then spacers (equal on each side). Ensure about 5 inches of gap in the middle.
    - Attach a motor on the right side when looking forward.
    - Place rubber bands across the gears.

  ],
  [
    === Troubleshooting
    #text(red)[Problem:] The rubber bands would keep breaking/snapping
    - #text(green)[Solution:] We increased the spacing so that they would not get caught.
  ],
  ),
)

#colbreak()
= 2025/09/19
#to-do(
  date: datetime(year: 2025, month: 9, day: 19),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Build the intake according to today's delegation.", "Everyone"),
  )
)
Today we finalized testing and troubleshooting our intake. There were a couple issues we had to figure out, but we managed to get it working mostly reliably.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the intake): Eric 
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Anders
    - *Oversight & Quality Control*:Makhi
      ],
  today: [
    - CAD: Rory
    - Finish the sprocket and flex wheel spacing for the second stage: Ander, Eric
    - Tune both parts of the second stage: Makhi

  ]
)

== Build Process
#grid(
  figure(
    image("secondstage2.jpeg", width: 200pt),
    caption: "Front view of bottom + top stage"
  ),
  [
    === Materials
    - Screws
    - Mesh
    - Standoffs
    - Zipties


  ],
),
#grid(
  [
    === Assembly
    - Attach a motor at the correct height (7 with screws
    - Insert an axle into the motor, with the following constituents:
      + Spacers
      + Three flex wheels, one of them cut at 60 degree increments
      + Collars on the inside edge of each of the outer flex wheels.
      + *Note: the flex wheels should be evenly spaced on the axle, through the use of the spacers*
    - Repeat this process for the second to the top rotor.


  ],
  [
    === Troubleshooting
    - #text(red)[Problem:] The axles are spinning unevenly because they are bent.
    - #text(green)[Solution:] Replace the very bent axles.
    - We tuned the second stage to be able to propel the ball up to the highest outtake level.
  ]
)