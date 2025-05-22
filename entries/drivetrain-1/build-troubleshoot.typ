#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1 - Troubleshooting",
  type: "build",
  date: datetime(year: 2024, month: 11, day: 01),
  attendance: ("Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Rory",
  witnessed: "Eric",
)

#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

Our drivetrain had significant friction on the right side, so we disassembled it to identify the cause. We discovered that there was loctite stuck on a screw. After replacing the screw, we reassembled the drivetrain.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials): Anders, Rory, Eric
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Anders, Rory, Eric
    - *Oversight & Quality Control*: 
    - *Initial Testing*: Makhi, Anders
    - *Programming*: Ishika
  ],
  today: [
    - Disassemble the drivetrain: Makhi
    - Reassemble the gear system: Makhi, Eric
  ]
)

== Build Process
#grid(
  stack(
    spacing: 10pt,
    [
      === Materials
      - x2 29x1x1 C-channel
      - 48-tooth gears
      - 3.25” Omni wheels
      - 3.25” Traction wheels
      - The rest of the materials can be found in the toolbox.
    ],
    [
      === Assembly
      - Took apart the drivetrain.
        - Previously, the robot had some friction issues. The right side of our drivetrain was experiencing a lot of stress.
        - We discovered that there was loctite in our wheels.
      - Added temporary bracing to prevent the robot from bending over time.
      - Re-added the motor cartridges.
      - Replaced the wheels and gear systems.
    ],
    [
      === Troubleshooting
      - Shook the drivetrain to test joint strength.
      - Tested the drivetrain for friction.
        - First, we tested the free spin of the wheels. If the drivetrain has a strong free spin, then there is not any friction in the motor.
          - We found that we have good free spin.
        - Then, we tested the friction with the motors.
          - There was minimal friction.
    ],
  ),
  stack(
    spacing: 10pt,
    figure(
      image("build-troubleshoot/drivetrain-troubleshooting-1.png", width: 200pt),
      caption: "The wheel system of a drive half supported by a C-channel."
    ),
    figure(
      image("build-troubleshoot/drivetrain-troubleshooting-2.png", width: 200pt),
      caption: "Drivetrain chassis without wheels and motors."
    )
  )
)