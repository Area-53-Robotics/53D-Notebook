#import "/template/template.typ": *

#show: create-entry.with(
  title: "Game Challenge - Strategy Analysis",
  type: "identify",
  date: datetime(year: 2024, month: 4, day: 30),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Ishika",
  witnessed: "Ishika",
)

= Theoretical Maximum Score
We experimented with the VRC Hub app to determine what the maximum possible score would be in a round, and the objectives that are needed to obtain it. This allowed us to determine which objectives provide the most points, which will be critical when determining our overall robot plan.

#show table.cell.where(y: 0): strong
#show table.cell.where(y: 13): strong

#table(
  columns: 3,
  fill: (_, y) =>
    if y == 0 {
      gray
    } else if y == 13 {
      gray.lighten(30%)
    },

  table.header([Objective], [Rings/Climb Level], [Points]),

  [Autonomous Bonus], [N/A], [6],
  [Alliance Wall Stake], [1 Ring], [3],
  [Wall Stake 1], [1 Ring], [3],
  [Wall Stake 2], [1 Ring], [3],
  [Mobile Goal 1], [6 Rings (Positive Modifier)], [16 (8 ring points doubled due to corner modifier)],
  [Mobile Goal 2], [6 Rings (Positive Modifier)], [16 (8 ring points doubled due to corner modifier)],
  [Mobile Goal 3], [6 Rings], [8],
  [Mobile Goal 4], [1 Rings], [3],
  [Mobile Goal 5], [1 Rings], [3],
  [Ladder Stake], [1 Ring], [3],
  [Robot Climb 1], [3rd Level], [14 (12 climb points + 2 ladder stake bonus points)],
  [Robot Climb 2], [3rd Level], [14 (12 climb points + 2 ladder stake bonus points)],
  [Total], [], [92]
)

#grid(
  columns: 2,
  align: center + horizon,
  image("/assets/field-elements/theoretical-maximum-score.png", width: 70%),
  pie-chart(
    radius: 3.3,
    data-type: "pts",
    (
      ("Auton Bonus", 6),
      ("Wall Stakes", 9),
      ("Mobile Goals", 30),
      ("Corner Modifiers", 16),
      ("Climb", 24),
      ("Ladder Stake", 7),
    ),
  ),
)

= Scoring Observations
- Scoring rings on the mobile goals is the most efficient way to earn points during the game.
- Climbing is one of the biggest factors in this year's game and getting at least a first tier climb should be a priority.
- Using the four corners for strategy is very efficient in both doubling the points of your rings and lowering the points of your opponents' rings.
- The stakes on the top of the ladder and on the walls are hard to reach, but will likely be important tiebreakers in close rounds.

= Potential Strategies
+ In order to achieve the theoretical highest score possible, scoring rings on mobile goals is the fastest method. The most efficient plan would be to entirely load two mobile goals and place them in the positive corners before placing rings on as many wall stakes as possible.

+ Elevation is important, the theoretical maximum score is very low this season and almost a third of the maximum possible points are in relation to climbing. We could build a passive clamp so that during the last few seconds of the match, we could easily obtain a tier one climb.

+ Since most teams will be rushing for mobile goals we will need a speedy yet powerful robot to take and hold on to goals to score points while having enough space for other important mechanisms.