#import "colors.typ": *
#import "globals.typ": *
#import "components/components.typ": *

#let create-entry(
  title: "",
  type: "",
  date: none,
  attendance: "",
  designed: "",
  witnessed: "",
  body
) = {
  // assert(
  //   type(date) == datetime,
  //   message: "Entry date parameter needs to be of type \"datetime\""
  // )

  assert(
    designed in team-members,
    message: "Invalid \"Designed By\""
  )

  assert(
    witnessed in team-members,
    message: "Invalid \"Witnessed By\""
  )

  for member in attendance {
    assert(
      member in team-members,
      message: "Invalid team member in the attendance list"
    )
  }

  entries.update(x => {
    x.push((
      title: title,
      type: type,
      date: date,
      attendance: attendance,
      designed: designed,
      witnessed: witnessed,
      body: body,
    ))
    x
  })
}

#let print-entries() = {
  context {
    for entry in entries.final() {
      [
        #let info = type-metadata.at(entry.type)
        #let type = entry.type

        #set page(
          header: [
            #title(
              color: info.color,
              beginning: [
                #nb_icon(label: type, size: 2.5em)
              ]
            )[
              #entry.title #h(1fr)
            ]
          ],

          footer: [
            #context {
              entry-page-counter.step()

              if calc.odd(here().page()) {
                table(
                  columns: (1fr, 1fr, 1fr, 1fr, 2fr, 35pt),
                  rows: (17pt, 17pt, 17pt, 17pt),
                  align: left + horizon,
                  stroke: none,

                  table.hline(start: 0, end: 4, stroke: black + 1pt, y: 0),
                  table.hline(start: 0, end: 4, stroke: black + 1pt, y: 1),
                  table.hline(start: 0, end: 4, stroke: black + 1pt, y: 2),
                  table.hline(start: 5, end: 6, stroke: black + 1pt, y: 2),
                  table.hline(start: 0, end: 5, stroke: black + 1pt, y: 3),
                  table.hline(start: 0, end: 5, stroke: black + 1pt, y: 4),

                  table.vline(start: 0, end: 4, stroke: black + 1pt, x: 0),
                  table.vline(start: 3, end: 4, stroke: black + 1pt, x: 1),
                  table.vline(start: 0, end: 4, stroke: black + 1pt, x: 4),
                  table.vline(start: 2, end: 4, stroke: black + 1pt, x: 5),

                  table.cell(colspan: 4, align: center)[
                    #link((page: query(selector(<notebook-toc>)).first().location().position().page, x: 0pt, y: 0pt))[
                      #text(fill: black)[
                        _ #entry.title _
                      ]
                    ]
                  ],
                  table.cell(colspan: 1, rowspan: 3, align: center + horizon)[
                    #icon-box(type: entry.type)
                  ],
                  [],
                  table.cell(colspan: 4)[Designed By: #signature(entry.designed)],
                  [],
                  table.cell(colspan: 4)[Witnessed By: #signature(entry.witnessed)],
                  table.cell(align: center + horizon, rowspan: 2)[
                    #box(
                      fill: info.color,
                      outset: 5pt,
                      radius: 1.5pt,
                      height: 20pt,
                      width: 20pt,
                      text(size: 14pt)[#counter(page).display()]
                    )
                  ],
                  table.cell(align: center)[#entry.date.display("[year]/[month]/[day]")],
                  table.cell(colspan: 4)[Attendance: #entry.attendance.join(", ")],
                )
              } else {
                table(
                  columns: (35pt, 2fr, 1fr, 1fr, 1fr, 1fr),
                  rows: (17pt, 17pt, 17pt, 17pt),
                  align: left + horizon,
                  stroke: none,

                  table.hline(start: 2, end: 7, stroke: black + 1pt, y: 0),
                  table.hline(start: 2, end: 7, stroke: black + 1pt, y: 1),
                  table.hline(start: 2, end: 7, stroke: black + 1pt, y: 2),
                  table.hline(start: 0, end: 1, stroke: black + 1pt, y: 2),
                  table.hline(start: 1, end: 7, stroke: black + 1pt, y: 3),
                  table.hline(start: 1, end: 7, stroke: black + 1pt, y: 4),

                  table.vline(start: 2, end: 4, stroke: black + 1pt, x: 1),
                  table.vline(start: 0, end: 4, stroke: black + 1pt, x: 2),
                  table.vline(start: 3, end: 4, stroke: black + 1pt, x: 5),
                  table.vline(start: 0, end: 4, stroke: black + 1pt, x: 6),

                  [],
                  table.cell(colspan: 1, rowspan: 3, align: center + horizon)[
                    #icon-box(type: entry.type)
                  ],
                  table.cell(colspan: 4, align: center)[
                    #link((page: query(selector(<notebook-toc>)).first().location().position().page, x: 0pt, y: 0pt))[
                      #text(fill: black)[
                        _ #entry.title _
                      ]
                    ]
                  ],
                  [],
                  table.cell(colspan: 4)[Designed By: #signature(entry.designed)],
                  table.cell(align: center + horizon, rowspan: 2)[
                    #box(
                      fill: info.color,
                      outset: 5pt,
                      radius: 1.5pt,
                      height: 20pt,
                      width: 20pt,
                      text(size: 14pt)[#counter(page).display()]
                    )
                  ],
                  table.cell(colspan: 4)[Witnessed By: #signature(entry.witnessed)],
                  table.cell(colspan: 4, align: right)[Attendance: #entry.attendance.join(", ")],
                  table.cell(align: center)[#entry.date.display("[year]/[month]/[day]")]
                )
              }
            }
          ],

          margin: (left: 5em, bottom: 11em, right: 5em),

          background: side-margin-color(color: info.color)
        )

        #counter(figure.where(kind: image)).update(0)
        #counter(figure.where(kind: table)).update(0)
        #counter(figure.where(kind: raw)).update(0)

        #entry.body <notebook-entry>
        #counter(footnote).update(0)
      ]
    }

    counter(page).update(_ => 0)
  }
}

