#import "/template/template.typ": *

#show: create-entry.with(
  title: "Loader v1",
  type: "identify",
  date: datetime(year: 2025, month: 11, day: 15),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Eric",
  witnessed: "Rory",
)
#to-do(
  date: datetime(year: 2025, month: 11, day: 15),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Identify the goals and constraints of the loader mechanism for this season.", "Everyone"),
    (true, "Understand the mathematical and engineering principles behind the creation of the loader mechanism", "Everyone"),
  )
)

Today we had a meeting, during which we discussed the implementation of an loader mechanism and identified the needs, goals, and constraints for this mechanism.

#figure(
  image("identify-loader.excalidraw.svg", width: 50%),
  caption: "The loader mechanism allows us to collect game elements from the loader. It can create an important plane that will allow the smooth transitioning of a block from the loader to the intake of the robot and in a way that is proper for scoring."
)

#table(
  columns: (1fr),
  rows: 4,
  align: left + top,

  table.header(table.cell(fill: gray, align: center)[*Aspects of the Loader Mechanism*]),
  [*Shape* - The shape of the mechanism is very important as the blocks are not a regular type of shape, and to get them from the loader will be even more difficult. The shape needs to be able to both be big enough to cover the block, and have enough of a dig to get the block into the intake.],
  [*Size* - The loader mechanism size has to be taken into consideration when thinking about the entire robot as if it is too big it will hinder the other subsystems. If the size is too small it will not be able to properly hold the block and bring it into the intake.],
  [*Grip* - A grip on the blocks is very important for getting the blocks out of the loader effectively as without grip the blocks won't even get out of the loader.],
)

#colbreak()

#goals-constraints(
  goals: [
    - The loader mechanism can effectively grip the blocks inside the loader.
    - The loader mechanism can use enough force to bring the blocks out of the loader.
    - There is control over the loader taking the blocks out and bringing it into the front stage of the intake.  
    - The loader mechanism does not hinder any other subsystem.

  ],
  constraints: [
    - #vex-rule[R5] Robots must fit within an 18” x 18” x 18” volume
   - #vex-rule[R25] Each Robot is limited to a maximum of 12 individual pieces of plastic, each one no larger than 4” x 8” x 0.070”.
  - #vex-rule[R26] Robots may use a maximum of two (2) legal VEX pneumatic air reservoirs on a Robot and each may be charged to a maximum of 100 psi.

  ],
)