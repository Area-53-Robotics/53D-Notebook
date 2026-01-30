#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v2",
  type: "build",
  date: datetime(year: 2025, month: 10, day: 25),
  attendance: ("Anders", "Ishika", "Rory", "Eric", "Samia", "Makhi"),
  designed: "Makhi",
  witnessed: "Rory",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2025/10/25
#to-do(
  date: datetime(year: 2025, month: 10, day: 25),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Build the new intake design according to today's delegation.", "Everyone"),
  )
)
We started working on our new intake, which is arguably the most important part of our entire bot (aside from the drivetrain of course).

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
    - CAD: Rory
    - Add the flex wheels on the ramp of the intake: Eric, Anders
    - Add bracing and spacing to make it good: Makhi 

  ]
)

== Build Process
#grid(
  [
    === Materials
    - Screws
    - Nylocks
    - Bearing blocks
    - High strength axle
    - Flex wheels
    - Spacers
    - Chain
    - Gears


  ],
  figure(
    image("build/25.10.25.png", width: 85pt),
    caption: "Front of the ramp of the intake"
  ),
)
  #grid(
  [
    === Assembly: Drivetrain
    - Place flex wheels on a high strength axle, separated by spacers.
    - Use a bearing block to attach the axle to our main bracing.
    - Place gears on the end of the axle.
    - Attach a motor further up the intake, and use chain to connect it to the axle.


  ],
  [
    === Troubleshooting
    - #text(red)[Problem:] The blocks were not intaking reliably.
    - #text(green)[Solution:]  Lower the height of the intake so that it can grip onto blocks faster.
  ]
)
= 2025/10/31
#to-do(
  date: datetime(year: 2025, month: 10, day: 31),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Build the new intake design according to today's delegation.", "Everyone"),
  )
)

We finished the first stage of our intake today, using rubber band sprockets to move the blocks.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the drivetrain): Anders, Rory 
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Eric, Makhi
    - *Oversight & Quality Control*: Ishika
    - *Initial Testing*: Eric, Makhi
  ],
  today: [
    - CAD: Rory
    - Add the flex wheels on the top part of the intake: Eric, Anders
    - Space out the sprockets/flex wheels, and add chain: Makhi.
  ]
)

== Build Process
#grid(
  [
    === Materials
    - Spacers/Collars
    - Pillow bearings
    - Sprockets
    - Rubber bands
    - Screws
    - Standoffs

  ],
  figure(
    image("build/25.10.31.png", width: 85pt),
    caption: "Top view of the intake, second stage"
  ),
)
  #grid(
  [
    === Assembly: Drivetrain
    - Attach pillow bearings to the angle with screws and nylocks.
    - Place an axle in the bearing, with spacers, sprockets, and collars.
    - Put rubber bands on the sprocket
    - Create a “mesh” made out of rubber bands to hold the blocks.
    - Attach the flex wheels to axles, and repeat the process for the full top of the intake, adding chain.

  ],
   [
    === Troubleshooting
    - #text(red)[Problem:]  The blocks would always get stuck in “dead zones” where the rollers couldn’t reach.
    - #text(green)[Solution:] We lowered the sprockets own and increased the tension on the rubber bands (to raise the blocks higher).
  ]
)
