#import "pie-chart.typ": *
#import "../template-packages.typ": showybox
#import showybox: showybox

#let tournament-match(
  match: "",
  red_alliance: (teams: ("", ""), score: 0),
  blue_alliance: (teams: ("", ""), score: 0),
  outcome: "Tie",
  auton: "Tie",
  awp: false,
  strategy: [],
  auton_notes: [],
  match_notes: [],
  subsystems: (
    overperformed: none,
    satisfactory: none,
    underperformed: none,
    disabled: none,
  )
) = {
  assert(outcome in ("Win", "Loss", "Tie"), message: "Invalid match outcome, the options are 'Win', 'Loss', 'Tie'")
  assert(auton in ("Red", "Blue", "Tie"), message: "Invalid auton winner, the options are 'Red', 'Blue', and 'Tie'")

  for category in subsystems {
    assert(
      (type(category) == str) or (type(category) == array),
      message: "Tournament match subsystem reflections should be of type array or string"
    )
  }

  show: showybox.with(
    frame:(
      border-color: {
        if outcome == "Win" {
          green
        } else if outcome == "Loss" {
          red
        } else if outcome == "Tie" {
          gray
        }
      },
      body-color: none,
      thickness: (left: 4pt/*, right: 4pt, top: 4pt, bottom: 4pt*/),
      radius: 1.5pt,
    )
  )

  show "53D": it => underline[*#it*]

  grid(
    columns: (20%, auto),
    rows: 1,
    column-gutter: 5pt,

    align(horizon)[
      #set text(size: 13pt)
      #grid(
        columns: 1,
        rows: 3,

        rect(
          radius: (top: 5pt),
          width: 100%,
          fill: gray,
          stroke: black + 1pt
        )[
          #align(center)[
            *#match* \
            #outcome
          ]
        ],

        rect(
          width: 100%,
          fill: red.lighten(20%),
          stroke: black + 1pt
        )[
          #grid(
            columns: (50%, 50%),
            rows: 1,

            [
              #red_alliance.teams.first() \
              #red_alliance.teams.last()
            ],

            align(center)[
              #text(size: 19pt)[
                #red_alliance.score
              ]
            ]
          )
        ],

        rect(
          radius: (bottom: 5pt),
          width: 100%,
          fill: blue.lighten(20%),
          stroke: black + 1pt
        )[
          #grid(
            columns: (50%, 50%),
            rows: 1,

            [
              #blue_alliance.teams.first() \
              #blue_alliance.teams.last()
            ],

            align(center)[
              #text(size: 19pt)[
                #blue_alliance.score
              ]
            ]
          )
        ],
      )

      #v(-0.5em)

      #grid(
        columns: 1,
        rows: 2,

        rect(
          radius: (top: 5pt),
          width: 100%,
          stroke: black + 1pt
        )[
          #align(center)[
            #text(size: 13pt)[*Auton Bonus:*]
            #if auton == "Red" {
              text(size: 16pt, fill: red)[Red]
            } else if auton == "Blue" {
              text(size: 16pt, fill: blue)[Blue]
            } else {
              text(size: 16pt, fill: gray)[Tie]
            }
          ]
        ],

        rect(
          radius: (bottom: 5pt),
          width: 100%,
          stroke: black + 1pt
        )[
          #align(center)[
            #grid(
              columns: 2,
              rows: 1,
              column-gutter: 2pt,

              text(size: 13pt)[*AWP:*],
              [
                #if awp == false {
                  image("/template/tabler-icons/square.svg", height: 2em)
                } else {
                  image("/template/tabler-icons/square-check-filled.svg", height: 2em)
                }
              ]
            )
          ]
        ],
      )
    ],

    align(horizon)[
      #show red_alliance.teams.first(): it => text(red)[#it]
      #show red_alliance.teams.last(): it => text(red)[#it]
      #show blue_alliance.teams.first(): it => text(blue)[#it]
      #show blue_alliance.teams.last(): it => text(blue)[#it]

      #grid(
        columns: 1,
        rows: 4,
        row-gutter: 5pt,

        rect(
          radius: 5pt,
          width: 100%
        )[
          #text(size: 13pt)[*Strategy:*]
          #strategy
        ],

        rect(
          radius: 5pt,
          width: 100%
        )[
          #text(size: 13pt)[*Auton Notes:*]
          #auton_notes
        ],

        rect(
          radius: 5pt,
          width: 100%
        )[
          #text(size: 13pt)[*Match Notes:*]
          #match_notes
        ],

        rect(
          radius: 5pt,
          width: 100%
        )[
          #text(size: 13pt)[*Subsystem Performance:*]
          #if subsystems.overperformed != none {
            if type(subsystems.overperformed) == array [
              - Overperformed: #subsystems.overperformed.join(", ")
            ] else [
              - Overperformed: #subsystems.overperformed
            ]
          }
          #if subsystems.satisfactory != none {
            if type(subsystems.satisfactory) == array [
              - Satisfactory: #subsystems.satisfactory.join(", ")
            ] else [
              - Satisfactory: #subsystems.satisfactory
            ]
          }
          #if subsystems.underperformed != none {
            if type(subsystems.underperformed) == array [
              - Underperformed: #subsystems.underperformed.join(", ")
            ] else [
              - Underperformed: #subsystems.underperformed
            ]
          }
          #if subsystems.disabled != none {
            if type(subsystems.disabled) == array [
              - Disabled: #subsystems.disabled.join(", ")
            ] else [
              - Disabled: #subsystems.disabled
            ]
          }
        ],

      )
    ],
  )
}

#let subsystem-analysis(
  reflection: none,
  radius: 3,
  outer-label-radius: 127%,
  overperformed: 0,
  satisfactory: 0,
  underperformed: 0,
  disabled: 0,
) = {
  grid(
    columns: (1fr, 1fr),
    column-gutter: 5pt,
    align: (x, _) =>
      if x == 0 {left + top}
      else if x == 1 {center + horizon},

    {
      reflection

      show table.cell.where(y: 0): it => strong(it)

      align(center)[
        #table(
          columns: 2,
          rows: 4,
          align: center + horizon,
          fill: (_, y) =>
            if y == 0 {gray.lighten(20%)}
            else {white},

          [Performance], [Matches (mts)],
          [Overperformed], [#overperformed],
          [Satisfactory], [#satisfactory],
          [Underperformed], [#underperformed],
          [Disabled], [#disabled],
        )
      ]
    },

    pie-chart(
      radius: 3,
      outer-label-radius: outer-label-radius,
      data-type: "mts",
      colors: (),
      (
        ("Over-\nperformed", overperformed, green),
        ("Satis-\nfactory", satisfactory, yellow),
        ("Under-\nperformed", underperformed, red),
        ("Disabled", disabled, gray),
      ),
    )
  )
}