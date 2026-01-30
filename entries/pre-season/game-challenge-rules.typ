#import "/template/template.typ": *

#show: create-entry.with(
  title: "Game Challenge - Rules Analysis",
  type: "identify",
  date: datetime(year: 2025, month: 5, day: 22),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Anders",
  witnessed: "Makhi",
)

#to-do(
  date: datetime(year: 2025, month: 5, day: 22),
  (
    (true, "Analyze the game challenge rules to identify the game objectives for the season.", "Everyone"),
    (true, "Identify strategies to approach the game objectives for the season.", "Everyone"),
    (true, "Plan out the Push Back season by creating a Gantt chart.", "Everyone"),
  )
)

#show image: it => align(center, it)

VRC Push Back is a 2024-2025 game focusing significantly on collaboration, robot composition, and tactics.

= Field
#image("/assets/field-elements/game-field.png", width: 70%)

#colbreak()

- Area: 12ft x 12ft foam mat, surrounded by a perimeter, with 4 match load towers, 2 parallel scoring towers, and one central scoring towers
- Field Elements
  - 4 match load towers holding up to 6 scoring objects each 
  - 2 side scoring towers with one level each
  - 2 side scoring towers with one level each
  - 88 scoring objects/blocks
    - 44 red
    - 44 blue

= Field Elements #footnote[All images and diagrams are sourced from #link("https://content.vexrobotics.com/docs/25-26/v5rc-push-back/docs/PushBack-GameManual-0.1.pdf")]

#show grid.cell.where(x: 1): set align(center + horizon)

== Blocks
#grid(
  columns: (1fr, 1fr),
  row-gutter: 10pt,
  column-gutter: 10pt,

  [
    - *Block* #sym.dash.em A blue or red 18-sided hollow plastic polygonal object with flat faces and a weight of approximately 40 grams. Each cross-section measures approximately 3.25” (82mm) between pairs of opposing flat faces, and 3.85” (98mm) between pairs of opposing corners 
    - 88 plastic blocks, 44 of each color
    - #vex-rule[SC2]  A Block is considered Scored if it meets all of the following criteria: 
      - a. The Block is in contact with the inside surface(s) of a Goal. 
      - b. The Block is not in contact with a Robot of the same color as that Block. 
      - c. The Block is not in contact with the Floor. 
      - Note: Cubes within a goal’s “control zone” can contribute to the “control bonus” (points vary).
  ],
  image("/assets/field-elements/block.png"),
  grid.cell(colspan: 2)[
    == Element Analysis: Rings
    The Push Back blocks have a very odd shape, but are quite light. 
    + Unlike previous games, the nonexistent posession limit will greatly benefit from the lightness of the blocks. 
  ]
)

#colbreak()

== Long Goals
#grid(
  columns: (1fr, 1fr),
  row-gutter: 10pt,
  column-gutter: 10pt,

  [
    - *Long Goal* #sym.dash.em A horizontal goal which is 48.8” (1239mm) in length, with a 13.33” (339mm) enclosed center section.
    - There are 2 Long Goals on each side of the field:
      - Each goal can hold a maximum of 15 blocks.
      - The inner “control zone,” delineated by two stripes of white electrical tape, holds up to 3 blocks.
      - The alliance with the most blocks scored within the control zone earns the control zone bonus, which is 10 points.
    - #vex-rule[SC3] A Control Zone is considered Controlled by an Alliance if a majority of the Blocks Scored in that Control Zone are the same color as the Alliance. 
      - a. For Long Goals, a Scored Block is considered Scored in the Control Zone if it is entirely contained within that Control Zone
      - b. A Block must be considered Scored in a Goal (See #vex-rule[SC2]) to also be considered Scored in a Control Zone
  ],
  stack(
    spacing: 5pt,
    image("/assets/field-elements/long-goal.png"),
  ),
  grid.cell(colspan: 2)[
    == Element Analysis: Long Goal
    + The middle of the goal, the control zone, will be a momental part of the game strategy. 
    + The two long goals are on opposite sides of the field, and are high up. 
  ]
)

#colbreak()

== Center Goal
#grid(
  columns: (1fr, 1fr),
  row-gutter: 10pt,
  column-gutter: 10pt,
  
  [
    - *Center Goal* #sym.dash.em Consists of two goals that are each 22.6” (574mm) in length, placed at two different heights.
    - There are two goals that make up the center goal:
      - Each Center Goal can hold up to seven (7) Scored Blocks.
      - The Control Zone for a Center Goal includes the entire Goal, and holds up to seven (7) Blocks.
      - They are both arranged perpendicularly to one another.
    - #vex-rule[SC3] A Control Zone is considered Controlled by an Alliance if a majority of the Blocks Scored in that Control Zone are the same color as the Alliance. 
      - a. For Long Goals, a Scored Block is considered Scored in the Control Zone if it is entirely contained within that Control Zone
      - b. A Block must be considered Scored in a Goal (See #vex-rule[SC2]) to also be considered Scored in a Control Zone
  ],
  image("/assets/field-elements/center-goal.png"),
  grid.cell(colspan: 2)[
    == Element Analysis: Center Goals
    The Center Goals are aligned at two different heights, perpendicular to each other: 
    + The lower goal is flat on the bottom, while the upper goal bottoms out to a point.
    +This creates an interesting scoring challenge, due to their varying alignment.
  ]
)

