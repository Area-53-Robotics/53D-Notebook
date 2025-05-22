#import "/template/template.typ": *

#show: create-entry.with(
  title: "Game Manual v1.0 Update",
  type: "identify",
  date: datetime(year: 2024, month: 7, day: 1),
  attendance: ("Ishika", "Makhi", "Rory", "Eric"),
  designed: "Ishika",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2024, month: 7, day: 1),
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
== Field Setup
#table(
  table.header([Change], [Significance]),

  [
    Changed the Field layout such that Positive Corners and Negative Corners are now on the same side of the Field, rather than cater-cornered
  ],
  [
    This rule change changes the positioning of the positive and negative corners. Corners of the same type are now adjacent to eachother instead of diagonally across from eachother. This will promote more aggressive games.  
  ]
)

== Scoring
#table(
  table.header([Change], [Significance]),

  [
    Expanded #vex-rule[SC3] to clarify that Rings can only be counted for points once, even in situations where they qualify as Scored on multiple Stakes
  ],
  [
    More clarification on how rings are scored helps to determine if a ring is correctly scored on a mobile goal.
  ]
)

== Gameplay 
#table(
  table.header([Change], [Significance]),

  [
    Added a new rule, SC9>, that adds a 2-point bonus per Climb for whichever Alliance has a Rings Scored on the High Stake at the end of a Match
  ],
  [
    This gives an incentive to try and score a ring on the high stake. Previously, we felt that scoring on the high stakes was not worth the effort because it did not earn us enough points to justify the extra weight and material needed to build a subsystem that could reach that high.
  ],
  [
    Updated #vex-rule[SG2] to clarify that Robots may expand beyond their starting size and configuration
  ],
  [
    We now have more leeway with how we want to expand. This rule intends to limit horizontal expansion in a way that can be easily interpreted by Head Referees during a Match and assessed by Robot inspectors. 
  ],
  [
    Added an additional Violation Note to #vex-rule[SG4] to state that a Team will receive a Major Violation for removing three (3) or more Rings from the Field in a single Match
  ],
  [
    This adds more risk for scoring on the wall stakes. Since scoring on the wall stakes requires precision and for the robot to horizontally expand, it is common for rings to fall off wall stakes mechs.
  ],
  [
    Updated #vex-rule[SG9] to clarify that Teams cannot negate an opponent's Climb by contacting their Robot with a Mobile Goal
  ],
  [
    Similar to last season, we have more protection from interference while we climb.
  ],
)


== Important Q&As


#qa-table(
  question: [
    "Can a preload be placed in a position such that it is 'encircling' the alliance wall stake, but not touching the stake?
    #vex-rule[SG5] states that the preload cannot be in a 'scored' position. However, as the preload is touching the robot, #vex-rule[SC3a]. states that the ring does not count as scored (so it is not possible for a preload to be in a 'scored' position).
    Therefore, should contact with a robot be ignored for determining the legality of a preload per #vex-rule[SG5]?"

    #image("manual-v1-update/ring-encircle-stake.jpg", height: 150pt)
  ],
  answer: [
    "Thank you for your question! Clause C of rule #vex-rule[SG5] will be revised in the next game manual update to read as "Not contacting or encircling a Stake or any other Scoring Objects."
  ],
  significance: [
    More clearance regarding how the rings are scored on the stakes. Before, if a ring was not touching a stake but instead encircling it, there was a uncertainty regarding whether it was properly scored.
  ]
)

#colbreak()

#qa-table(
  question: [
    "SG6: Plowing an additional Mobile Goal while also Possessing one is considered a Violation of this rule due to the extremely high likelihood of accidental/implied Possession.

    Plowing #sym.dash.en A Robot / Scoring Object status. A Robot is considered to be Plowing a Scoring Object if the Robot is intentionally moving it in a preferred direction with a flat or convex face of the Robot

    If one robot is possessing a mobile goal (A) and pushing another mobile goal (B) with the face of the possessed mobile goal (A), the robot is not touching mobile goal (B). Based on the SG6 and the definition of plowing, I think this scenario is legal since the robot is not contacting the mobile goal (B), so the robot is not plowing an additional mobile goal while possessing one. Am I right?"

    #image("manual-v1-update/mogo-plowing.png")
  ],
  answer: [
    "Thank you for your question! The definition of Plowing will be revised in an upcoming game manual update to read:
	  
    Plowing #sym.dash.en A Robot / Scoring Object status. A Robot is considered to be Plowing a Scoring Object if the Robot is intentionally moving it in a preferred direction with a flat or convex face of the Robot, or with another Scoring Object."
  ],
  significance: [
    This is a significant change to gameplay. We cannot intentionally move a second mobile goal while we still possess a mobile goal. 
  ]
)

#qa-table(
  question: [
    "#vex-rule[T10g] states, 'The Rotation of Mobile Goals is not specified.'
    
    Because Mobile Goals have an unspecified rotation, would it be permissible for a team to, with the permission of the Head Referee, adjust the rotation of a Mobile Goal to a desired orientation prior to the start of a Match? Or, rather, is this a scenario for which teams should 'design their Robot accordingly'?"
  ],
  answer: [
    "Thank you for your question. Based on game play at early events, clause G of rule #vex-rule[T10] will be revised to read,
	  
    Mobile Goals should be positioned with flat edges facing the audience and Head Referee sides of the Field (as shown in figures throughout the game manual), with minor variance in rotation.
    
    Teams should only request adjustments to Mobile Goal positions if they are significantly misaligned (e.g., flat edges are facing the Alliance Stations) or are more than 1" away from their intended locations. Teams must design their Robots to accommodate minor differences in rotation and position.
    
    This update will be reflected in the next game manual update, and this Q&A will be deleted at that time."
  ],
  significance: [
    We cannot change the orientation of a mobile goal to one in our favor before the start of a match. We can only request changes if a mobile goal is significantly misaligned.
  ]
)

= Future Implications for the Robot
+ Even though scoring on the high stake will result in additional points while climbing, we do not believe it is enough points to justify trying to score on the high stake.
  + Firstly, getting a subsystem to reach that height will increase our robot's center of gravity, making it easier to be tipped over or pushed.
  + Secondly, it is only an additional three points. Since we cannot skip layers, we are realistically only going to be reaching a tier 1 climb which is 6 total points.
+ We cannot plow more than one mobile goal. Something that we noticed in the previous version of the game manual is that if we pushed a group of mobile goals, we could get more control. This is no longer possible.
+ The new field changes will hopefully facilitate us playing aggressively to take a positive corner while still being close enough to defend if needed a different corner if needed.