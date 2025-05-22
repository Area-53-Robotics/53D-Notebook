#import "entries.typ": *
#import "colors.typ": *
#import "icons/icons.typ": *
#import "components/components.typ": *
#import "utils/utils.typ": *

#let notebook(
  team: "",
  organization: "",
  count: (current: 1, total: 1),
  cover: [],
  year: "",
  season: "",
  innovate: (
    date: none,
    event: none,
    description: none,
    pages: none,
    approach: none
  ),
  body,
) = {
  // Styling rules
  set text(font: "Libertinus Serif", size: 11pt)
  set page("us-letter")

  set footnote.entry(separator: none)

  show image: it => [
    #align(center)[
      #set text(font: "Virgil 3 YOFF")
      #it
    ]
  ]

  show link: it => [
    #text(fill: blue, [ _ #it _ ])
  ]

  show figure.caption: it => it.body

  show figure: it => align(center)[
    #it.body
    _ #it.caption _
  ]

  show raw.where(block: false): box.with(
    fill: gray.lighten(75%),
    inset: (x: 3pt, y: 0pt),
    outset: (y: 3pt),
    radius: 2pt,
  )

  include "components/codly.typ"
  show: codly-init.with()

  set raw(theme: "/assets/vscode_light.tmTheme")
  // show raw: set text(font: "JetBrains Mono")

  // Headings
  show heading: it => nb-heading(it)

  // Content
  page(
    margin: (rest: 0.5in),
    background: image("/assets/cover.png")
  )[
    #align(center)[
      #set text(font: "Nasalization", size: 35pt, fill: yellow)
      #team Engineering Notebook \
      #count.current of #count.total \
      #image("/assets/logos/logo.svg")
      #year \
      VEX Robotics Challenge \
      #season
    ]
  ]


  if innovate.event != none {
    pagebreak()
    pagebreak(to: "odd")

    page(
      margin: (rest: 0.5in),
      background: image("/assets/innovate-form.jpg")
    )[
      #place(
        top + left,
        dx: 54pt,
        dy: 52pt,
        text(size: 15pt, innovate.date.display("[year]/[month]/[day]"))
      )

      #place(
        top + left,
        dx: 290pt,
        dy: 52pt,
        text(size: 15pt, innovate.event)
      )

      #place(
        top + left,
        dx: 173pt,
        dy: 198pt,
        text(size: 15pt, team)
      )

      #place(
        top + left,
        dx: 27pt,
        dy: 250pt,
        box(width: 488pt, text(size: 14pt, innovate.description))
      )

      #place(
        top + left,
        dx: 27pt,
        dy: 433pt,
        box(width: 488pt, innovate.pages)
      )

      #place(
        top + left,
        dx: 27pt,
        dy: 584pt,
        box(width: 488pt, text(size: 13pt, innovate.approach))
      )
    ]
  }

  appendix-entry-counter.update(_ => 1)
  frontmatter-page-counter.update(_ => 1)
  counter(page).update(_ => 0)

  pagebreak()
  pagebreak(to: "odd")

  print-frontmatter-entries()

  pagebreak()
  pagebreak(to: "odd")

  counter(page).update(_ => first-page-number)

  print-entries()

  pagebreak()
  pagebreak(to: "odd")

  print-program-entries()

  pagebreak()
  pagebreak(to: "odd")

  print-appendix-entries()

  signature-list(chronological: true)
  signature-list(chronological: false)

  {
    show raw.where(block: false): it => it.text
    // entry-page-list()
  }
}