#colbreak()

== Loaders
#grid(
  columns: (1fr, 1fr),
  row-gutter: 10pt,
  column-gutter: 10pt,

  [
    - *Loader* #sym.dash.em  A  21.34” (542mm) tall plastic and rubber structures each attached to the Field Perimeter, with an inner diameter of 3.94 inches.
    - There are 4 loaders on the field:
      - Robots may remove Blocks from Loaders during a Match, and Drive Team Members may add Match Load Blocks to Loaders during the Match 
      - Each Loader can hold up to six (6) Blocks.
      - At the start of each match, they hold 3 blue blocks and 3 red blocks respectively. 
    - #vex-rule[SG9] Match Loads may be introduced during the Match under certain conditions. For the purpose of this rule, “introduce” refers to the moment when a Drive Team Member has released a Block into a Loader. Drive Team Members may introduce Match Load Blocks by placing them into either of the Loaders adjacent to their Alliance Station:
      - a. Blocks may only be added to Loaders during the Driver Controlled Period of a Match.
      - b. A Match Load Block may not be contacted by a Robot prior to being placed into a Loader.
      - c. Match Load Blocks may only be removed from a Loader by a Robot, and only through the bottom opening of the Loader. 
  ],
  image("/assets/field-elements/loader.png"),
  grid.cell(colspan: 2)[
    == Element Analysis: Loader
    Similar to Over Under, Push Back had a system where game pieces were introduced onto the field by drive team members, but this time there are some key difference:
    + The Over Under system required drive team members to put the game piece directly on the robot, causing safety issues, unlike Push Back where there is a loader. 
    + Breaking the plane was also quite frequent in Over Under but the existence of loaders will make it easier for drive team members in Push Back. 
    + When game elements were introduced mid-game during Over Under, some robots failed to retrieve them due to the fast pace of the game but in Push Back the robots will have enough time to collect their block from the loader. 
  ]
)

#colbreak()

== Park Zones
#grid(
  columns: (1fr, 1fr),
  row-gutter: 10pt,
  column-gutter: 10pt,

  [
    - *Parking Zone* #sym.dash.em A Field Element that marks a location where Blocks begin a Match and Robots can be Parked at the end of the Match. Park Zones are made of red or blue plastic extrusions and black plastic connectors. Each Park Zone is 18.87“ (479mm) wide x 16.86” (428mm) deep.
    - There are two parking zones per alliance: 
      - Alliances can park in their corresponding park zones at the end of a match.
      - If one robot is parked, it is worth 8 points, while if both robots are parked, 30 points are earned.
    - #vex-rule[SC4] A Robot is considered Parked if it meets all of the following criteria: 
      - a. The Robot is not contacting the Floor outside of its Alliance-colored Park Zone.
      - b. The Robot is not contacting any Field Elements other than the inside face of the Field Perimeter, the Floor inside of its Alliance-colored Park Zone, and/or the plastic extrusions and connectors that are part of the Park Zone. Contact with these allowed elements is not required.
      - c. The Robot is at least partially within the vertical projection of its Alliance-colored Park Zone.
    - Note: Only one Mobile Goal may be considered Placed in each Corner.
  ],
  stack(
    spacing: 5pt,
    image("/assets/field-elements/parking-zone.png", width: 50%),
    image("/assets/field-elements/parking-zone1.png", width: 50%),
    image("/assets/field-elements/parking-zone2.png", width: 50%),
  ),
  grid.cell(colspan: 2)[
    == Element Analysis: Parking Zone
    This is a significant strategy at the end of the game that can both be advantageous or disadvantageous:
    + If both robots in an alliance are parked it will add 30 points to that alliance's score, this will significantly increase the score especially if the other alliance does not have both robots parked. 
    + It can be disadvantageous if teams use their time to park and the opposite alliance uses the time to descore the control zones and fill their own color. 
    
    This end game will be a key factor in the strategies of all the games in the Push Back Game. 
  ]
)

#colbreak()

#show grid.cell.where(x: 1): set align(left)