#let create-frontmatter-entry(title: "", body) = {
  frontmatter-entries.update(x => {
    x.push((
      title: title,
      body: body,
    ))
    x
  })
}

#let create-appendix-entry(title: "", updated: none, body) = {
  appendix-entries.update(x => {
    x.push((
      title: title,
      updated: updated,
      body: body,
    ))
    x
  })
}

#let create-program-entry(title: "", body) = {
  program-entries.update(x => {
    x.push((
      title: title,
      body: body,
    ))
    x
  })
}

#let print-frontmatter-entries() = {
  context {
    for entry in frontmatter-entries.final() {
      [
        #set page(
          margin: (left: 5em, right: 5em),
          background: side-margin-color(color: gray),
          header: [
            #title[#entry.title]
          ],
          footer: frontmatter-footer()
        )

        #entry.body <notebook-frontmatter>
        #counter(footnote).update(0)
      ]
    }
  }
}

#let print-appendix-entries() = {
  context {
    for entry in appendix-entries.final() {
      [
        #set page(
          margin: (left: 5em, right: 5em),
          background: side-margin-color(color: gray),
          header: [
            #title(
              beginning: [Appendix #context appendix-entry-counter.display("A"):],
              beginning-fill: gray
            )[#entry.title]
          ],
          footer: appendix-footer(updated: entry.updated)
        )

        #entry.body <notebook-appendix>
        #counter(footnote).update(0)
        #appendix-entry-counter.step()
      ]
    }
  }
}

#let print-program-entries() = {
  context {
    for entry in program-entries.final() {
      [
        #set page(
          margin: (left: 5em, right: 5em),
          background: side-margin-color(color: blue),
          header: [
            #title(
              color: blue,
              beginning: [Program:],
              beginning-fill: blue
            )[#entry.title]
          ],
          footer: program-footer()
        )

        #entry.body <notebook-program>
        #counter(footnote).update(0)
      ]
    }

    counter(page).update(_ => 0)
  }
}