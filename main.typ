#import "template/template.typ": *
#include "frontmatter/frontmatter-entries.typ"
#include "entries/entries.typ"
#include "appendix/appendix-entries.typ"
#include "program/program-entries.typ"


#show: notebook.with(
  team: "53D",
  organization: "Area 53",
  count: (current: 3, total: 3),
  cover: circle(align(center + horizon)[#image("/assets/logos/logo.svg", width: 110%)], fill: black),
  year: "2024 - 2025",
  season: "High Stakes",
  innovate: (
    date: datetime(year: 2025, month: 3, day: 8),
    event: "Maryland States Championship",
    description: "Our mobile goal rush mechanism gives us significant advantages in a match. First, with its extended reach, we can grab a mobile goal from the autonomous line before the opposing team has a chance to take it, while also interfering with the enemy alliance's autonomous route by disrupting the mobile goal. Second, the mobile goal rush mechanism would allow us to clamp onto mobile goals that the enemy team posses. We can pull the mobile goal from their clamp or pull them out of the corner.",
    approach: "The most innovative part of the mobile goal rush mechanism is at the end of the mobile goal rush mechanism, which is the clamp. This clamp behaves similar to a fish hook. When we activate the mobile goal rush mechanism, the clamp slides under the mobile goal's base. When we deactivate the clamp, the clamp hooks on the mobile goal's base, allowing us to drag the mobile goal.",
    pages: [
      #set text(size: 12pt)
      #context {
        let valid-entries = entries.final().enumerate()

        valid-entries = valid-entries.filter(
          entry => {
            entry.last().title.match("Goal Rush Mechanism v1") != none
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
