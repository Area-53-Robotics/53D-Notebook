#import "/template/template.typ": *

#show: create-entry.with(
  title: "Loader Mechanism v1",
  type: "test",
  date: datetime(year: 2025, month: 12, day: 06),
  attendance: ( "Ishika", "Makhi", "Rory", "Eric", "Anders", "Samia"),
  designed: "Ishika",
  witnessed: "Rory",
)

#to-do(
  date: datetime(year: 2025, month: 12, day: 06),
  monthly-schedule: "Ahead",
  yearly-schedule: "Off",
  (
    (true, "Test the functions of the loader mechanism according to the desired criteria to properly evaluate it", "Everyone"),
  )
)
The primary goal of testing the loader mechanism is to evaluate how effectively it can manipulate blocks that are inside the loader and if it can effectively get the all the blocks out of the loader.

= Consistency
== Background
To maximize our chances of scoring points, it is crucial that the taking of blocks from the loader to the front of the intake is as many blocks as possible, if not all. To assess this, we are testing how many blocks the loader can get out of the loader every trial. 

== Hypothesis
The loader mechanism will get about 4 blocks or more through the design of this loader mechanism. 

#grid(
  columns: (3fr, 7fr),
  rows: 1,
  column-gutter: 15pt,

  [
    == Materials
    #materials-table(
      (1, "Robot"),
      (1, "Controller"),
      (1, "Loader"),
      (6, "Blocks"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Place the robot on the field.
    + Activate the loader mechanism.
    + Feed the blocks one by one into the loader.
    + Push the loader mechanism into the loader and start feeding the balls, see how many balls it can get.
    + Repeat steps 2-4 for a total of 8 trials, with a 3-minute break in between each trial to refill the pneumatic tank.
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
    [Blocks take out], [5], [4], [5], [6], [6], [3], [3], [6]
  )
]

#let consistency-test-data = (5, 4, 5, 6, 6, 3, 3, 6)

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
            label: "Blocks Taken Out"
          )

          plot.add(
            domain: (1, 10),
            style: (stroke: (paint: green), fill: green.lighten(75%)),
            epigraph: true,
            label: "Expected Blocks Taken Out",
            x => {
              4
            }
          )
        }
      )
    })
  }
)

== Conclusion
The use of the plastic and the weight of the stack of blocks in the loader allow the loader mechanism to effectively get almost all the blocks from the loader in a consistent manner. 

= Speed
== Background
The loader mechanism should be fast when taking out the blocks. A fast loader mechanism allows us to gather blocks and score them quickly, as well as matchload more. This would minimize both the time taken to collect the blocks and the time taken to score them, when both is combined it results in the ideal speed we need.

== Hypothesis
The robot will be able to take out all the blocks in the loader in approximately 20 seconds or less.

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
    + Start the stopwatch.
    + Activate the loader mechanism while driving forward.
    + Stop the stopwatch after the last block from the robot has been taken out.
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
    [Time (s)], [25], [22], [16], [20], [18],
  )
]

#let speed-test-data = (25, 22, 16, 20, 18)

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
        y-min: 0, y-max: 30,

        {
          plot.add(
            speed-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Loader Mechanism Taken Out Time"
          )

          plot.add(
            domain: (1, 5),
            style: (stroke: (paint: green), fill: green.lighten(75%)),
            hypograph: true,
            label: "Ideal Take Out Time",
            x => {
              15
            }
          )
        }
      )
    })
  }
)

== Conclusion
The time that it takes to get all 6 blocks is varying but overall it is pretty close to the ideal time we wanted of 15. We think that this shows that when the loader mechanism is working properly it can very easily and with great speed take out all the blocks from the loader. 

= Endurance
== Background
During the game it is often necessary to activate and deactivate the loader mechanism multiple times for strategic reasons and build reasons so that the intake can properly function. Due to this we wanted to test how many times we can activate and deactivate the mechanism before it loses air, which can also help us find a leak if there is any.

== Hypothesis
The loader mechanism will be able to cycle from deactivated to activated and back to deactivated 8 times on average


#grid(
  columns: (3fr, 7fr),
  rows: 1,
  column-gutter: 15pt,

  [
    == Materials
    #materials-table(
      (1, "Robot"),
      (1, "Controller"),
      (1, "Pneumatic Pump"),
      (1, "Camera"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Fill the robot with 100 PSI of air.
    + Set our robot on the table
    + Activate and deactivate, counting how many activations and deactivations before pressure runs out.
    + Repeat for a total of 5 trials.

  ],
)
#colbreak()
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
    [Number of activations (down)], [7], [9], [5], [8], [8],
    [Number of deactivations (up)], [6], [9], [4], [7], [7],
  )
]

#align(center)[
  #cetz.canvas({
    import cetz.draw: *

    chart.barchart(
      size: (11, auto),

      label-key: 0,
      value-key: (1, 2),
      mode: "clustered",

      legend: "north-east",
      legend-style: (padding: 0.15, item: (spacing: 0.01)),
      labels: ([Activations], [Deactivations]),

      y-label: "Trial #",

      (
        ([1], 7, 6),
        ([2], 9, 9),
        ([3], 5, 4),
        ([4], 8, 7),
        ([5], 8, 7),
      )
    )
  })
]

== Conclusion
While the majority of results were successful, there are a few that fell a but below the expectation but that indicates that there may be a leak somewhere in our pneumatics system. Since our pneumatics are not being used solely on the loader mechanism, the average being around 8 is very beneficial because that means the distribution of air is good even with a small leak. 

