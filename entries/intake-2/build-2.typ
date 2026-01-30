#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v2",
  type: "build",
  date: datetime(year: 2025, month: 11, day: 01),
  attendance: ("Anders", "Ishika", "Rory", "Eric", "Samia", "Makhi"),
  designed: "Anders",
  witnessed: "Eric",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2025/11/01
Today we worked on the pneumatics for our intake as well as made sure our plastic was in-size.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the drivetrain): Eric
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Anders
    - *Oversight & Quality Control*: Makhi
  ],
  today: [
    - CAD: Rory
    - Add the pneumatics for the intake: Eric, Anders, Makhi
  ]
)

== Build Process
#grid(
  [
    === Materials
    - Pneumatic tank
    - Pneumatic tubing
    - Solenoids
    - Pistons
    - Spacers
    - Screws
    - Keps nut
    - Nylock



  ],
  figure(
    image("build/25.11.1-1.png", width: 95pt),
    caption: "Pneumatic Piston Mount"
  ),
)
  #grid(
  [
    === Assembly: Drivetrain
    - Insert a screw and place on it:
      a. 1 keps nut
      b. Piston
      c. Spacers
      d. Nylock
    - Repeat this process for the other side.
    - Use pneumatic tubing to connect the piston and solenoid.
    - Attach the pneumatic tank and connect it to the solenoid.



  ],
  figure(
    image("build/25.11.1-2.png", width: 100pt),
    caption: "New plastic shielding blocks"
  ),
  [
    === Troubleshooting
    - #text(red)[Problem:] Our plastic is too big and breaking the rule R25.
    - #text(green)[Solution:] We cut our plastic down to be within 4” by 8”.
  ]
)
#colbreak()
= 2025/11/07
#to-do(
  date: datetime(year: 2025, month: 10, day: 31),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Build the new intake design according to today's delegation.", "Everyone"),
    (true, "Manage daily practices using the application of a timeline", "Everyone"),
    (true, "Program the new intake design", "Everyone"),

  )
)

We finished up the second stage of the intake, by adding plastic sides and mesh.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the drivetrain): Eric
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Eric, Anders
    - *Oversight & Quality Control*: Makhi
  ],
  today: [
    - CAD: Rory
    - Adding plastic: Eric, Anders
    - Adding Mesh: Makhi
  ]
)

== Build Process
#grid(
  [
    === Materials
    - C-channel
    - Mesh
    - Zip ties
    - Delrin
    - Screws
    - Nylocks


  ],
  figure(
    image("build/25.11.7-1.png", width: 200pt),
    caption: "Side view of robot with all plastic"
  ),
)
  #grid(
    stack(
      spacing: 10pt,
  [
    === Assembly: Drivetrain
    - Drill screw holes into the Delrin that are aligned with the c-channel.
    - Cut the Delrin to size so that it prevents blocks from falling out.
    - Attach the Delrin to the top stage, and then screw the c-channel to the top.
    - Zip tie mesh to the c-channel


  ],
  [
    === Troubleshooting
    - #text(red)[Problem:] The sides kept bending inward and there wasn’t enough space to add bracing and still be able to drive under the goals (which is one of our requirements).
    - #text(green)[Solution:]  Use string on the inside and around the outside to help brace the sides.
  ]
  ),
  figure(
    image("build/25.11.7-2.png", width: 200pt),
    caption: "View of the indexer, to control the blocks"
  ),
)
