#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1",
  type: "build",
  date: datetime(year: 2025, month: 8, day: 23),
  attendance: ("Ishika", "Makhi", "Rory", "Eric"),
  designed: "Ishika",
  witnessed: "Makhi",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2024/08/09
#to-do(
  date: datetime(year: 2025, month: 8, day: 23),
  monthly-schedule: "Ahead",
  yearly-schedule: "On",
  (
    (true, "Build the drivetrain according to today's delegation.", "Everyone"),
  )
)

Today we worked on finishing up the drivetrain. We added wheels and gears to both sides, so that it will be ready for the motors to be attached.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the drivetrain): Eric
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Anders
    - *Oversight & Quality Control*: Makhi
    - *Initial Testing*: N/A
  ],
  today: [
    - Adding the wheels to the drivetrain: Eric
    - Adding the gears to the drivetrain: Anders, Makhi
  ]
)

== Build Process
=== Materials
    - 4x omni wheels
    - 2x traction wheels
    - 6x 48 tooth gears
    - 6x 36 tooth gears
    - 6x collars
    - Screws
    - Spacers
    - Axles
    - Keps nuts
    - Plastic hex nuts
    - Wheel inserts

#colbreak()

#grid(
  [
    === Assembly
    - Screw the gears onto the wheels and place inserts into them
    - Place the screws onto the drivetrain
    - Add a keps nut, a spacer, the wheel, and then a hex nut.
    - Repeat that step for all the wheels.
    - Add the smaller gears onto axles and add spacers and collars.

  ],
  [
    === Troubleshooting
    #text(red)[Problem:] The screws would not fit into the c-channel
    - #text(green)[Solution:] Use pliers to hold them in place and provide pressure with a screwdriver
  ],
)

