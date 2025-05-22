#import "/template/template.typ": *

#show: create-entry.with(
  title: "Game Challenge - Rules Analysis",
  type: "identify",
  date: datetime(year: 2024, month: 4, day: 30),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Ishika",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2024, month: 4, day: 30),
  (
    (true, "Analyze the game challenge rules to identify the game objectives for the season.", "Everyone"),
    (true, "Identify strategies to approach the game objectives for the season.", "Everyone"),
    (true, "Plan out the High Stakes season by creating a Gantt chart.", "Everyone"),
  )
)

#show image: it => align(center, it)

VRC High Stakes is a 2024-2025 game focusing significantly on collaboration, robot composition, and tactics.

= Field
#align(center)[
  #grid(
    columns: 4,
    rows: (auto, 15pt, 15pt),
    align: (x, _) =>
      if calc.odd(x) {left + horizon}
      else if calc.even(x) {center + horizon},
    row-gutter: 5pt,
    column-gutter: 5pt,

    grid.header(grid.cell(colspan: 4, align: center)[#text(16pt)[#underline[Legend]]]),

    image("/assets/field-elements/red-ring-top-view.png", width: 15pt), [Red Ring],
    image("/assets/field-elements/blue-ring-top-view.png", width: 15pt), [Blue Ring],
    image("/assets/field-elements/mobile-goal-top-view.png", width: 15pt), [Mobile Goal],
    circle(radius: 7.5pt, fill: black), [Wall Stake]
  )
]
#image("/assets/field-elements/game-field.png", width: 70%)

#colbreak()

- Area: 12ft x 12ft foam mat, surrounded by a perimeter, with a Ladder in the center of the field.
- Field Elements
  - 5 Mobile Goals, each with 1 Stake
  - 4 Wall Stakes, 1 per Alliance and 2 neutral
  - 1 Ladder, with 3 Levels and 1 High Stake
  - 48 Rings, 24 of each color
    - 44 of the rings begin on the field
    - 4 of the rings are preloads, 1 per robot
  - 4 Corners, 2 Positive and 2 Negative

= Field Elements #footnote[All images and diagrams are sourced from #link("https://content.vexrobotics.com/docs/2024-2025/v5rc-high-stakes/VRC-HighStakesManual-24-25-0.1release.pdf")]

#show grid.cell.where(x: 1): set align(center + horizon)

== Rings
#grid(
  columns: (1fr, 1fr),
  row-gutter: 10pt,
  column-gutter: 10pt,

  [
    - *Ring* #sym.dash.em A hollow red or blue torus-shaped plastic object with an outer diameter of 7", an inner “hole" diameter of 3", and a thickness (or “tube diameter") of 2"
    - 48 Rings, 24 of each color
    - #vex-rule[SC4] A Ring is considered a Top Ring if it meets the following criteria:
      - a. The Ring is Scored on a Stake (i.e., meets all criteria in #vex-rule[SC3]).
      - b. The Ring is the furthest Scored Ring from a given Stake's base (i.e., Mobile Goal base or Field Perimeter wall).
      - c. There is no minimum number of Rings required; if only one Ring is Scored on a Stake, then it is still considered Stake's Top Ring.
      - Note: A Ring that is considered a Top Ring does not also receive points for being Scored on a Stake; i.e., that Ring is worth 3 points, not a total of “3 + 1" points.
  ],
  image("/assets/field-elements/ring.png"),
  grid.cell(colspan: 2)[
    == Element Analysis: Rings
    The High Stakes rings are very similar to the Tipping Point #glossary-footnote[Tipping Point] rings, but with a few notable differences:
    + The High Stakes rings are flat, while the Tipping Point rings were bent.
    + The High Stakes rings have a greater thickness than the Tipping Point rings.

    Therefore, it will be harder to make consistent intake mechanisms because the rings will be less workable.
  ]
)

#colbreak()

