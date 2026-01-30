#import "/template/template.typ": *

#show: create-entry.with(
  title: "Game Manual v1.0 Update",
  type: "identify",
  date: datetime(year: 2025, month: 6, day: 28),
  attendance: ("Ishika", "Makhi", "Rory", "Eric", "Anders", "Samia"),
  designed: "Anders",
  witnessed: "Makhi",
)
#to-do(
  date: datetime(year: 2025, month: 6, day: 28),
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
== Scoring
#table(
  table.header([Change], [Significance]),

  [
    Added a new subclause to #vex-rule[RSC2] to clarify that Blocks contacting a Robot at the end of a Robot Skills Match should not be considered as Scored

  ],
  [
    We will have to ensure that the robot stops touching blocks at the end of a match, so that they can still count towards our score.
  ],
)

== Gameplay 
#table(
  table.header([Change], [Significance]),

  [
    Added a bullet to #vex-rule[RSC3] to clarify that Robot Skills Matches do not include Match Load Blocks:
    -  Skills Matches do not include Match Load Blocks, and Blocks that leave the Field are not returned.

  ],
  [
    Since our score will not be boosted by match loaded blocks, we will need to be more strategic with our scoring during skills matches. We will also have to be careful to not accidentally send blocks out of the field.
  ],
  [
    Updated #vex-rule[T1e] to clarify that Head Referees must follow the rules in the game manual:
    - "Head Referees must follow the rules in this game manual and the Q&A, and must make rulings consistent with the intent of the game manual and Q&A."

  ],
  [
    This rule clarifies that head referees must be impartial and follow the game manual. We will have to be familiar with the game manual, so we can understand why head referees make certain rulings.
  ]
  
)

#colbreak()
== Important Q&As


#qa-table(
  question: [
    “
Scenario: A Robot is attempting to remove Blocks from a full Loader with 6 Blocks in it. As the Robot extends into the Loader to retrieve Blocks, one or more of the Blocks near the top of the Loader pop up and fall out of the Field. An example of this scenario occurs at approximately 2:38:35 of this video at the bottom-left Loader of the screen: #link("https://www.youtube.com/live/tgUlpMw_tzA?si=Z5zzyf_2M77x6t07")

Which, if any, of the following outcomes would be appropriate for this scenario with respect to SG4 Violation Note 1?
Since the Robot is attempting to retrieve Blocks from the bottom of the Loader, the Blocks exiting the top of the Loader out of the Field is an unintentional action. Since the first sentence of SG4 prohibits intentional or strategic Block removal, this scenario should not result in a Major or Minor Violation counted towards the 3 Matches before a Major Violation.
The actions of the Robot caused the Block to exit the Field, so this action should be considered intentional and result in a Minor Violation that counts towards the 3 Matches before a Major Violation.
Would some other scenario apply? Would the color of the Robot and the Block being removed matter? SG4 does not specify Block color, so I would assume no, but would appreciate confirmation.
Which, if any, of the following outcomes would be appropriate for this scenario with respect to SG4 Violation Note 2?
If the Block is ruled to be unintentionally leaving the field, the Block should not count towards one of the 3 in a Match before a Major Violation is issued.
Violation Note 2 does not differentiate between intentional and unintentional removal of Blocks from the Field, so any Block removed in a Match should count towards the 3 that would result in a Major Violation.
Would some other scenario apply? Would the color of the Robot and the Block being removed matter?
  ],
  answer: [
    In your scenario, the Block leaves the Field in a way that would not generally be considered intentional or strategic. This scenario should not be considered a Violation, and should not count toward the Match or Block counts in the first two Violation Notes for <SG4>. To clarify this, Violation Note 2 will be updated to read, "Any Team that intentionally or strategically removes three (3) or more Blocks from the Field in a single Match will receive a Major Violation."

    However, if the Head Referee determines that the action was intentional or strategic, it should be considered a Major or Minor Violation and all Violation Notes will apply.

  ],
  significance: [
    We won’t have to worry about inadvertently removing blocks from the field during matches. Since it would be accidental and not strategic, we can play more offensively without the risk of incurring a violation. However, we should still try to not send blocks out of the field, because then they will not count towards our final score.
  ]
)

#colbreak()

#qa-table(
  question: [
    "#vex-rule[SG3] states: "No part of the Robot may exceed an overall height of 22" at any point during the Match (must always be able to fit within a hypothetical 22" x 22" x 22" cubic sizing box)."
    Is the "overall height" with reference to the Floor or to the lowest point on the Robot? Also, does it rotate with the Robot? I.e., does the hypothetical cube need to remain in contact with the Floor, and can it rotate such that the bottom plane isn't parallel with the Floor?
    The confusion behind this rule comes from the change in Figure SC4-2 between Game Manuals V0.1 (left image) and V0.2 (right image). Some teams think that the Figure was updated because "overall height" is with reference to the field tiles. However, clause #vex-rule[SG3b] which specifies this was deleted in the in Game Manual V0.2. Figure SC4-2 from Game Manual V0.2 also has the Robots on an angle suggesting that the hypothetical cube rotates with the Robot.""

  ],
  answer: [
    The "overall height" is in reference to the lowest point on the Robot, and rotates with the Robot. If the Robot can always fit within a 22" cubic volume, it meets the requirements of rule #vex-rule[SG3], whether it's in contact with the Floor or not.

  ],
  significance: [
   We will have to measure our robot from the lowest point, which will likely be its wheels. This limits our total expansion size, so we will have to use our space efficiently.
  ]
)

= Future Implications for the Robot
+ We will have to focus on our scoring techniques and strategies for all matches, and skills matches especially. We now know that blocks in match loaders, as well as blocks that have left the field, will not count towards our final score. This means we will have to find other ways to increase our score in matches. doesn’t move relative to the robot throughout a match.
+ We will not have to worry about accidentally sending blocks out of the field. As this wouldn’t be intentional/strategic, we would not incur a violation if it happens. This will give us time to focus on other things, like driving or autonomous practice.
+ Our robot’s size will be limited to a 22 inch cubic volume at all times, even if it is not in contact with the floor. This means we will have to use our space efficiently since it is constrained by this rule.

