#import "/template/template.typ": *
#import "@preview/cetz:0.2.0"

#show: create-entry.with(
  title: "",
  type: "competition",
  date: datetime(year: 2024, month: 01, day: 13),
  attendance: "Ishika, Makhi",
  designed: "Ishika",
  witnessed: "Ishika",
)

#admonition(type: "competition", title: "Competition Results")[
  - *Rank:* -/-
  - *Qualification Matches Wins/Losses/Ties:* -/-/-
  - *Eliminated in:* -
]

= Competition Goals
- [Comp goal here]

= Matches
#tournament-match(
  match: "Q-",
  red_alliance: (teams: ("#", "#"), score: 0),
  blue_alliance: (teams: ("#", "#"), score: 0),
  outcome: "Loss",
  auton: "Tie",
  awp: false,
  strategy: [
    - O
  ],
  auton_notes: [
    - O
  ],
  match_notes: [
    - O
  ],
  subsystems: (
    overperformed: none,
    satisfactory: none,
    underperformed: none,
    disabled: ("Drivetrain", "Intake", "Wings", "Elevation", "Kicker"),
  )
)

#colbreak()

= Subsystem Reflection
#v(0.5em)
#box[
  == Drivetrain
  #grid(
    columns: 2,
    [
      - #

      #align(center)[
        #tablex(
          columns: 2,
          rows: 4,
          align: center + horizon,

          map-rows: (col, cells) => cells.map(c => {
            if col == 0 {
              (..c, fill: gray.lighten(20%), content: [*#c.content*])
            } else {c}
          }),

          [Performance], [Matches],
          [Overperformed], [0],
          [Satisfactory], [0],
          [Underperformed], [0],
        )
      ]
    ],

    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 0),
        ([Satisfactory], 0),
        ([Underperformed], 0),
        ([Disabled], 0),
      )

      let colors = (green, yellow.darken(10%), red, gray)

      chart.piechart(
        data,
        value-key: 1,
        label-key: 0,
        radius: 3.5,
        slice-style: colors,
        inner-radius: 1,
        outset: 1,
        inner-label: (
          content: (value, label) => [
            #text(white, label)
          ],
          radius: 110%
        ),
        outer-label: (content: "%", radius: 110%)
      )
    })
  )
]

#box[
  == Intake
  #grid(
    columns: 2,

    [
      - #

      #align(center)[
        #tablex(
          columns: 2,
          rows: 4,
          align: center + horizon,

          map-rows: (col, cells) => cells.map(c => {
            if col == 0 {
              (..c, fill: gray.lighten(20%), content: [*#c.content*])
            } else {c}
          }),

          [Performance], [Matches],
          [Overperformed], [0],
          [Satisfactory], [0],
          [Underperformed], [0],
        )
      ]
    ],

    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 0),
        ([Satisfactory], 0),
        ([Underperformed], 0),
        ([Disabled], 0),
      )

      let colors = (green, yellow.darken(10%), red, gray)

      chart.piechart(
        data,
        value-key: 1,
        label-key: 0,
        radius: 3.5,
        slice-style: colors,
        inner-radius: 1,
        outset: 0,
        inner-label: (
          content: (value, label) => [
            #text(white, label)
          ],
          radius: 110%
        ),
        outer-label: (content: "%", radius: 110%)
      )
    })
  )
]

#box[
  == Wings
  #grid(
    columns: 2,

    [
      - #

      #align(center)[
        #tablex(
          columns: 2,
          rows: 4,
          align: center + horizon,

          map-rows: (col, cells) => cells.map(c => {
            if col == 0 {
              (..c, fill: gray.lighten(20%), content: [*#c.content*])
            } else {c}
          }),

          [Performance], [Matches],
          [Overperformed], [0],
          [Satisfactory], [0],
          [Underperformed], [0],
        )
      ]
    ],

    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 0),
        ([Satisfactory], 0),
        ([Underperformed], 0),
        ([Disabled], 0),
      )

      let colors = (green, yellow.darken(10%), red, gray)

      chart.piechart(
        data,
        value-key: 1,
        label-key: 0,
        radius: 3.5,
        slice-style: colors,
        inner-radius: 1,
        outset: 2,
        inner-label: (
          content: (value, label) => [
            #text(white, label)
          ],
          radius: 110%
        ),
        outer-label: (content: "%", radius: 110%)
      )
    })
  )
]

#box[
  == Elevation
  #grid(
    columns: 2,

    [
      - #

      #align(center)[
        #tablex(
          columns: 2,
          rows: 4,
          align: center + horizon,

          map-rows: (col, cells) => cells.map(c => {
            if col == 0 {
              (..c, fill: gray.lighten(20%), content: [*#c.content*])
            } else {c}
          }),

          [Performance], [Matches],
          [Overperformed], [0],
          [Satisfactory], [0],
          [Underperformed], [0],
        )
      ]
    ],

    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 0),
        ([Satisfactory], 0),
        ([Underperformed], 0),
        ([Disabled], 0),
      )

      let colors = (green, yellow.darken(10%), red, gray)

      chart.piechart(
        data,
        value-key: 1,
        label-key: 0,
        radius: 3.5,
        slice-style: colors,
        inner-radius: 1,
        outset: 1,
        inner-label: (
          content: (value, label) => [
            #text(white, label)
          ],
          radius: 110%
        ),
        outer-label: (content: "%", radius: 115%)
      )
    })
  )
]

#box[
  == Kicker
  #grid(
    columns: 2,

    [
      - #

      #align(center)[
        #tablex(
          columns: 2,
          rows: 4,
          align: center + horizon,

          map-rows: (col, cells) => cells.map(c => {
            if col == 0 {
              (..c, fill: gray.lighten(20%), content: [*#c.content*])
            } else {c}
          }),

          [Performance], [Matches],
          [Overperformed], [0],
          [Satisfactory], [0],
          [Underperformed], [0],
        )
      ]
    ],

    cetz.canvas({
      import cetz.draw: *
      import cetz.chart

      let data = (
        ([Overperformed], 0),
        ([Satisfactory], 0),
        ([Underperformed], 0),
        ([Disabled], 0),
      )

      let colors = (green, yellow.darken(10%), red, gray)

      chart.piechart(
        data,
        value-key: 1,
        label-key: 0,
        radius: 3.5,
        slice-style: colors,
        inner-radius: 1,
        outset: 1,
        inner-label: (
          content: (value, label) => [
            #text(white, label)
          ],
          radius: 110%
        ),
        outer-label: (content: "%", radius: 115%)
      )
    })
  )
]

#colbreak()

= Skills
#admonition(type: "competition", title: "Skills Performance")[
  - *Driver Skills Score:* #
  - *Programming Skills Score:* #
  - *Total Skills Score:* #
]

= Individual Reflections

== 

== 

== Ishika

== Makhi

== Rory

== Eric