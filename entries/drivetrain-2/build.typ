#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v2",
  type: "build",
  date: datetime(year: 2025, month:10, day: 18),
  attendance: ("Ishika", "Makhi", "Eric", "Samia", "Anders","Rory"),
  designed: "Eric",
  witnessed: "Anders",
)

#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2025/10/18

Today we switched the middle traction wheels in our drivetrain to omni wheels. This was to improve drifting and handling, which is a crucial part of Push Back’s game strategy.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the intake): Eric 
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Anders
    - *Oversight & Quality Control*: Makhi
  ],
  today: [
    - CAD: Rory
    - Switching the traction wheels to omni wheels: Eric, Anders
    - Adding the gears: Makhi
  ]
)
#grid(
  [
  === Materials
    - 2.75” Omni wheels
    - Screws
    - 48 tooth gears
    - Round gear inserts
    - Nylocks
    - Keps nuts
    - Spacers




  ],
  figure(
    image("build/25.10.18-1.png", height: 100pt,),
    caption: "left side, all omni"
  ),
)
#grid(
  stack(
    spacing: 10pt,
  [
    === Assembly
    - Attach a 48-tooth gear to a 2.75 inch omni wheel.
    - Place a screw into the spot corresponding with the drivetrain CAD
    - Screw on a keps nut, then place spacers to center the wheel in place
    - Slide the gear (with a round insert) onto the screw, then add more spacers until the c-channel is reached.


  ],
  [
    === Troubleshooting
    #text(red)[Problem:] We didn’t have enough control when driving with the traction wheels.
    - #text(green)[Solution:] We switched to all omni-wheels to have better drifting and control.
  ],
  ),
  figure(
    image("build/25.10.18-2.png", height: 150pt),
    caption: "right side, all omni"
  ),
)
#admonition(type: "note")[
  Due to this new change in the drivetrain, there needed to be better control so that the robot doesn't continuously drift resulting in the team changing the drive curve to better suit the driver. 
]
