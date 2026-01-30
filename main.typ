#import "template/template.typ": *
#include "frontmatter/frontmatter-entries.typ"
#include "entries/entries.typ"
#include "appendix/appendix-entries.typ"
#include "program/program-entries.typ"


#show: notebook.with(
  team: "53D",
  organization: "Area 53",
  count: (current: 1, total: 1),
  cover: circle(align(center + horizon)[#image("/assets/logos/logo.svg", width: 110%)], fill: black),
  year: "2025 - 2026",
  season: "Push Back ",
  innovate: (
    date: datetime(year: 2025, month: 12, day: 22),
    event: "Sugar Rush",
    description: "Our robot has a structure that allows us to pass under the higher/long/side goals. This gives us greater mobility and the ability to pick up blocks that are in locations that we previously couldn't pick them up from. These benefits let us score more points and move around and avoid robots faster and more easily. The structure of our robot also allows us to extend our intake to score on the higher/long/side goals.",
    approach: "The part of our structure that benefits us the most is the upper intake being extendable to reach higher. The rest of the structure is also low enough that this can safely pass under the goals and still gives us space for other robot functions and good ability to reach in and fix stuff better than we could previously even with a compact system.",
    pages: [
      #set text(size: 12pt)
      #context { 
        let valid-entries = entries.final().enumerate()

        valid-entries = valid-entries.filter(
          entry => {
            entry.last().title.match("Intake v2") != none
          }
        )

        let markers = query(selector(<notebook-entry>))

        for (temp-index, (absolute-index, entry)) in valid-entries.enumerate() {
          let page-number = counter(page).at(
            markers.at(absolute-index).location(),
          ).at(0)
          entry.page-number = page-number

          let location = markers.at(absolute-index).location()
          entry.position = location.position()

          valid-entries.at(temp-index) = entry
        }

        let sliced-mini-toc(
          list,
          start: 0,
          end: 6,
          shorten-names: false
        ) = {
          let previous-date

          for entry in list.slice(start, end) {
            (
              link((page: entry.position.page, x: 0pt, y: 0pt))[
                #let info = type-metadata.at(entry.type)

                #let date = entry.date.display("[year]/[month]/[day]")

                #if shorten-names and info.name.len() + 2 + entry.title.len() > 23 {
                  let available-chars = 23 - info.name.len() - 2 - 3
                  entry.title = entry.title.slice(0, available-chars) + "..."
                }

                #box(baseline: 15%, nb_icon(label: entry.type, size: 1em))
                #h(5pt)
                #if previous-date == entry.date [
                  #h(27pt) _#text(fill: black)[|]_ #h(27pt)
                ] else {
                  box(fill: info.color.lighten(30%), radius: 1pt, height: 1em, baseline: 15%)[
                    #align(center + horizon)[
                      #text(fill: black)[
                        _#h(2pt) #date #h(2pt)_
                      ]
                    ]
                  ]
                }
                #box(fill: info.color.lighten(30%), radius: 1pt, height: 1em, baseline: 15%)[
                  #align(center + horizon)[
                    #text(fill: black)[
                      _#h(2pt) #info.name: #entry.title #h(2pt)_
                    ]
                  ]
                ]
                #box(
                  width: 1fr,
                  line(
                    length: 100%,
                    stroke: (
                      dash: "dotted",
                    ),
                  ),
                )
                #text(fill: black)[_ #entry.page-number _]
              ],
              previous-date = entry.date
            )
          }
        }

        if valid-entries.len() <= 6 {
          stack(
            dir: ttb,
            spacing: 0.27em,
            ..sliced-mini-toc(valid-entries, start: 0, end: valid-entries.len())
          )
        } else if valid-entries.len() <= 12 {
          grid(
            columns: 2,
            inset: (x, _) => if calc.even(x) {
              return (right: 5pt, rest: 0pt)
            } else {
              return (left: 5pt, rest: 0pt)
            },
            grid.vline(x: 1, stroke: black + 1pt),
            stack(
              dir: ttb,
              spacing: 0.27em,
              ..sliced-mini-toc(valid-entries, start: 0, end: 6, shorten-names: true)
            ),
            stack(
              dir: ttb,
              spacing: 0.27em,
              ..sliced-mini-toc(valid-entries, start: 6, end: valid-entries.len(), shorten-names: true)
            )
          )
        }
      }
    ]
  )
)
