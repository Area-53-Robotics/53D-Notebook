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

  table.header([Objective], [Number of Blocks], [Points]),

  [Autonomous Bonus], [N/A], [10],
  [First Long Goal], [15 blocks], [45],
  [Second Long Goal], [15 blocks], [45],
  [First long goal controlled], [N/A], [10],
  [Second long goal controlled], [N/A], [10],
  [Lower center goal], [7 blocks], [21],
  [Upper center goal ], [7 blocks], [21],
  [Lower center goal controlled], [N/A], [6],
  [Upper center goal controlled], [N/A], [8],
  [2 robots parked], [N/A], [30],
  [Total], [], [206]
)

#grid(
  columns: 2,
  align: center + horizon,
  image("/assets/field-elements/theoretical-maximum-score.png", width: 60%),
  pie-chart(
    radius: 3.3,
    data-type: "pts",
    (
      ("Auton Bonus", 10),
      ("Block Scored", 3),
      ("Controlled Long Goal", 10),
      ("Controlled Upper Goal", 8),
      ("Controlled Lower Goal", 6),
      ("One Parked Robot", 8),
      ("Two Parked Robots", 30),
    ),
  ),
)

= Scoring Observations
- The long goals make up a majority of the maximum points possible (53.4% combined).
  - This means we should definitely prioritize controlling and scoring in these goals.
- The center goals make up about half as many points as the long goals (27.2% together).
  - So, we should prioritize them somewhat, but not as much as the long goals.
- If we manage to park both robots, it makes up about 14.6% of the total, but if only one robot is parked, this decreases to only 3.9%.
  - Thus, we should only focus on parking if we are sure that both robots will successfully park.
- Finally, the autonomous bonus only makes up 4.9% of the maximum possible points, which isn’t very much.
  - However, having a strong autonomous period sets up the field in your favor, so it should still be one of our main targets.


= Potential Strategies
+  Since there is no possession limit, we could potentially steal all of the other alliance’s blocks. This would prevent them from scoring, and allow us to still get points at the end with parking.

+  We could also consider blocking the other alliance from scoring. If our bots are fast enough, we could push other robots out of the way before they get the chance to score. Additionally, i

+ Finally, we could gain control over the goals by scoring blocks in them. If we manage to fill up all (or almost all) of the goals, it would be quite difficult for the other alliance to de-score them.   