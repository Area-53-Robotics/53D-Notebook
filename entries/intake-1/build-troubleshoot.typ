#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake Troubleshooting v1",
  type: "build",
  date: datetime(year: 2025, month:10, day: 03),
  attendance: ("Ishika", "Makhi", "Eric", "Samia", "Anders","Rory"),
  designed: "Rory",
  witnessed: "Makhi",
)

#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2025/10/03

We worked on troubleshooting and tuning our robot, especially the intake.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the intake): Eric 
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Anders
    - *Oversight & Quality Control*: Makhi
  ],
  today: [
    - CAD: Rory
    - Troubleshooting the stages of the intake: Eric, Makhi, Anders
  ]
)
#grid(
  stack(
    spacing: 40pt, 
  [
  === Materials
    - Collars
    - Spacers
    - Sprockets
    - Rubber bands



  ],
  figure(
    image("build-troubleshoot/25.10.3.png", height: 100pt,), 
    caption: "Second stage sprocket"
  ),
  ),
  stack(
    spacing: 20pt,
  [
    === Assembly
    - Locate any spots where blocks would get stuck.
    - Lower the axle so that it would reliably make contact with the blocks.
    - Add sprockets onto the axles, with collars and spacers to keep them in place.
    - Place rubber bands on the sprockets, to grip the blocks.
    - Repeat this process for axles which already have flex wheels on them, by first taking off the flex wheels.


  ],
  [
    === Troubleshooting
    #text(red)[Problem:] The intake would not reliably move blocks.
    - #text(green)[Solution:] We added more rubber bands, moved some sprockets lower down, and also switched some flex wheels to sprockets.
    - We found it important to troubleshoot the stages of the intake as it made it increasingly difficult to score
    consistently and accurately. 
  ],
  ),
)

#colbreak()
= 2025/10/04
#to-do(
  date: datetime(year: 2025, month: 10, day: 04),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Troubleshoot the intake according to today's delegation.", "Everyone"),
  )
)
We tried to improve/troubleshoot our basket’s capacity and stability.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the intake): Eric 
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Anders
    - *Oversight & Quality Control*:Makhi
      ],
  today: [
    - CAD: Rory
    - Tune the basket to be able to fit the optimal amount of blocks needed: Eric, Anders, Makhi 

  ]
)

== Build Process
#grid(
  figure(
    image("build-troubleshoot/25.10.4-1.png", width: 100pt),
    caption: "Hopper: strings version"
  ),
  [
    === Materials
    - Zip ties
    - Mesh


  ],
  [
    === Assembly
    - Cut mesh to size around the basket.
    - Attach it with zip ties to the c-channel.
    - Additionally, use zip ties to tension the mesh used for the intake.
    - Try different tensions to figure out what works best.



  ],
  [
    === Troubleshooting
    - #text(red)[Problem:] The string “basket” would let blocks get out sometimes.
    - #text(green)[Solution:]  We used mesh and zip ties to solve this issue.
    - Often times the blocks would get stuck on the path from the hopper (basket) to the front of the intake so we had to tune this using the mesh so that it would be a smooth process. 
  ]
)