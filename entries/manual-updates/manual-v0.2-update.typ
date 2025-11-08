#import "/template/template.typ": *

#show: create-entry.with(
  title: "Game Manual v0.2 Update",
  type: "identify",
  date: datetime(year: 2025, month: 6, day: 1),
  attendance: ("Ishika", "Makhi", "Rory", "Eric"),
  designed: "Ishika",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2025, month: 6, day: 1),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Identify changes made to the rules manual and how they affect our gameplay.", "Everyone"),
  ),
)

#set table(
  columns: 2,
  fill: (_, y) =>
    if y == 0 {gray.lighten(20%)}
)

= Manual Changes
== Robot Design
#table(
  table.header([Change], [Significance]),

  [
    Revised wording of #vex-rule[R6ai] and #vex-rule[R6b] to clarify intent:
    - “License plates should be mounted in locations that remain stationary on the Robot during a Match (e.g., not on a rotating intake or flipping manipulator).”
    - “VEX IQ pins are no longer legal for mounting license plates on robots”

  ],
  [
    Our team doesn’t use VEX IQ mounting pins, but other teams that do will have to figure out new mounting options. Additionally, we will have to move our robot’s license plate, so that it is not on a moving surface (like it was last year).
  ],
  [
    Updated #vex-rule[SG2] and #vex-rule[SG3] to clarify vertical and horizontal expansion limits:
    - “The Robot can never be larger than 22" wide or 22" long (must always be able to fit within a hypothetical 22"x22"x22" cubic sizing box).”

  ],
  [
    We will have to make efficient use of space, and ensure that our robot fits within the newly clarified sizing requirements.
  ]
)

== Scoring
#table(
  table.header([Change], [Significance]),

  [
    Revised #vex-rule[SC2] to clarify that Blocks must be in contact with the inside surface(s) of the plastic trough to be considered as Scored

  ],
  [
    Unlike last year (High Stakes), where rings could be scored even when they weren’t contacting a stake, blocks this year must be in contact with a trough to be considered scored. This will impact our strategy and scoring options.

  ],
  [
    Added a bullet to #vex-rule[RSC2b] to clarify intent:
    - “In a Robot Skills Match, seven (7) Blocks constitute a filled Control Zone in a Center Goal.”
  ],
  [
    During skills matches, we will need to score more blocks than normally to get the control zone bonus.
  ]
)
#colbreak()
== Gameplay 
#table(
  table.header([Change], [Significance]),

  [
    Updated the definition of Lifting to clarify intent:
    - “Preventing a Robot that is already off of the Floor from returning to the Floor may also be considered Lifting or Trapping.”
  ],
  [
    There will be more situations when a particular robot could be considered “lifting” another robot, potentially leading to more violations.
  ],
  [
    Updated #vex-rule[SG10] to clarify intent:
    - “Robots are not permitted to directly contact Blocks that are fully within enclosed sections of Long Goals, but may add or remove Blocks from open sections of Goals at any time during a Match.”
  ],
  [
    Some mechanism ideas that would use a long tool to manipulate blocks in the enclosed sections of goals would no longer be allowed. We were not originally planning to do this, so it is not applicable to us.
  ],
  
)


== Important Q&As


#qa-table(
  question: [
    “Scenario A: A blue robot is defending a goal by blocking one end to prevent red from descoring blue blocks. A red robot forcefully pushes or rams the blocks on the other end of the goal to descore them. This force is transferred through all of the blocks in the goal and into the blue robot on the other end, causing it to tip over.
    Scenario B: Same as Scenario A, except instead of solely descoring, the red robot forcefully rams/pushes red blocks into the goal, tipping the blue robot. This makes red an offensive robot.
    For both scenarios, is each a violation of GG18 or "Incidental tipping ... as a part of normal gameplay" as described in GG14?”
  ],
  answer: [
    “The scenarios you describe would be considered incidental tipping as a part of normal gameplay.”
  ],
  significance: [
    If we find ourselves in one of the situations listed (or a similar one), we don’t need to worry about accidentally violating this rule. Additionally, we could use this to our advantage to attempt to intentionally tip a robot, by pushing it with blocks in a goal.
  ]
)

#colbreak()

#qa-table(
  question: [
    “Would a robot being fully supported by a block that does not touch the Park zone plastic pieces or tile within but only breaking the plane whilst being supported by said block meet the criteria as parked. So my question is, is using the block to support the robot off the ground count as parking or meeting the SC4 parked criteria, is the contact of the block transitive to the robot and ground outside the park zone?”
  ],
  answer: [
    “A Robot that is supported by and/or in contact with one or more Blocks can still qualify as Parked if all of the criteria of rule #vex-rule[SC4] are met. Contact with Field Elements other than those specified in clause B negates a Robot's Parked status, but contact with Blocks does not.”

  ],
  significance: [
   If there are blocks located within our park zone, we don’t have to worry about clearing them out if we know we can still successfully park on top of them. We could also strategically use this to potentially lift one robot and make it easier to park.
  ]
)

= Future Implications for the Robot
+ We will have to modify the design/CAD of our robot to satisfy the updated rules, namely #vex-rule[SG2], #vex-rule[SG3], and #vex-rule[R6b]. Specifically, our bot must fit within a 22” cube when fully expanded. Our license plate must also be on a part that doesn’t move relative to the robot throughout a match.
+ During gameplay we can be more aggressive with scoring, even when defended. This is because it is not a violation to tip a bot while it is defending a goal, as long as it is tipped by pushing blocks through said goal. However, we will have to be more careful when a bot is in the air, because if we prevent it from touching the ground it could be considered “lifting.”
+ During skills matches, our scoring strategy will have to change since we will need 7 blocks to control a long goal. This will mean we will have to devote more time to scoring these blocks, if we want to get the point bonus.

