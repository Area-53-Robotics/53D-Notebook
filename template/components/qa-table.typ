#import "../colors.typ": *

#let qa-table(question: none, answer: none, significance: none) = {
  table(
    columns: 2,
    fill: (_, y) =>
      if calc.even(y) {gray.lighten(20%)},

    [Question], [Answer],
    table.cell(rowspan: 3, question), answer,
    [Significance],
    significance
  )
}