== Stakes
#grid(
  columns: (1fr, 1fr),
  row-gutter: 10pt,
  column-gutter: 10pt,

  [
    - *Stake* #sym.dash.em A vertical ½" Schedule 40 PVC pipe (gray, red, or blue) with a compliant barb at the top, used for Scoring Rings.
    - There are 10 Stakes:
      - 5 neutral Stakes in Mobile Goals, which fit 6 Rings each
      - 2 Alliance Wall Stakes, one per Alliance, which fit 2 Rings each
      - 2 neutral Wall Stakes, which fit 6 Rings each
      - 1 neutral High Stake, which fits 1 Ring
    - #vex-rule[SC3] A Ring is considered Scored on a Stake if it meets the following criteria: 
      - a. The Ring is not contacting a Robot from the same color Alliance as the Ring.
      - b. The Ring is not contacting a gray foam tile.
      - c. Any part of the Stake is at least partially within the volume defined by the inner edges of the Ring.
      - Each Ring can only be counted for points once, even in cases where the Ring qualifies as Scored on multiple Stakes. If multiple Stakes are encircled by the same Ring, Top Rings will not be awarded for those Stakes. 
      - d. The Stake does not exceed its total permitted number of Rings. In the event of too many Rings on a Stake, the “highest" Rings will be removed.
  ],
  stack(
    spacing: 5pt,
    image("/assets/field-elements/neutral-wall-stake.png"),
    image("/assets/field-elements/alliance-wall-stake.png"),
  ),
  grid.cell(colspan: 2)[
    == Element Analysis: Stakes
    + The barb at the top of the stake will create resistance when trying to drop rings onto the stake, which will make creating intakes harder.
    + The shape of the barb will make it especially hard to pull a ring off of the stake, which will make creating claws and other descore mechanisms harder.
  ]
)

#colbreak()

== Mobile Goals
#grid(
  columns: (1fr, 1fr),
  row-gutter: 10pt,
  column-gutter: 10pt,
  
  [
    - *Mobile Goal* #sym.dash.em One of 5 large Scoring Objects, each with a Stake in the center. Mobile Goals are hexagonal, with a maximal diameter of 10" and an overall height of 14.5". The Stake is considered part of the Mobile Goal
    - #vex-rule[SC6] A Mobile Goal that has been Placed will result in the following Corner modifiers to its Scored Rings: 
      - a. Placed in a Positive Corner
        - i. Values of all Scored Rings on the Mobile Goal will be doubled. Scored Rings will receive 2 points, and Scored Top Rings will receive 6 points.
      - b. Placed in a Negative Corner
        - i. Values of all Scored Rings on the Mobile Goal will be set to zero points.
        - ii. For each Ring, an equivalent amount of points will be removed from that Alliance's other Scored Rings. Scored Rings will remove 1 point, and Scored Top Rings will remove 3 points.
        - iii. This negator only applies to an Alliance's “Ring points."
  ],
  image("/assets/field-elements/mobile-goal.png"),
  grid.cell(colspan: 2)[
    == Element Analysis: Mobile Goals
    The High Stakes mobile goals are very similar to the Tipping Point mobile goals, but with a few notable differences:
    + The depth of the High Stakes mobile goals' bases is less than those of the Tipping Point mobile goals' bases.
    + The High Stakes mobile goals' stakes have a barb at the top, while the Tipping Point mobile goals' stakes did not.

    These differences will cause a few notable issues when building our robot:
    + It will be hard to design a clamp that can successfully hold onto the mobile goals.
    + It will be difficult to deposit rings onto the mobile goals' stakes.
  ]
)

#colbreak()

== Ladder
#grid(
  columns: (1fr, 1fr),
  row-gutter: 10pt,
  column-gutter: 10pt,

  [
    - *Ladder* #sym.dash.em A 36" x 36" x 46" structure located in the center of the field. The Ladder has four vertical posts, and three sets of horizontal rungs at 18", 32", and 46" to denote the three Climbing Levels. There is also a single High Stake atop the vertical post nearest the audience side of the Field, at the 180 degree mark on a GPS strip. All supporting structures, hardware, and the High Stake are considered part of the Ladder
    - #vex-rule[SC7] A Robot is considered to have Climbed to a Level if it meets the following criteria:
      - a. The Robot is contacting the Ladder.
      - b. The Robot is not contacting any other Field Elements, including the gray foam tiles.
      - c. The Robot is not contacting any Mobile Goals.
      - d. The Robot's lowest point is past that Level's minimum height from the gray foam tiles.
  ],
  image("/assets/field-elements/ladder.png"),
  grid.cell(colspan: 2)[
    == Element Analysis: Ladder
    Similar to High Stakes, VRC Over Under #glossary-footnote[Over Under] also had an endgame elevation mechanic, but with a few key differences:
    + The High Stakes ladder has 3 elevation rungs, while the Over Under elevation bar had 1 rung.
    + There is only 1 ladder on the High Stakes field, while there was 1 elevation bar per alliance in Over Under.
    + Elevation scoring in Over Under had 10 scorable tiers, while High Stakes has 3 scorable tiers.
    + It was possible to balance on the mid-field barrier in Over Under, but there is no similar mechanic in High Stakes.

    These differences will cause a few notable effects in matches:
    + Because it is harder to elevate this year, less teams will create successful elevation mechanisms.
    + Out of the teams that do make elevation mechanisms, very few of them will get past level 1.
    + We will have to make decide during in-round endgames whether it is worth taking time to elevate to higher levels, or if it is better to score mobile goals in corners.
  ]
)

