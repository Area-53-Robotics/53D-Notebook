#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v2 - Re-Test",
  type: "test",
  date: datetime(year: 2025, month: 11, day: 08),
  attendance: ( "Ishika", "Makhi", "Rory", "Eric", "Anders", "Samia"),
  designed: "Eric",
  witnessed: "Rory",
)

#to-do(
  date: datetime(year: 2025, month: 11, day: 08),
  monthly-schedule: "Ahead",
  yearly-schedule: "Off",
  (
    (true, "Re-Test the functions of the intake according to the desired criteria to properly evaluate it", "Everyone"),
  )
)

The primary goal of testing the new intake is to evaluate how effectively it can manipulate blocks. To ensure consistency and comparability, we conducted almost the same series of tests that we performed on the first intake.(we did not need to text consistency as there is only one outtake that changes heights)

= Speed
== Background
The intake should be fast when intaking blocks. A fast intake allows us to gather blocks and score them quickly.

== Hypothesis
The robot will be able to intake and expel 8 blocks in approximately 25 seconds.

#grid(
  columns: (3fr, 7fr),
  rows: 1,
  column-gutter: 15pt,

  [
    == Materials
    #materials-table(
      (1, "Robot"),
      (1, "Controller"),
      (8, "Blocks"),
      (1, "Stopwatch"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Turn on the robot.
    + Place the robot on the field.
    + Place 8 blocks in front of the bot.
    + Start the stopwatch.
    + Activate the intake while driving forward.
    + Stop the stopwatch after the last block has been outtaked.
    + Repeat steps 1-6 for a total of 5 trials.

  ],
)
#colbreak()
== Results
#align(center)[
  #show table.cell.where(x: 0): strong
  #show table.cell.where(y: 0): strong

  #table(
    columns: 6,
    rows: 3,

    fill: (x, y) =>
      if (y == 0 and x > 0) or (x == 0 and y > 0) {gray.lighten(20%)},

    table.hline(y: 0, end: 1, stroke: none),
    table.vline(x: 0, end: 1, stroke: none),

    [], [Trial 1], [Trial 2], [Trial 3], [Trial 4], [Trial 5],
    [Time (s) (Intake v2)], [30], [28], [31], [27], [25],
    [Time (s) (Intake v1)], [40], [28], [31], [27], [25],
  )
]

#let speed-old-test-data = (40, 28, 31, 27, 25)
#let speed-new-test-data = (30, 28, 31, 27, 25)

#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics (Intake v2)*],
      [Mean], [#stats.mean(speed-new-test-data, digits: 2) s],
      [Median], [#stats.median(speed-new-test-data) s],
      [Range], [#stats.range(speed-new-test-data, digits: 1) s],
      [Variance], [#stats.variance(speed-new-test-data, digits: 4) s#super("2")],
      [Standard Deviation], [#stats.std-dev(speed-new-test-data, digits: 2) s],
    )
  ],

  {
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (9, 3),
        axis-style: "scientific-auto",

        legend: "north",
        // legend-style: (padding: 0.15, item: (spacing: 0.01)),

        x-label: "Trial #",
        x-tick-step: 1,

        y-label: "Time (s)",
        y-min: 0, y-max: 45,

        {
          plot.add(
            speed-new-test-data.enumerate(start:1),
            mark: "o",
            style: (stroke: none),
            label: "Intake v2 Time"
          )

          plot.add(
            speed-old-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Intake v1 Time"
          )

          plot.add(
            domain: (1, 5),
            style: (stroke: (paint: green), fill: green.lighten(75%)),
            hypograph: true,
            label: "Ideal Intake Time",
            x => {
              25
            }
          )
        }
      )
    })
  }
)
== Conclusion
These results and the observations of a much better time, almost ten seconds faster on average, and only one spot with any jamming rise which is not significant.

= Jamming
== Background
During a match, intake jamming is extremely frustrating, as it prevents us from scoring and limits us to assisting our alliance partner by ramming game elements and robots with the drivetrain. This slows down the pace of the game and makes it harder to win.

== Hypothesis
The intake will jam if two blocks go in or out within a half-second.

#grid(
  columns: (3fr, 7fr),
  rows: 1,
  column-gutter: 15pt,

  [
    == Materials
    #materials-table(
      (1, "Robot"),
      (8, "Blocks"),
      (1, "Camera"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Place the robot on the field.
    + Start filming using the camera.
    + Activate the intake.
    + Feed the blocks into the intake at short intervals speeding up (0.5s-1s.)
    + If the intake jams, check the footage to see which block caused it (Based off of seconds in jam.)
    + Repeat steps 2-5 for a total of 5 trials, with a 3-minute break in between each trial to let the intake motors cool down and look for breaks.

  ],
)

== Results
#align(center)[
  #show table.cell.where(x: 0): strong
  #show table.cell.where(y: 0): strong

  #table(
    columns: 6,

    fill: (x, y) =>
      if (y == 0 and x > 0) or (x == 0 and y > 0) {gray.lighten(20%)},

    table.hline(y: 0, end: 1, stroke: none),
    table.vline(x: 0, end: 1, stroke: none),

    [], [Trial 1], [Trial 2], [Trial 3], [Trial 4], [Trial 5],
    [Jammed Block (Intake v2)], [7], [8], [5], [6], [5],
    [Jammed Block (Intake v1)], [3], [4], [3], [2], [1],
  )
]


#let old-jamming-test-data = (3, 4, 3, 2, 1)
#let new-jamming-test-data = (7, 8, 5, 6, 5)

#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(new-jamming-test-data, digits: 0)th blocks],
      [Median], [#stats.median(new-jamming-test-data)th blocks],
      [Range], [#stats.range(new-jamming-test-data, digits: 1) blocks],
      [Variance], [#stats.variance(new-jamming-test-data, digits: 4) blocks#super("2")],
      [Standard Deviation], [#stats.std-dev(new-jamming-test-data, digits: 2) blocks],
    )
  ],

  {
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (9, 4),
        axis-style: "scientific-auto",

        legend: "north",
        // legend-style: (padding: 0.15, item: (spacing: 0.01)),

        x-label: "Trial #",
        x-tick-step: 1,

        y-label: "Jammed Block",
        y-min: 0, y-max: 6,
        y-tick-step: 1,

        {
          plot.add(
            new-jamming-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Intake v2 Jammed Block"
          )

          plot.add(
            old-jamming-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Intake v1 Jammed Block"
          )

          plot.add(
            domain: (1, 5),
            style: (stroke: (paint: green), fill: green.lighten(75%)),
            label: "Predicted Jammed Block",
            x => {
              2
            }
          )
        }
      )
    })
  }
)

== Conclusion
The intake jammed a lot less than previously and only at a point where it was solvable by a control input change; this is much better than the previous design in speed and consistency. Since we noticed the consistency in this test, we did not need to run an additional test to check the consistency of the intake. 

