#let nb-highlight(color: red, body) = {
  // Felix's
  box(fill: color, outset: 3pt, radius: 1.5pt)[
    #set align(center + horizon)
    #body
  ]
}

#let glossary-footnote(body) = [
  #footnote[See "#body" glossary entry]
]

#let vex-rule(body) = [
  #text(red.darken(20%))[
    *<#body>*
  ]
]

#let code-header(
  main: true,
  dest: none,
  body
) = {
  if main {
    body = "53D_HighStakes/" + body
  }

  if dest != none {
    body = link(dest)[
      #text(black)[
        _ #body _
      ]
    ]
  }

  align(center)[
    *#body*
  ]
}