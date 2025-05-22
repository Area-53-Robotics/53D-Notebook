#import "/template/template.typ": *

#show: create-entry.with(
  title: "Odometry v1",
  type: "identify",
  date: datetime(year: 2024, month: 11, day: 22),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Ishika",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2024, month: 11, day: 22),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Identify the design goals and constraints for odometry.", "Everyone"),
    (true, "Determine the mathematical and scientific concepts involved in odometry.", "Everyone"),
  )
)

During the autonomous phase of a match, the robot can only move using pre-programmed commands and information provided by sensor data. An odometry system determines the 2-D position of the robot in real-time during the match, allowing the robot to act on that information autonomously.

#admonition(type: "note")[
  "Odometry" and "position tracking" technically mean the same thing: estimating the change in position of the robot over time. However, we will define "position tracking" using the aforementioned definition, and define "odometry" as encompassing both "position tracking" and algorithms that operate using data produced by the position tracking system.
]

#figure(
  image("identify-odometry.excalidraw.svg", width: 50%),
  caption: "A mobile goal clamp helps us quickly and reliably pick up mobile goals and transport them to scoring zones."
)

#colbreak()

#table(
  columns: (1fr),
  align: left + top,

  table.header(table.cell(fill: gray, align: center)[*Aspects of Odometry*]),

  [*Absolute Information* - Using odometry, the horizontal position, vertical position, and orientation of the robot can be calculated as absolute values (based on their initial values at the beginning of the match) instead of relative values calculated as summations of the changes in these values throughout the match.],
  [*Autonomous* - Odometry is mostly used for the autonomous phase of a match and programming skills, where the robot has to move on its own without driver input.],
  [*Auto-Correcting Movement* - Using the position data produced by a position tracking system, the robot can account for disturbances (such as a robot or game element) during its autonomous movement that push the robot off-course.],
)

#goals-constraints(
  goals: [
    - The position tracking system must keep track of the xy-coordinates and orientation of the robot.
    - The x and y coordinates reported by the position tracking system must maintain #sym.plus.minus 2 in. accuracy for 1 minute
    - The orientation reported by the position tracking system must maintain #sym.plus.minus 2#sym.degree accuracy for 1 minute
  ],
  constraints: [
    - #vex-rule[R4] Robots must fit within an 18" x 18" x 18" volume
    - #vex-rule[R15] No modifications to electronic or pneumatic components are allowed
    - #vex-rule[R27] Use a "Competition Template" for programming
  ],
)