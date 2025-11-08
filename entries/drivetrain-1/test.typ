#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1",
  type: "test",
  date: datetime(year: 2025, month: 8, day: 29),
  attendance: ("Ishika", "Makhi", "Rory", "Eric"),
  designed: "Ishika",
  witnessed: "Makhi",
)


To ensure that the first version of our drivetrain was functioning that the level that we wanted, we tested the drivetrain on the three "Aspects of a Drivetrain" that we identified in our #entry-reference(title: "Drivetrain v1", type: "identify", date: datetime(year: 2024, month: 6, day: 16)).

= Speed Test (Mobility)
== Background
In an ideal world, our drivetrain should have a speed of 76.6 in/s, as calculated in our #entry-reference(title: "Drivetrain v1 - Gear Ratio", type: "brainstorm", date: datetime(year: 2024, month: 6, day: 28)). However, due to factors such as friction and the bending at the front of our drivetrain, the actual drivetrain speed will likely be slightly lower than 76.6 in/s.

== Hypothesis
The drivetrain will display a speed of at least 72.77 in/s, which is 5% less than our ideal speed of 76.6 in/s.

#grid(
  columns: (3fr, 7fr),
  rows: 1,
  column-gutter: 15pt,

  [
    == Materials
    #materials-table(
      (1, "Robot"),
      (1, "Controller"),
      (1, "White Tape"),
      (5, "Anti-Static Field Tiles"),
      (1, "Stopwatch"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Using white tape, mark a fixed distance of 120 inches (5 VRC field tiles).
    + Place the robot at the start point.
    + Run the robot over a straight line and record the time it takes to reach the endpoint.
    + Calculate the average speed of the drivetrain during that trial
    + Compare the average speed with the ideal speed.
    + Repeat steps 2-5 for a total of 5 trials.
  ],
)

#let speed-test-data = (73.2, 73.2, 74, 73.6, 73.2)

== Results
#align(center)[
  #show table.cell.where(x: 0): strong
  #show table.cell.where(y: 0): strong

  #table(
    columns: 6,

    fill: (x, y) =>
      if (x == 0 and y > 0) or (y == 0 and x > 0) {gray.lighten(20%)},

    table.hline(y: 0, end: 1, stroke: none),
    table.vline(x: 0, end: 1, stroke: none),

    [], [Trial 1], [Trial 2], [Trial 3], [Trial 4], [Trial 5],
    [Time (s)], [1.64], [1.64], [1.62], [1.63], [1.64],
    [Calculated Speed (in/s)], [73.2], [73.2], [7.4], [73.6], [73.2],
    [Ideal Speed (in/s)], table.cell(colspan: 5)[76.6],
    [% of ideal speed], [95.6%], [95.6%], [96.7%], [96.1%], [95.6%],
  )
]

#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(speed-test-data) in/s],
      [Median], [#stats.median(speed-test-data) in/s],
      [Range], [#stats.range(speed-test-data, digits: 1) in/s],
      [Variance], [#stats.variance(speed-test-data, digits: 4) in#super("2")/s#super("2")],
      [Standard Deviation], [#stats.std-dev(speed-test-data, digits: 2) in/s],
    )
  ],

  {
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (9, 4),
        axis-style: "scientific-auto",

        legend: "north",
        legend-style: (padding: 0.15, item: (spacing: 0.01)),

        x-label: "Trial #",
        x-tick-step: 1,

        y-label: "Speed (in/s)",
        y-min: 72, y-max: 77,

        {
          plot.add(
            speed-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Speed"
          )

          plot.add(
            domain: (1, 5),
            style: (stroke: (paint: green), fill: green.lighten(75%)),
            epigraph: true,
            label: "Ideal Speed",
            x => {
              76.6
            }
          )
        }
      )
    })
  }
)

== Conclusion
Even though it is slightly inconvenient that the drivetrain's speed is a bit slower than the ideal speed, it makes sense. Some parts of the drivetrain are bending, causing friction on the drivetrain. Even though our drivetrain is not perfect, we are still satisfied with the results.


= Torque Test (Foundation)
== Background
In a VRC match, we will not need to push an enemy robot past 5 feet. If the robot is capable of pushing a 6.65 lb box (the weight of most lighter robots) past 5 feet in 10 seconds, it will be a success. Since the robot is geared with a balance between torque and speed, we believe the drivetrain is capable of passing this test.

== Hypothesis
The robot will be able to maintain a distance-to-weight ratio of 0.75 ft/lbs or higher when pushing the weighted boxes.

#grid(
  columns: (3fr, 7fr),
  rows: 1,
  column-gutter: 15pt,

  [
    == Materials
    #materials-table(
      (1, "Robot"),
      (1, "Controller"),
      (1, "Box"),
      (5, "Weights with 5 lb increments"),
      (1, "Stopwatch"),
      (1, "Notetaking Materials"),
    )
  ],

  [
    == Procedures
    + Place the robot at a standstill onto a flat surface.
    + Place a box with weights directly in front of it.
    + Measure how far the robot manages to push the box in 10 seconds.
    + Add 5 pounds to the box and repeat for a total of 5 trials.
  ],
)

#let weight-test-data = (
  (5, 13.64),
  (10, 11.34),
  (15, 8.97),
  (20, 7.32),
  (25, 6.83)
)

#let weight-test-y-data = deconstruct(index: 1, weight-test-data)

