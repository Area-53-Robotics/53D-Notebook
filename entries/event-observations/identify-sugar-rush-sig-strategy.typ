#import "/template/template.typ": *

#show: create-entry.with(
  title: "Sugar Rush Signature Event - Strategy",
  type: "identify",
  date: datetime(year: 2025, month: 01, day: 05),
  attendance: ("Rory", "Eric", "Anders", "Makhi"),
  designed: "Anders",
  witnessed: "Ishika",
)

After observing the Sugar Rush Tournament, we became interested in analyzing and documenting the strategies we witnessed. We took detailed notes on both autonomous routines and match strategies, identifying key tactics that could be beneficial for our future competitions.

= Autonomous Strategies
#grid(
  columns: (1fr,1fr),
  row-gutter: 10pt,
  column-gutter: 10pt,

  grid.cell[
    #figure(
      image("identify-sugar-rush-sig/strategy-1.png", width: 220pt),
      caption: [
        End result of Quarterfinals #2-1 \
        Red: 6121F, 842T \
        Blue: 12C, 727R \
        Auton winner: Red alliance
      ]
    )
  ],
  grid.cell[
    == What We Noticed
    - None of the robots had a mobile goal rush mechanism.
    - 12C took the mobile goal that was on the autonomous line but did not score a ring.
    - 6161F was able to mess up the ring stack.
    - Even though the blue alliance had a color sort, since their auton path was messed up, their auton did not score any points.
  ],
  grid.cell[
    #figure(
      image("identify-sugar-rush-sig/strategy-2.png", width: 220pt),
      caption: [
        End result of Semifinals #2-1 \
        Red: 70407R, 6842K \
        Blue: 9039H, 2072A \
        Auton winner: Red Alliance
      ]
    )
  ],
  grid.cell[
    == What We Noticed
    - Both robots on the mobile goal side of the field have a mobile goal rush mechanism. The team who successfully stole the mobile goal won.
    - If you miss a part of your auton due to interference, such as a ruined ring stack, then your entire path is ruined.
    - 2072A had a ring mechanism that allowed them to ruin the ring stack.
    - Upsetting the enemy team's auton is important.
  ],
)

#colbreak()

= Driver Control Strategies
#grid(
  columns: (1fr,1fr),
  row-gutter: 10pt,
  column-gutter: 10pt,

  grid.cell[
    #figure(
      image("identify-sugar-rush-sig/strategy-3.png", width: 220pt),
      caption: [
        End result of Finals 1 \
        Red alliance: 5956B, 11777C \
        Blue alliance: 2775V, 4610C \
        Winner: Red Alliance
      ]
    )
  ],
  grid.cell[
    == What We Noticed
    - 5956B swept the positive corner.
    - The red alliance was able to pass mobile goals to each other.
    - It's better to have more control of mobile goals than having control of a positive corner.
    - When an enemy alliance has a positive corner, try to tip the mobile goal.
    - Scoring on the neutral wall stakes is very important.
  ],
  grid.cell[
    #figure(
      image("identify-sugar-rush-sig/strategy-4.png", width: 220pt),
      caption: [
        Results of Finals 2 \
        Red Alliance: 12C, 727R \
        Blue Alliance: 9039H, 2072A
      ]
    )
  ],
  grid.cell[
    == What We Noticed
    - 9039H struggled to control a positive corner because they did not have a corner sweeper.
    - When the positive corners are getting guarded, it is the other robot's job to fight for the neutral wall stakes.
    - In the last 15 seconds, teams still held onto the mobile goals to prevent the enemy team from stealing them.
  ],
)

= Observations
- During auton, ring rush autons could upset the positioning of field elements, causing unpredictable results in autonomous rounds.
  - This led to examples of mobile goals filled with a mix of red and blue rings, which highlights the need for a color sorting function in our code.
- All teams focused on the positive corners first.
  - Afterward, one alliance member would focus on scoring on mobile goals and the wall stakes.
- There is an emphasis on high quality driver practice.