#colbreak()

== Corners
#grid(
  columns: (1fr, 1fr),
  row-gutter: 10pt,
  column-gutter: 10pt,

  [
    - *Corner* #sym.dash.em One of four 12" x 12" locations in which Mobile Goals can be Placed. The Corners are bounded by the inner edges of the Field Perimeter and the outer edge of the associated white tape lines. The Corner is defined as the foam tile and tape line themselves; it is not a 3-dimensional volume.
      - *Negative Corner* #sym.dash.em A Corner of the field, designated by the “-" sign on the stickers applied to the top of the Field Perimeter.
      - *Positive Corner* #sym.dash.em A Corner of the field, designated by the “+" sign on the stickers applied to the top of the Field Perimeter.
    - #vex-rule[SC5] A Mobile Goal is considered Placed in a Corner if it meets the following criteria: 
      - a. The Mobile Goal's base is contacting the Corner (i.e., the Floor and/or white tape line).
      - b. It is “upright." For the purposes of this definition, a Mobile Goal is considered “upright" if no contact is being made between its Stake (and/or any Rings on this Stake) and the Floor or Field Perimeter.
      - c. Contact with a Robot is irrelevant, as long as all other criteria are met
    - Note: Only one Mobile Goal may be considered Placed in each Corner.
  ],
  stack(
    spacing: 5pt,
    image("/assets/field-elements/highlighted-negative-corner.png", width: 50%),
    image("/assets/field-elements/negative-corner.png", width: 50%),
    image("/assets/field-elements/positive-corner.png", width: 50%),
  ),
  grid.cell(colspan: 2)[
    == Element Analysis: Corners
    The corner modifier mechanic in High Stakes is unlike anything we have experienced in previous VEX challenges. Due to how significantly the corner modifiers can affect final scores, we predict they will have a large impact on matches in the following ways:
    + During early and mid-season, when most robots do not have elevation capabilities, fights to score and descore mobile goals in corners will be a prominent part of the endgame.
    + During late season, when some robots have elevation capabilities, it will be important for alliances to strategize how they will elevate while also maximizing their score using the corners modifiers.
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
    + #vex-rule[R4] Robots must fit within an 18" x 18" x 18" volume
    + #vex-rule[R5] Robots may only expand horizontally in one direction
    + #vex-rule[R11] Let go of Scoring Objects (ring or mobile goal) after the Match
    + #vex-rule[R13] Motors are limited to a combined power of 88W
    + #vex-rule[R19] Robots may use custom plastic parts cut from a single 12" x 24" sheet, up to 0.070" thick.
    + #vex-rule[R23] Pneumatics are limited to a maximum of 2 pneumatic air reservoirs charged to a maximum of 100 psi.
  ],
  grid.cell(rowspan: 2)[
    == Specific Game Rules
    + #vex-rule[SG2] Horizontal expansion is limited to 24" in one X/Y direction
    + #vex-rule[SG3] Vertical expansion is limited to 2 levels of the Ladder (32.16" upwards when on the floor)
      + Level 0: 0", the Floor tiles
      + Level 1: #sym.lt.eq 18.16", from the Floor to the top of the black rung
      + Level 2: 18.17"-32.16", from the top of the black rung to the top of the gray rung
      + Level 3: 32.17: to 46.16", from the top of the gray rung to the top of the yellow rung
      + Level 4: #sym.gt.eq 46.17", above the yellow rung
    + #vex-rule[SG5] Each Robot gets one Ring as a preload.
    + #vex-rule[SG6] Possession is limited to two Rings and one Mobile Goal.
    + #vex-rule[SG9] Don't remove opponents from the Ladder.
    + #vex-rule[SG10] Alliance Wall Stakes are protected.
    + #vex-rule[SG11] Positive corners are “safe" during the endgame (last 10 seconds).
  ],
  [
    == Tournament
    + #vex-rule[T3] The Drive Team is permitted to immediately appeal a Head Referee's ruling
    + #vex-rule[T6] Robots at the field must be ready to play
    + #vex-rule[T9] Each Elimination Alliance gets one Time Out
    + #vex-rule[T14] Each Team will have at least six Qualification Matches
  ],
  [
    == General Game Rules
    + #vex-rule[G6] Robots may not intentionally detach parts during the Match.
    + #vex-rule[G7] Don't clamp your Robot to the Field.
    + #vex-rule[G13] Don't destroy other Robots.
    + #vex-rule[G14] Offensive Robots get the “benefit of the doubt."
    + #vex-rule[G16] No Holding for more than a 5-second count
  ],
)

