#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1 - Troubleshooting",
  type: "build",
  date: datetime(year: 2025, month: 1, day: 31),
  attendance: ("Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Rory",
  witnessed: "Eric",
)

#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

#to-do(
  date: datetime(year: 2025, month: 1, day: 31),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Troubleshoot the drivetrain according to today's delegation.", "Everyone"),
  )
)

We found a motor issue in the drivetrain, which we repaired by using a new gearbox and remounting the motor.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials): Eric, Makhi
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Anders, Rory, Eric
    - *Oversight & Quality Control*: Makhi
    - *Initial Testing*: Makhi
  ],
  today: [
    - Troubleshoot the drivetrain: Eric
    - Clean and lubricate the drivetrain's wheels: Eric
  ]
)

== Build Process
#grid(
  stack(
    spacing: 10pt,
    [
      === Materials
      - Motor
      - Blue Gearbox
      - Zipties
      - Rubber Band
      - The rest of the materials can be found in the toolbox.
    ],
    [
      === Assembly
      - Replaced the gearbox of the loose motor.
        - One of the inserts had a broken thread. This caused the motor to loosen over time.
      - Tightened the motor mounting piece.
      - Quick-swapped the motor using zipties and a rubber band.
      - #text(red)[Problem:] There was a crack in the ladybrown C-channel.
      - #text(green)[Solution:] We added a ziptie that was perpendicular to the axis of bending. This reduces the amount of stress on the ladybrown.
    ],
    [
      === Troubleshooting
      - Tested the drivetrain for friction to see if it was working after repairs.
    ],
  ),
  figure(
    image("build-troubleshoot-2/2025.1.31.png", width: 200pt),
    caption: "The wheel system of a drive half supported by a C-channel."
  )
)