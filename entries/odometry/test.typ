#import "/template/template.typ": *

#show: create-entry.with(
  title: "Odometry v1",
  type: "test",
  date: datetime(year: 2024, month: 11, day: 22),
  attendance: ("Ishika", "Makhi", "Rory", "Eric", "Anders"),
  designed: "Ishika",
  witnessed: "Ishika",
)


The odometry system is crucial for our autonomous routines because it allows us to have an accurate position of our robot. It is important to test the odometry algorithms to ensure that they are working as intended.

= Position Tracking
== Background
The tracking wheel measures the distance the robot travels by tracking the wheel's rotation as it moves across the ground. The optical shaft encoder attached to the wheel counts the number of rotations or partial rotations of the wheel, which can be translated into distance traveled based on the wheel's circumference. We want to make sure that it is tracking the wheel's rotation correctly.

== Hypothesis
The robot's odometry wheel will accurately track its position after traveling 48 inches with a margin of error of #sym.plus.minus 1 inches.

#grid(
  columns: (3fr, 7fr),
  rows: 1,
  column-gutter: 15pt,

  [
    == Materials
    #materials-table(
      (1, "Robot"),
      (1, "Controller"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Set the robot on the field with an initial position of (0,0).
    + Move the robot straight forward 48 inches in the y-direction.
    + At the final position, record the new y-value reported by the position tracking algorithm.
    + Calculate the error (distance from the expected final position to the reported final position).
    + Repeat steps 1-4 for a total of 5 trials.
  ],
)

== Results
#align(center)[
  #show table.cell.where(y: 0): strong

  #table(
    columns: 4,

    fill: (x, y) =>
      if x == 0 or y == 0 {gray.lighten(20%)},

    [Trial], [Expected Final Position (x,y)], [Reported Final Position (x,y)], [Error (in)],
    [Trial 1], [(0,48)], [(0,47.7)], [-0.3],
    [Trial 2], [(0,48)], [(0,47.9)], [-0.1],
    [Trial 3], [(0,48)], [(0,48.1)], [0.1],
    [Trial 4], [(0,48)], [(0,47.8)], [-0.2],
    [Trial 5], [(0,48)], [(0,48)], [0]
  )
]

#let position-tracking-test-data = (-0.3, -0.1, 0.1, -0.2, 0)

#colbreak()

#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(position-tracking-test-data, digits: 1) in],
      [Median], [#stats.median(position-tracking-test-data) in],
      [Range], [#stats.range(position-tracking-test-data, digits: 1) in],
      [Variance], [#stats.variance(position-tracking-test-data, digits: 4) in#super("2")],
      [Standard Deviation], [#stats.std-dev(position-tracking-test-data, digits: 2) in],
    )
  ],

  {
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (9, 4),
        axis-style: "school-book",

        legend: "north",
        // legend-style: (padding: 0.15, item: (spacing: 0.01)),

        x-label: "Trial #",
        x-tick-step: 1,
        x-min: 0,

        y-label: "Error (in)",
        y-min: -0.5, y-max: 0.5,

        {
          plot.add(
            position-tracking-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Error"
          )
        }
      )
    })
  }
)

== Conclusion
We are happy with the results, especially seeing that the margin of error was within #sym.plus.minus 0.3 inches for every trial. This confirms that the odometry wheels are working properly.


= Lateral Movement
== Background
When using a PID controller to drive the robot forward, the controller continually adjusts the robot's velocity until it reaches the target position. Ideally, a well-tuned PID controller should bring the robot to the target position with minimal steady-state error (the final difference between the robot's position and the target position after the robot stops moving). We want to evaluate the steady-state error when the robot uses a PID movement to drive forward 48 inches along the y-axis.

== Hypothesis
The steady-state error when the robot uses a PID movement to move forward 48 inches will be within #sym.plus.minus 0.5 inches.

#grid(
  columns: (3fr, 7fr),
  rows: 1,
  column-gutter: 15pt,

  [
    == Materials
    #materials-table(
      (1, "Robot"),
      (1, "Controller"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Set the robot on the field with an initial position of (0,0).
    + Use a PID movement to drive the robot forward 48 inches along the y-axis.
    + Once the robot stops, note the final y-position as reported by the robot's position tracking system.
    + Calculate the steady-state error.
    + Repeat steps 1-4 for a total of 5 trials.
  ],
)

#colbreak()