== Results
#align(center)[
  #show table.cell.where(x: 0): strong
  #show table.cell.where(y: 0): strong

  #table(
    columns: 6,

    fill: (x, y) =>
      if (x == 0 and y > 0) or (y == 0 and x > 0) {gray.lighten(20%)},

    table.hline(y: 0, end: 1, stroke: none),
    table.vline(x: 0, end: 1, stroke: none),

    [], [Trial 1], [Trial 2], [Trial 3], [Trial 4], [Trial 5],
    [Weight (lbs)], [5], [10], [15], [20], [25],
    [Distance (ft)], [13.64], [11.34], [8.97], [7.32], [6.83],
    [Ratio (ft/lbs)], [13.64:5 \ 2.728], [11.34:10 \ 1.134], [8.97:15 \ 0.598], [7.32:20 \ 0.366], [6.83:25 \ 0.2732],
  )
]

#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(weight-test-y-data, digits: 2) ft.],
      [Median], [#stats.median(weight-test-y-data) ft.],
      [Range], [#stats.range(weight-test-y-data, digits: 2) ft.],
      [Variance], [#stats.variance(weight-test-y-data, digits: 3) ft#super("2")],
      [Standard Deviation], [#stats.std-dev(weight-test-y-data, digits: 3) ft.],
    )
  ],

  {
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (9, 4),
        axis-style: "scientific-auto",

        legend: "north",
        legend-style: (padding: 0.15, item: (spacing: 0.15)),

        x-label: "Weight (lbs)",
        x-tick-step: 5,

        y-label: "Distance (ft)",
        y-min: 6, y-max: 14,

        {
          plot.add(
            weight-test-y-data.enumerate(start: 1).map(data => {
              (data.at(0) * 5, data.at(1))
            }),
            mark: "o",
            style: (stroke: none),
            label: "Distance"
          )

          plot.add(
            domain: (0, 25),
            style: (stroke: (paint: green), fill: green.lighten(75%)),
            epigraph: true,
            label: "Target Ratio",
            x => {
              x * 0.75
            }
          )
        }
      )
    })
  }
)

== Conclusion
The drivetrain satisfied our hypothesis for the 5 lb and 10 lb weights, but failed for the other weights. Despite this, overall the drivetrain did a good job at pushing the box. We predict that the heavier the robot becomes as we build more subsystems, the further the drivetrain will be able to push the box. We also noticed that as we increase the weight by 5 pounds, the distances-to-weight ratio seems to half.


= Turning Radius Test (Versatility)
== Background
Since the field is open, we need the robot to make sharp turns. If the robot is capable of a turning radius of 5 inches or less, it will be considered a success. However, we believe the robot will not be able to pass this test because it is very light and therefore difficult to control.

== Hypothesis
The drivetrain will have a turning radius of 5 inches or less when making a 90#sym.degree arc turn.

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
      (1, "White Tape"),
      (5, "Measuring Tape"),
    )
  ],

  [
    == Procedures
    + Using white tape, mark a pivot point around which the robot will turn
    + Using white tape, mark the start and end points of the robot's turn
    + Place the robot on the start point
    + Drive the robot in an arc and turn toward the endpoint
    + Measure the radius of the turn
    + Repeat steps 3-5 for a total of 5 trials 
  ],
)

#let turning-test-data = (12.32, 16.31, 16.87, 19.32, 14.96)

== Results
#align(center)[
  #show table.cell.where(x: 0): strong
  #show table.cell.where(y: 0): strong

  #table(
    columns: 6,

    fill: (x, y) =>
      if (x == 0 and y > 0) or (y == 0 and x > 0) {gray.lighten(20%)},

    table.hline(y: 0, end: 1, stroke: none),
    table.vline(x: 0, end: 1, stroke: none),

    [], [Trial 1], [Trial 2], [Trial 3], [Trial 4], [Trial 5],
    [Turning Radius (in)],
    ..for value in turning-test-data {
      (str(value),)
    }
  )
]

#grid(
  columns: (1fr, 2fr),
  align: center + horizon,

  [
    #table(
      columns: 2,
      align: center + horizon,

      table.cell(fill: gray.lighten(20%), colspan: 2)[*Statistics*],
      [Mean], [#stats.mean(turning-test-data, digits: 2) in.],
      [Median], [#stats.median(turning-test-data) in.],
      [Range], [#stats.range(turning-test-data) in.],
      [Variance], [#stats.variance(turning-test-data, digits: 2) in#super("2")],
      [Standard Deviation], [#stats.std-dev(turning-test-data, digits: 2) in.],
    )
  ],

  {
    cetz.canvas({
      import cetz.draw: *

      plot.plot(
        size: (9, 4),
        axis-style: "scientific-auto",

        legend: "north",
        legend-style: (padding: 0.15, item: (spacing: 0.15)),

        x-label: "Trial #",
        x-tick-step: 1,

        y-label: "Turning Radius (in)",
        y-min: 0, y-max: 20,

        {
          plot.add(
            turning-test-data.enumerate(start: 1),
            mark: "o",
            style: (stroke: none),
            label: "Speed"
          )

          plot.add(
            domain: (1, 5),
            style: (stroke: (paint: green), fill: green.lighten(75%)),
            hypograph: true,
            label: "Target Radius",
            x => {
              5
            }
          )
        }
      )
    })
  }
)

== Conclusion
The drivetrain's turning radius is very inconsistent and significantly higher than what we identified in our hypothesis. However, this makes sense because the drivetrain is very light compared to the overall robot. Since it is just the drivetrain, it would be harder to control the drivetrain when making sharp turns. We will repeat this experiment once the robot is completed. 