#import "/template/template.typ": *

#show: create-appendix-entry.with(
  title: "Pre-Match Checklist",
  updated: datetime(year: 2024, month: 11, day: 1)
)

#set list(
  marker: image("/template/tabler-icons/square.svg", height: 1em),
  tight: false
)

#grid(
  columns: 2,
  inset: (right: 20pt),

  [
    = Motors
    - Left Motors
    - Right Motors
    - Intake Motor
    - Left Ladybrown Motor
    - Right Ladybrown Motor
  ],
  [
    = Electronics
    - Radio
    - Charged Battery
    - Backup Battery
    - Pressure Gun/Filled Air Tank
  ]
)

= Materials
- Auton Alignment Tool

= Drive Team
#v(5pt)
#grid(
  columns: 3,
  column-gutter: 7pt,
  [
    == Makhi
    - Controller
    - Goggles
  ],
  [
    == Anders
    - Goggles
  ],
  [
    == Eric
    - Goggles
  ],
)

= Autonomous
- Verify correct autonomous selection
- Position autonomous robot

= Drivetrain
- Clear wires from drivetrain vicinity
- Check for dead motors