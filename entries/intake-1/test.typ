#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v1",
  type: "test",
  date: datetime(year: 2025, month: 9, day: 27),
  attendance: ( "Ishika", "Makhi", "Rory", "Eric", "Anders", "Samia"),
  designed: "Ishika",
  witnessed: "Rory",
)

#to-do(
  date: datetime(year: 2025, month: 9, day: 27),
  monthly-schedule: "Ahead",
  yearly-schedule: "Off",
  (
    (true, "Test the functions of the intake according to the desired criteria to properly evaluate it", "Everyone"),
  )
)
The primary goal of testing the intake is to evaluate how effectively it can manipulate blocks.

= Speed
== Background
The intake should be fast when taking in the blocks. A fast intake allows us to gather blocks and score them quickly. This would minimize both the time taken to collect the blocks and the time taken to score them, when both is combined it results in the ideal speed we need.

== Hypothesis
The robot will be able to intake and expel 8 blocks in approximately 30 seconds.

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
    [Time (s)], [40], [36], [35], [35], [38],
  )
]

#let speed-test-data = (40, 36, 35, 35, 38)

#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(speed-test-data) s],
      [Median], [#stats.median(speed-test-data) s],
      [Range], [#stats.range(speed-test-data, digits: 1) s],
      [Variance], [#stats.variance(speed-test-data, digits: 4) s#super("2")],
      [Standard Deviation], [#stats.std-dev(speed-test-data, digits: 2) s],
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

        y-label: "Time (s)",
        y-min: 0, y-max: 45,

        {
          plot.add(
            speed-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Intake Time"
          )

          plot.add(
            domain: (1, 5),
            style: (stroke: (paint: green), fill: green.lighten(75%)),
            hypograph: true,
            label: "Ideal Intake Time",
            x => {
              30
            }
          )
        }
      )
    })
  }
)

== Conclusion
These results and the observations of jamming and a slow exchange from intaking to outtaking lead us to thinking about possibly changing our intake in the future. These results show that the intake is quite slow when it comes to taking in blocks which can cause a huge hindrance, as stated previously.

= Jamming
== Background
During a match, intake jamming is extremely frustrating, as it prevents us from scoring and limits us to assisting our alliance partner by ramming game elements and robots with the drivetrain. This slows down the pace of the game and makes it harder to win.

Given the jamming that we saw in Experiment 1, we created this experiment to test how many blocks in quick succession it takes to jam the intake.

== Hypothesis
The intake will jam if two blocks go in or out within a second.

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
      (1, "Camera"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Place the robot on the field.
    + Start filming using the camera
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
    [Jammed Block], [3], [4], [3], [2], [1],
  )
]

#let jamming-test-data = (3, 4, 3, 2, 4)



#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(jamming-test-data, digits: 0)rd blocks],
      [Median], [#stats.median(jamming-test-data)rd blocks],
      [Range], [#stats.range(jamming-test-data, digits: 1) blocks],
      [Variance], [#stats.variance(jamming-test-data, digits: 4)  blocks#super("2")],
      [Standard Deviation], [#stats.std-dev(jamming-test-data, digits: 2) blocks],
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
            jamming-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Jammed Block"
          )

          plot.add(
            domain: (1, 5),
            style: (stroke: (paint: green), fill: green.lighten(75%)),
            label: "Predicted Jammed Block",
            x => {
              3
            }
          )
        }
      )
    })
  }
)

== Conclusion
The intake jammed as we sped up and added from different angles, even jamming on the first block once. This leads us to concluding that the guidance and space in the system cause intake issues which we need to address with either a redesign or retrofitting.

= Consistency
== Background
To maximize our chances of scoring points, it is crucial that the feeding of blocks from the intake to the goal is smooth and consistent. To assess this, we are testing how frequently the blocks go out the right section and in a reasonable time.

== Hypothesis
The intake may feed through the wrong section when we attempt to use the upper deposit rather than the lower one and might be slow due to several dead-zones we have made note of as causing issues.

#grid(
  columns: (3fr, 7fr),
  rows: 1,
  column-gutter: 15pt,

  [
    == Materials
    #materials-table(
      (1, "Robot"),
      (1, "Controller"),
      (1, "Mobile Goal"),
      (6, "Blocks"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Place the robot on the field.
    + Activate the intake.
    + Feed the blocks one by one into the intake.
    + Switch which outtake the block is meant to go through every other time.
    + Repeat steps 2-4 for a total of 8 trials, with a 3-minute break in between each trial to let the intake motor cool down.
  ],
)


== Results
#align(center)[
  #show table.cell.where(x: 0): strong
  #show table.cell.where(y: 0): strong

  #table(
    columns: 9,

    fill: (x, y) =>
      if (x == 0) or (y == 0) {gray.lighten(20%)},

    [Trial \#], [1], [2], [3], [4], [5], [6], [7], [8],
    [Blocks Missed Target], [0], [1], [6], [5], [2], [2], [4], [3]
  )
]

#let consistency-test-data = (0, 1, 6, 5, 2, 2, 4, 3)

#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(consistency-test-data) blocks],
      [Median], [#stats.median(consistency-test-data) blocks],
      [Range], [#stats.range(consistency-test-data, digits: 1) blocks],
      [Variance], [#stats.variance(consistency-test-data, digits: 4) blocks#super("2")],
      [Standard Deviation], [#stats.std-dev(consistency-test-data, digits: 2) blocks],
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

        y-label: "Blocks Missed",
        y-min: 0, y-max: 6,
        y-tick-step: 1,

        {
          plot.add(
            consistency-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Blocks Missed"
          )

          plot.add(
            domain: (1, 10),
            style: (stroke: (paint: green), fill: green.lighten(75%)),
            epigraph: false,
            label: "Expected Blocks Missed",
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
The transitions in direction of the blocks and a pressure pushing from the back of the intake caused many balls going for the top outtake to get jammed or go out the wrong section. So the conclusion was that this intake is not as reliable as we expected it ot be, revealing problems we did not think of initially.