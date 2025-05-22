#import "../colors.typ": *
#import "../icons/icons.typ": *
#import "../globals.typ": team-members
#import "../template-packages.typ": showybox
#import showybox: showybox

#let admonition(type: "", title: none, body) = {
  assert(type in type-metadata, message: "Invalid admonition type given")
  let info = type-metadata.at(type)

  if title == none {
    title = info.name
  }

  box(
    grid(
      columns: (3em, 1fr),
      align(center + horizon)[#box(baseline: 30%, image(info.icon, height: 2em))],
      showybox(
        frame:(
          border-color: info.color,
          body-color: info.color.lighten(80%),
          thickness: (left: 4pt/*, right: 4pt, top: 4pt, bottom: 4pt*/),
          radius: 1.5pt,
        )
      )[
        #text(
          size: 15pt,
          fill: {if info.color != yellow {
            info.color
          } else {
            let title-color = info.color.darken(20%)
            title-color
          }}
        )[
          *#title*
        ]
        \
        #body
      ]
    )
  )
}

#let to-do(date: none, monthly-schedule: none, yearly-schedule: none, attendance: none, tasks) = {
  let schedule-statuses = ("On", "Behind", "Ahead", "Off")

  assert(
    type(date) == datetime,
    message: "To-do list date parameter needs to be of type \"datetime\""
  )

  if monthly-schedule != none {
    assert(monthly-schedule in schedule-statuses, message: "Invalid monthly schedule status")
  }

  if yearly-schedule != none {
    assert(yearly-schedule in schedule-statuses, message: "Invalid yearly schedule status")
  }

  admonition(type: "management", title: [To-Do: (#date.display("[year]/[month]/[day]"))])[
    #grid(
      columns: 2,
      align: left + horizon,
      inset: (x, _) => {(
        left: if x == 1 {3pt} else {0pt},
        rest: 0pt
      )},

      ..for (completed, task, members) in tasks {
        (
          {
            if completed {
              image("/template/tabler-icons/square-check-filled.svg", height: 1em)
            } else {
              image("/template/tabler-icons/square.svg", height: 1em)
            }
          },
          {
            assert(
              type(members) == array or type(members) == str,
              message: "Members to-do admonition parameter should be of type 'array' or type 'string'"
            )

            if type(members) == array {
              for member in members {
                assert(
                  member in team-members,
                  message: "Invalid team member in to-do admonition"
                )
              }
              task + " (" + members.join(", ") + ")"
            } else {
              assert(
                members == "Everyone",
                message: "The only valid string for the to-do admonition 'members' parameter is 'Everyone'"
              )
              task + " (Everyone)"
            }
          }
        )
      }
    )

    #if monthly-schedule != none or yearly-schedule != none or attendance != none [
      #v(-7pt)
      #line(length: 100%)
      #v(-7pt)
    ]

    #set list(spacing: 5pt)

    #if monthly-schedule != none [
      #if monthly-schedule == "Ahead" [
        - *Monthly Schedule Status:* #monthly-schedule of Schedule
      ] else [
        - *Monthly Schedule Status:* #monthly-schedule Schedule
      ]
    ]

    #if yearly-schedule != none [
      #if yearly-schedule == "Ahead" [
        - *Yearly Schedule Status:* #yearly-schedule of Schedule
      ] else [
        - *Yearly Schedule Status:* #yearly-schedule Schedule
      ]
    ]

    #if attendance != none [
      - *Attendance:* #attendance
    ]
  ]
}

#let decision-matrix-criteria(body) = [
  #admonition(type: "select", title: "Decision Matrix")[
    *Ranking Criteria:*
    #body

    *Number Ranking Key:*
    #set text(size: 13pt)
    #table(
      rows: 2,
      columns: (1fr, 1fr, 1fr, 1fr, 1fr),
      align: center + horizon,

      fill: (x, y) =>
        if x == 0 { green.lighten(10%) }
        else if x == 1 { yellow.lighten(10%) }
        else if x == 2 { red.lighten(10%) }
        else if x == 3 { red.darken(10%) }
        else if x == 4 { red.darken(40%) }
        else { white },

      [4], [3], [2], [1], [0],
      [Excellent], [Fair], [Poor], [Very Poor], [Incapable],
    )
  ]
]