#import "/template/template.typ": *

#show: create-entry.with(
  title: "Loader v1",
  type: "build",
  date: datetime(year: 2025, month: 11, day: 29),
  attendance: ("Anders", "Makhi", "Ishika", "Rory", "Eric", "Samia"),
  designed: "Anders",
  witnessed: "Makhi",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2025/11/29
    We built the loader mechanism, which did not take more than a day for us to build but the planning was very meticulous as much can go wrong during this stage.
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
    - Build structure for loader mechanism: Makhi, Anders
    - Cut out the unique shapes for polycarb: Eric

  ]
)

== Build Process
#grid(
  stack(
    spacing: 20pt, 
  [
    === Materials
    - C-Channel
    - U-Channel
    - Screws
    - Nylons
    - Bearings
    - Spacers

  ],
    [
    === Assembly: Drivetrain
    - Attach a half cut to each side of the drivetrain with a screw joint
    - Connect an omni wheel at the end of each halfcut,
    - Join the halfcuts together and brace them with more metal
    - Cut plastic to size for the loader, and attach it with screws and rubberbands


  ],
  ),
  stack(
    spacing: 10pt, 
  figure(
    image("brainstorm/11-29-25.png", width: 200pt),
    caption: "Side view: Front shows the loader mechanism"
  ),
  [
    === Troubleshooting
    - #text(red)[Problem:]The plastic was too far away from the loader so it was ineffective.
    - #text(green)[Solution:]  We used c-channel and plastic to create guides for the blocks, stopping them from getting stuck.
    - We moved the loader mechanism closer so it could engage with the blocks.
  ]
  ),
  )