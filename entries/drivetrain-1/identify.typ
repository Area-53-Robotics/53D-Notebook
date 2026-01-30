#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1",
  type: "identify",
  date: datetime(year: 2025, month: 8, day: 02),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Ishika",
  witnessed: "Makhi",
)

Our team spent a lot of time talking and planning the foundation of our robot: the drivetrain. The drivetrain's shape determines what other subsystems we can build in the future, making it critical. However, before getting into the technical aspects, we figured out how the drivetrain fits into our overall game plan, ensuring it helps us do well in the competition.

#figure(
  image("drivetrain-identify.excalidraw.svg", width: 50%),
  caption: "The drivetrain allows us to traverse the field. We can go straight, back, left, right, and freely move in any direction. We can also use the drivetrain to get across the middle ladder."
)

#table(
  columns: (1fr),
  rows: 4,
  align: left + top,

  table.header(table.cell(fill: gray, align: center)[*Aspects of the Drivetrain*]),
  [*Mobility* - It enables the robot to move in different directions. This includes forward and backward motion and strafing or lateral movement.],
  [*Versatility* - Different drivetrain setups, such as tank drive, holonomic (omni-directional) drive, or mecanum drive offer varying levels of maneuverability and are suited to different game strategies.],
  [*Foundation* - The drivetrain serves as the robot's base, so its weight will be distributed on top of the drivetrain. Proper weight distribution is crucial for maintaining stability and preventing tipping during rapid movements or when interacting with game elements.],
)

#colbreak()

#goals-constraints(
  goals: [
    - A speed equal to or faster than 64.795 in/s (450 RPM on 2.75" wheels)
      - This game will likely require faster movement than Over Under, so we want a drivetrain speed similar to or higher than last year.
    - To maintain 75% of its top speed when 2.25 lbs of mass are placed on it
      - The drivetrain will need to remain fast while supporting the weight of other subsystems on the robot.
    - To be able to drive continuously for 2 minutes without the drivetrain motor temperatures rising above 55 $upright(°C)$
      - VEX motors automatically #footnote[https://www.vexforum.com/t/v5-motor-current-limit-vs-temperature/107172] cut their maximum motor current in half at 55 $upright(°C)$, so we need the motors to remain below this threshold throughout the entire match.
    - To be able to push 6.65 lbs of mass
      - Most robots will have at least this much mass, and we need to be able to push them or stall them for defensive strategies.
  ],
  constraints: [
    - #vex-rule[R5] Robots must fit within an 18" x 18" x 18" volume
      - To fit other subsystems, the drivetrain will have to be constrained further than this. These are the preliminary size limits we came up with:
        - Length: 16 in
        - Width: 16 in
        - Height: 6 in
    - #vex-rule[R12] Motors are limited to a combined power of 88W
      - Our other subsystems will need power, so we will preliminarily limit our drivetrain's power draw to 44W.
  ],
)