== Results
#align(center)[
  #show table.cell.where(y: 0): strong

  #table(
    columns: 4,

    fill: (x, y) =>
      if x == 0 or y == 0 {gray.lighten(20%)},

    [Trial], [Expected Final Position (x,y)], [Final Position (x,y)], [Steady-State Error (in)],
    [Trial 1], [(0,48)], [(0,48.1)], [0.1],
    [Trial 2], [(0,48)], [(0,48.3)], [0.3],
    [Trial 3], [(0,48)], [(0,48.1)], [0.1],
    [Trial 4], [(0,48)], [(0,47.9)], [-0.1],
    [Trial 5], [(0,48)], [(0,47.9)], [-0.1]
  )
]

#let lateral-movement-test-data = (0.1, 0.3, 0.1, -0.1, -0.1)

#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(lateral-movement-test-data, digits: 1) in],
      [Median], [#stats.median(lateral-movement-test-data) in],
      [Range], [#stats.range(lateral-movement-test-data, digits: 2) in],
      [Variance], [#stats.variance(lateral-movement-test-data, digits: 3) in#super("2")],
      [Standard Deviation], [#stats.std-dev(lateral-movement-test-data, digits: 3) in],
    )
  ],

  {
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (9, 4),
        axis-style: "school-book",

        legend: "north",
        // legend-style: (padding: 0.15, item: (spacing: 0.01)),

        x-label: "Trial #",
        x-tick-step: 1,
        x-min: 0,

        y-label: "Steady-State\nError (in)",
        y-min: -0.5, y-max: 0.5,

        {
          plot.add(
            lateral-movement-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Steady-State Error"
          )
        }
      )
    })
  }
)

== Conclusion
Overall, while the PID controller performs well under ideal conditions, there are areas for improvement. The results suggest that with proper tuning of the PID parameters, the steady-state error can be minimized even further. Regardless, these results fall within our acceptable range of #sym.plus.minus 0.5 inches for steady-state error.


= Angular Movement
== Background
When testing angular movement (turning) with a PID control system, the steady-state error refers to the difference between the desired target angle and the actual final angle the robot achieves after completing the turn. We are interested in quantifying how accurately the robot reaches that target angle.

== Hypothesis
The steady-state error when the robot uses a PID movement to turn 90#sym.degree will be within #sym.plus.minus 1#sym.degree of the target angle.

#colbreak()

#grid(
  columns: (3fr, 7fr),
  rows: 1,
  column-gutter: 15pt,

  [
    == Materials
    #materials-table(
      (1, "Robot"),
      (1, "Controller"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Set the robot on the field with an initial position of (0,0) and an initial orientation of 0 degrees.
    + Use a PID movement to turn the robot 90 degrees clockwise.
    + Once the robot stops, note the final angle as reported by the robot's odometry.
    + Calculate the steady-state error.
    + Repeat steps 1-4 for a total of 5 trials.
  ],
)

== Results
#align(center)[
  #show table.cell.where(y: 0): strong

  #table(
    columns: 4,

    fill: (x, y) =>
      if x == 0 or y == 0 {gray.lighten(20%)},

    [Trials], [Expected Final Position (deg)], [Final Position (deg)], [Steady-State Error (deg)],
    [Trial 1], [90], [92.4], [2.4],
    [Trial 2], [90], [89.1], [-0.9],
    [Trial 3], [90], [92.3], [2.3],
    [Trial 4], [90], [88.8], [-1.2],
    [Trial 5], [90], [91.1], [1.1]
  )
]

#let angular-movement-test-data = (2.4, -0.9, 2.3, -1.2, 1.1)

#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(angular-movement-test-data, digits: 2) in],
      [Median], [#stats.median(angular-movement-test-data) in],
      [Range], [#stats.range(angular-movement-test-data, digits: 1) in],
      [Variance], [#stats.variance(angular-movement-test-data, digits: 2) in#super("2")],
      [Standard Deviation], [#stats.std-dev(angular-movement-test-data, digits: 2) in],
    )
  ],

  {
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (9, 4),
        axis-style: "school-book",

        legend: "north",
        legend-style: (padding: 0.15, item: (spacing: 0.15)),

        x-label: "Trial #",
        x-tick-step: 1,
        x-min: 0,

        y-label: "Steady-State\nError (deg)",
        y-min: -2.5, y-max: 2.5,

        {
          plot.add(
            angular-movement-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Steady-State Error"
          )

          // plot.add(
          //   domain: (1, 5),
          //   style: (stroke: (paint: green), fill: green.lighten(75%)),
          //   hypograph: true,
          //   label: "Target Steady-State Error",
          //   x => {
          //     5
          //   }
          // )
        }
      )
    })
  }
)

== Conclusion
The robot had a higher steady-state error than what we would like. This suggests that the angular PID controller needs significant tuning to prevent overshooting and undershooting.