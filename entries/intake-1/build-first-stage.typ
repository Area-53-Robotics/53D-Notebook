#import "/template/template.typ": *

#show: create-entry.with(
  title: "First Stage Intake v1",
  type: "build",
  date: datetime(year: 2025, month:9, day: 6),
  attendance: ("Ishika", "Makhi", "Eric", "Samia", "Anders","Rory"),
  designed: "Makhi",
  witnessed: "Anders",
)

#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2025/09/6

We got started with the first stage of the intake, which contains flex wheels. It will be how we first get the blocks into our bot, so it is crucial for our whole design.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the drivetrain): Eric, Anders 
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Rory
    - *Oversight & Quality Control*:Ishika
    - *Initial Testing*: Anders, Eric, Makhi
  ],
  today: [
    - CAD: Rory
    - Build the sprocket stage of the intake: Eric, Anders
    - Tune/Troubleshoot: Makhi

  ]
)
#grid(
  stack(
    spacing: 40pt, 
  [
  === Materials
    - Flex wheels
    - Axle
    - Spacers
    - Collars
    - Screws
    - Bearings
    - Nuts

  ],
  figure(
    image("first-stage-intake-one.png", width: 130pt),
    caption: "Front Stage Sprocket"
  ),
  ),
  stack(
    spacing: 20pt,
  [
    === Assembly
    - Place the axle at the bottom of the robot, and then place these parts on in the following order.
      + Spacers
      + One flex wheel
      + One collar
    - Repeat step one for the other side.
    - Secure the axle in place with a bearing, which can be attached with nuts and screws.

  ],
  [
    === Troubleshooting
    #text(red)[Problem:] The flex wheels were not centered so they couldn’t intake blocks effectively.
    - #text(green)[Solution:] Recalculate the spacing using online CAD software and then use that spacing on the axle.
  ],
  ),
)

#colbreak()
= 2025/09/12
#to-do(
  date: datetime(year: 2025, month: 9, day: 12),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Build the drivetrain according to today's delegation.", "Everyone"),
  )
)
Today we finished up the first stage of the intake, by adding motors and testing how well it works.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the drivetrain): Eric 
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Anders
    - *Oversight & Quality Control*:Makhi
    - *Initial Testing*: Anders, Eric
  ],
  today: [
    - CAD: Rory
    - Tune the sprocket stage of the intake: Eric, Anders
    - Add chain and a motor to the power the first stage: Makhi

  ]
)

== Build Process
#grid(
  figure(
    image("first-stage-intake-2.png", width: 200pt),
    caption: "Side view Intake"
  ),
  [ 
    === Materials
    - Rubber bands
    - Motor
    - Cables
    - Screws
    - Gear
    - Chain

  ],
),
#grid(
  stack(
    spacing: 10pt,
  [
    === Assembly: Drivetrain
    - Connect the motor to the axle with screws.
    - Add a gear on the side and place chain on it (to power the next stage).
    - Plug a cable into the motor and brain.
    - Program the motor to spin with a button press
    - Test how reliably the robot can intake blocks.

  ],
   [
    === Troubleshooting
    - #text(red)[Problem:] The rubber bands kept getting caught and snapping.
    - #text(green)[Solution:] We sanded down sharp edges and shifted the rubber bands so they couldn’t get snagged as easily.
    - We tuned the sprockets, figuring out the right amount of rubber bands that would take in the blocks at optimal speed. 
  ]
  ),
  figure(
    image("first-stage-intake-two.png", width: 200pt),
    caption: "First Stage of Intake"
  ),
)