#import "../globals.typ": frontmatter-page-counter, appendix-page-counter, program-page-counter

#let frontmatter-footer() = {
  context {
    frontmatter-page-counter.step()
    align(
      if calc.odd(here().page()) == true {
        right + bottom
      } else {
        left + bottom
      }
    )[
      #box(
        fill: gray,
        outset: 5pt,
        radius: 1.5pt,
        height: auto,
        width: 20pt,
      )[#align(center + horizon)[#frontmatter-page-counter.display("i")]]
    ]
    v(2em)
  }
}

#let appendix-footer(color: gray, updated: none) = {
  context {
    appendix-page-counter.step()
    align(left)[
      Updated #updated.display("[year]/[month]/[day]")
    ]
    align(
      if calc.odd(here().page()) == true {
        right
      } else {
        left
      }
    )[
      #box(
        fill: color,
        outset: 5pt,
        radius: 1.5pt,
        height: auto,
        width: 20pt,
      )[#align(center + horizon)[A-#counter(page).display()]]
      ]
    // v(2em)
  }
}

#let program-footer(color: blue) = {
  context {
    program-page-counter.step()
    align(
      if calc.odd(here().page()) == true {
        right + bottom
      } else {
        left + bottom
      }
    )[
      #box(
        fill: color,
        outset: 5pt,
        radius: 1.5pt,
        height: auto,
        width: 20pt,
      )[#align(center + horizon)[P-#counter(page).display()]]
    ]
    v(2em)
  }
}

#let side-margin-color(color: "") = {
  let margin-width = 35pt
  context {
    if calc.odd(here().page()) {
      align(left + horizon)[
        #rect(
          fill: color,
          height: 800pt,
          width: margin-width,
          radius: (top-right: 15pt, bottom-right: 15pt)
        )
      ]
    } else {
      align(right + horizon)[
        #rect(
          fill: color,
          height: 800pt,
          width: margin-width,
          radius: (top-left: 15pt, bottom-left: 15pt)
        )
      ]
    }
  }
}