#colbreak()

= Autonomous
#figure(
  image("/assets/field-elements/autonomous-field.png", width: 70%),
  caption: "An overhead view of the Field, with the Starting Lines highlighted green."
)

- *Autonomous Period* #sym.dash.em A 15 second-long time period during which Robots operate and react only to sensor inputs and pre-programmed commands
- *Autonomous Line* #sym.dash.em The pair of white tape lines that run across the field, and the space between those lines.
- #vex-rule[SG7] Don't cross the Autonomous Line. During the Autonomous Period, Robots may not contact foam tiles, Scoring Objects, or Field Elements which are on the opposing Alliance's side of the Autonomous Line.
- #vex-rule[SC2] Scoring of the Autonomous Bonus is evaluated immediately after the Autonomous Period ends (i.e., once all Scoring Objects, Field Elements, and Robots on the Field come to rest). 
  - a. Climb points and Corner modifiers are not included in the calculation of an Alliance's score for the purposes of determining the Autonomous Bonus.
  - b. If the Autonomous Period ends in a tie, including a zero-to-zero tie, each Alliance will receive an Autonomous Bonus of 3 points.
- #vex-rule[SC8] An Autonomous Win Point is awarded to any Alliance that ends the Autonomous Period with the following tasks completed, and that has not broken any rules during the Autonomous Period:
  - 1. At least 3 Scored Rings of the Alliance's color
  - 2. A minimum of 2 Stakes on the Alliance's side of the Autonomous Line with at least 1 Ring of the Alliance's color Scored
  - 3. Neither Robot contacting / breaking the plane of the Starting Line
  - 4. At least 1 Robot contacting the Ladder
  - Note: Autonomous Win Point criteria will be slightly modified for events that qualify directly to the World Championship. The modified criteria will be released on September 3, 2024.

= Match Scoring Summary
#set text(14pt)
#show table.cell.where(y: 0): strong

#table(
  columns: 2,
  fill: (_, y) =>
    if y == 0 {
      gray
    },

  table.header([Achievement], [Point Value]),
  
  [Autonomous Bonus], [6 Points],
  [Each Ring Scored on a Stake], [1 Point],
  [Each Top Ring on a Stake], [3 Points],
  [Ring Scored on High Stake], [2 additional points to each alliance robots successful climb],
  [Climb - Level 1], [3 Points],
  [Climb - Level 2], [6 Points],
  [Climb - Level 3], [12 Points],
  [Each Ring Scored on a Mobile Goal Stake that has been Placed in a Corner], [See #vex-rule[SC6] in our Mobile Goal Analysis],
)

#colbreak()

= Robot Skills Challenge
#set text(11pt)
#align(center)[
  #rotate(
    90deg,
    reflow: true,
    image("/assets/field-elements/skills-field.png", width: 248pt)
  )
]

Skills is a version of the VEX Robotics Challenge where you score as many points on the possible without anyone else on the field for 1 minute, either driver controlled or autonomously controlled.

== Robot Skills Challenge Rules
+ #vex-rule[RSC3] Robots must start the Robot Skills Match in a legal starting position for the red Alliance
+ #vex-rule[RSC4] Teams may only utilize the blue Rings as Top Rings on Stakes
+ #vex-rule[RSC5] Any red Ring Scored above a blue Ring on the same Stake will not have a point value
+ #vex-rule[RSC6] If any Ring is Scored on a Stake but does not have a point value based on rule #vex-rule[RSC4] or #vex-rule[RSC5], no Ring on that Stake will earn points as a Top Ring.
+ #vex-rule[RSC7] No Corner Modifiers. Each Mobile goal Placed in a Corner will receive 5 points.

== Robot Skills Challenge Scoring
#show table: it => align(center, it)
#table(
  columns: 2,
  fill: (_, y) =>
    if y == 0 {
      gray
    },

  table.header([Achievement], [Point Value]),
  
  [Each Ring Scored on a Stake], [1 Point],
  [Each Top Ring on a Stake], [3 Points],
  [Ring Scored on High Stake], [2 additional points to a successful climb],
  [Climb - Level 1], [3 Points],
  [Climb - Level 2], [6 Points],
  [Climb - Level 3], [12 Points],
  [Mobile Goal Placed in a Corner], [5 Points],
)