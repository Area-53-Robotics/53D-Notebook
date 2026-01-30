#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v1",
  type: "identify",
  date: datetime(year: 2025, month: 8, day: 30),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Eric",
  witnessed: "Rory",
)
#to-do(
  date: datetime(year: 2025, month: 8, day: 30),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Identify the goals and constraints of the intake mechanism for this season.", "Everyone"),
    (true, "Understand the mathematical and engineering principles behind the creation of the intake", "Everyone"),
  )
)

Today we had a meeting, during which we discussed the implementation of an intake and identified the needs, goals, and constraints for this mechanism.

#figure(
  image("Identify-intake.excalidraw.svg", width: 50%),
  caption: "The intake allows us to collect game elements from the field. It can grab, hold, and pull objects into the robot, making it easier to transport them for scoring. The intake enables us to quickly secure multiple game elements while maintaining control during movement."
)

#table(
  columns: (1fr),
  rows: 4,
  align: left + top,

  table.header(table.cell(fill: gray, align: center)[*Aspects of the Intake*]),
  [*Size* - This year’s game has no posession limit, which means that there is no limit to the amount of blocks a robot can hold at a time. This will usually result in strategies where teams collect a lot of blocks in the beginning, storing it, and then scoring them as the matchplay progresses. The size of the intake is imperative for this because if the intake is too small the team will be stuck searching for blocks or waiting for them to be loaded into the loader before scoring them.],
  [*Speed* - This year’s game is based on speed, who can control the goals the fastest. The intake needs to have the aspect of speed when scoring blocks, picking them up, and trying to control the goals. Without speed, a team will have a hard time controlling the scores and being able to recover whenever a descore happens.],
  [*Grip* - A grip on the blocks is very important for matchplay as without a proper grip the intake will not be efficient or accurate. The blocks this year have an odd polygonal shape with flat faces which is much different from previous years and requires an intake shape that supports the shape of the block. ],
)

#colbreak()

#goals-constraints(
  goals: [
    - The intake can effectively score all the block that have been stored in the robot. 
    - The intake moves with a limited amount of constraint.
    - There is plenty of control over the blocks, and the scoring of the blocks. 
    - The balls intaked is higher than the balls that have slipped from the intake.

  ],
  constraints: [
    - #vex-rule[R5] Robots must fit within an 18” x 18” x 18” volume
    - #vex-rule [R12] Robots may use any combination of VEX V5 Smart Motors (11W) (276-4840) and Smart Motors (5.5W) (276-4842)
    - #vex-rule[SG6] A Robot may carry, push, or plow an unlimited number of Blocks

  ],
)