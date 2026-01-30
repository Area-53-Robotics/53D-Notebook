#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake-Troubleshoot v2",
  type: "build",
  date: datetime(year: 2025, month: 11, day: 14),
  attendance: ("Anders", "Ishika", "Rory", "Eric", "Samia", "Makhi"),
  designed: "Anders",
  witnessed: "Eric",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2025/11/14
#to-do(
  date: datetime(year: 2025, month: 11, day: 14),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Troubleshoot the new intake design according to today's delegation.", "Everyone"),
  )
)
We troubleshooted our intake as it we needed to make sure that the blocks get out of the intake in the same amount of speed they come in. 

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
    - Troubleshoot the intake: Anders, Eric, Makhi

  ]
)

== Build Process
#grid(
  stack(
    spacing: 10pt, 
  [
    === Materials
    - Screws
    - Rubber bands
    - Nylocks



  ],
  figure(
    image("build/25.10.25.png", width: 100pt),
    caption: "Front of the ramp of the intake"
  ),
  ),
  stack(
    spacing: 10pt, 
  [
    === Assembly: Drivetrain
    - Reattach motors to the drivetrain, following steps in the Drivetrain V2 entry.
    - Copy the chain tensioner to the other side, following steps in the Intake V2 entries.
    - Work on the autonomous code, which is discussed in further detail in our programming entries.
  ],
  [
    === Troubleshooting
    - #text(red)[Problem:] TOur chain tensioner would pull the chain too much, causing the motor to stop running at full speed.
    - #text(green)[Solution:]  We changed the positioning of the rubber band to change the pressure on the chain tensioner.
    - At the higher height there was a little bit of trouble to get the blocks out but we troubleshooted it, swapping the gear ratio to make higher height work.
  ]
  ),
)