= Rules Overview
#v(5pt)
There are multiple categories of rules, each of which apply to different aspects of the game.
#grid(
  columns: 2,
  row-gutter: 15pt,
  column-gutter: 20pt,

  grid.cell(colspan: 2)[
    == Robot
    + #vex-rule[R1] One Robot per Team
    + #vex-rule[R5] Robots must fit within an 18" x 18" x 18" volume
    + #vex-rule[R7] Robots must let go of scripting objects after the match
    + #vex-rule[R12] Motors are limited to a combined power of 88W
    + #vex-rule[R25] Robots may use a limited number and amount of plastic, 12 pieces limited to 4” by 8”
    + #vex-rule[R26] Pneumatics are limited to a maximum of 2 pneumatic air reservoirs charged to a maximum of 100 psi.
  ],
  grid.cell(rowspan: 2)[
    == Specific Game Rules
    + #vex-rule[SG2] Horizontal expansion is limited to 22" in one X/Y direction
    + #vex-rule[SG3] Vertical expansion is limited to a total height of 22”.
    + #vex-rule[SG5] Each Robot gets one Block as a preload.
    + #vex-rule[SG6] Possession and pushing is unlimited.
    + #vex-rule[SG10] Don't reach inside enclosed sections of goals
    + #vex-rule[SG11] The opposite alliance's Park zones are “safe” during the endgame (last 20 seconds).
  ],
  [
    == Tournament
    + #vex-rule[T3] The Drive Team is permitted to immediately appeal a Head Referee's ruling
    + #vex-rule[T11] Each Team will have at least six Qualification Matches
  ],
  [
    == General Game Rules
    + #vex-rule[GG3] Robots at the field must be ready to play
    + #vex-rule[GG7] Each Elimination Alliance gets one Time Out
    + #vex-rule[GG8] Keep your Robots together..
    + #vex-rule[GG9] Don’t clamp your Robot to the Field.
    + #vex-rule[GG14] Don’t destroy other Robots.
    + #vex-rule[GG15] Offensive Robots get the “benefit of the doubt.”
    + #vex-rule[GG17] No Holding for more than a 5-count
  ],
)

#colbreak()

= Autonomous
#figure(
  image("/assets/field-elements/autonomous-field.png", width: 70%),
  caption: "An overhead view of the Field, with the Autonomous Lines highlighted green."
)

- *Autonomous Period* #sym.dash.em A 15 second-long time period during which Robots operate and react only to sensor inputs and pre-programmed commands
- *Autonomous Line* #sym.dash.em The pair of white tape lines that run across the field, and the space between those lines.
- #vex-rule[SG7] Don't cross the Autonomous Line. During the Autonomous Period, Robots may not contact foam tiles, Scoring Objects, or Field Elements which are on the opposing Alliance's side of the Autonomous Line.
- #vex-rule[SC5] Scoring of the Autonomous Bonus is evaluated immediately after the Autonomous Period ends (i.e., once all Scoring Objects, Field Elements, and Robots on the Field come to rest). 
  - a. Points for Parked Robots are not included in the calculation of an Alliance’s score for the purposes of determining the Autonomous Bonus.
  - b.  If the Autonomous Period ends in a tie, including a zero-to-zero tie, each Alliance will receive an Autonomous Bonus of five (5) points. 
  - c. Any Violations, Major or Minor, committed during the Autonomous Period will result in the Autonomous Bonus being automatically awarded to the opposing Alliance.
  - d. Per rule, if both Alliances commit Violations during the Autonomous Period that would have affected the outcome of the Autonomous Bonus, then no Autonomous Bonus will be awarded.
- #vex-rule[SC6] An Autonomous Win Point is awarded to any Alliance that ends the Autonomous Period with all of the following tasks completed, and that has committed no Violations during the Autonomous Period:
  - 1. At least seven (7) Blocks of the Alliance’s color are Scored.
  - 2. At least three (3) different Goals include at least one (1) Scored Block of the Alliance’s color.
  - 3. At least three (3) Blocks of the Alliance’s color have been removed from Loaders adjacent to the Alliance’s Alliance Station.
  - 4. Neither Robot is contacting the Park Zone barrier.

= Match Scoring Summary
#set text(8pt)
#show table.cell.where(y: 0): strong

#table(
  columns: 2,
  fill: (_, y) =>
    if y == 0 {
      gray
    },

  table.header([Achievement], [Point Value]),
  
  [Autonomous Bonus], [10 Points],
  [Each Block Scored], [3 Points],
  [Each Controlled Zone in a Long Goal], [10 Points],
  [Controlled Center Goal - Upper], [8 Points],
  [Controlled Center Goal - Lower], [6 Points],
  [1 Parked Alliance Robot], [8 Points],
  [2 Parked Alliance Robots], [30 Points],
)



= Robot Skills Challenge
#set text(11pt)
#align(center)[
  #rotate(
    90deg,
    reflow: true,
    image("/assets/field-elements/skills-field.png", width: 118pt)
  )
]

Skills is a version of the VEX Robotics Challenge where you score as many points on the possible without anyone else on the field for 1 minute, either driver controlled or autonomously controlled.

== Robot Skills Challenge Rules
+ #vex-rule[RSC1] Standard rules apply in most cases
+ #vex-rule[RSC2] Scoring Robot Skills Matches
+ #vex-rule[RSC3] Robot and Field setup for Robot Skills Matches
+ #vex-rule[RSC4] Skills Stop Time

== Robot Skills Challenge Scoring
#set text(8pt)
#show table: it => align(center, it)
#table(
  columns: 2,
  fill: (_, y) =>
    if y == 0 {
      gray
    },

  table.header([Achievement], [Point Value]),
  
  [Each Block Scored in a Goal], [1 Point],
  [Each filled Control Zone in a Long Goal], [5 Points],
  [Each filled Control Zone in a Center Goal], [10 Points],
  [Each Cleared Park Zone], [5 Points],
  [Each Cleared Loader], [5 Points],
  [Parked Robot], [15 Points],
)