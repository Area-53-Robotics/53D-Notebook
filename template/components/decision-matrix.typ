#import "../colors.typ": *

#let decision-matrix(weighted: false, criteria: (), choices: (), body: []) = {
  set text(size: 13pt)

  choices = choices.map(
    choice => {
      let new-choice = ()
      let unweighted-total = 0
      let weighted-total = 0

      for (index, value) in choice.enumerate() {
        if type(value) == str {
          new-choice.push(value)
        } else {
          let weighted-value = value * (criteria.at(index - 1).last())

          unweighted-total += value
          weighted-total += weighted-value

          new-choice.push((
            unweighted: value,
            weighted: weighted-value,
            fill-color: if value == 4 {
              green.lighten(10%)
            } else if value == 3 {
              yellow.lighten(10%)
            } else if value == 2 {
              red.lighten(10%)
            } else if value == 1 {
              red.darken(10%)
            } else {
              red.darken(40%)
            }
          ))
        }
      }
      new-choice.push((
        unweighted-total: unweighted-total,
        weighted-total: weighted-total,
      ))
      new-choice
    }
  )

  let highest = (
    unweighted: (indexes: (), value: 0),
    weighted: (indexes: (), value: 0)
  )

  for (index, choice) in choices.enumerate() {    
    if choice.last().unweighted-total > highest.unweighted.value {
      highest.unweighted.indexes.push(index)
      highest.unweighted.indexes = highest.unweighted.indexes.slice(highest.unweighted.indexes.len() - 1)
      highest.unweighted.value = choice.last().unweighted-total
    } else if choice.last().unweighted-total == highest.unweighted.value {
      highest.unweighted.indexes.push(index)
    }

    if choice.last().weighted-total > highest.weighted.value {
      highest.weighted.indexes.push(index)
      highest.weighted.indexes = highest.weighted.indexes.slice(highest.weighted.indexes.len() - 1)
      highest.weighted.value = choice.last().weighted-total
    } else if choice.last().weighted-total == highest.weighted.value {
      highest.weighted.indexes.push(index)
    }
  }

  for (index, choice) in choices.enumerate() {
    if index in highest.unweighted.indexes {
      choice.last().insert("unweighted-bold", true)
    } else {
      choice.last().insert("unweighted-bold", false)
    }

    if index in highest.weighted.indexes {
      choice.last().insert("weighted-bold", true)
    } else {
      choice.last().insert("weighted-bold", false)
    }
  }

  let abs-unweighted-total = 0
  let abs-weighted-total = 0

  for choice in choices {
    abs-unweighted-total += choice.last().unweighted-total
    abs-weighted-total += choice.last().weighted-total
  }

  let unweighted-mean = abs-unweighted-total / choices.len()
  let weighted-mean = abs-weighted-total / choices.len()

  let unweighted-deviation-sum = 0
  let weighted-deviation-sum = 0

  for choice in choices {
    unweighted-deviation-sum += calc.pow(choice.last().unweighted-total - highest.unweighted.value, 2)
    weighted-deviation-sum += calc.pow(choice.last().weighted-total - highest.weighted.value, 2)
  }

  let unweighted-standard-deviation = calc.sqrt(unweighted-deviation-sum / choices.len())
  let weighted-standard-deviation = calc.sqrt(weighted-deviation-sum / choices.len())

  choices = choices.map(
    choice => {
      let unweighted-z-score = (highest.unweighted.value - choice.last().unweighted-total) / unweighted-standard-deviation
      
      let unweighted-total-fill-color = if unweighted-z-score == 0 {green.lighten(10%)}
      else if unweighted-z-score < 1 {yellow.lighten(10%)}
      else if unweighted-z-score < 2 {red.lighten(10%)}
      else if unweighted-z-score < 3 {red.darken(10%)}
      else {red.darken(40%)}

      choice.last().insert("unweighted-total-fill-color", unweighted-total-fill-color)

      let weighted-z-score = (highest.weighted.value - choice.last().weighted-total) / weighted-standard-deviation

      let weighted-total-fill-color = if weighted-z-score == 0 {green.lighten(10%)}
      else if weighted-z-score < 1 {yellow.lighten(10%)}
      else if weighted-z-score < 2 {red.lighten(10%)}
      else if weighted-z-score < 3 {red.darken(10%)}
      else {red.darken(40%)}

      choice.last().insert("weighted-total-fill-color", weighted-total-fill-color)

      choice
    }
  )

  if weighted == false {
    table(
      align: center + horizon,
      columns: choices.len() + 1,
      rows: criteria.len() + 2,

      table.vline(start: 0, end: 1, stroke: none, x: 0),
      table.hline(start: 0, end: 1, stroke: none, y: 0),

      table.header(
        [],
        ..for (index, choice) in choices.enumerate() {
          let cell = table.cell
          if index in highest.unweighted.indexes {
            (cell[*#choice.first()*],)
          } else {
            (cell[#choice.first()],)
          }
        },
      ),

      ..for (index, criterion) in criteria.enumerate() {
        (
          criterion.first(),
          ..for (index2, choice) in choices.enumerate() {
            let cell = table.cell.with(fill: choice.at(index + 1).fill-color)
            if index2 in highest.unweighted.indexes {
              (cell[*#choice.at(index + 1).unweighted*],)
            } else {
              (cell[#choice.at(index + 1).unweighted],)
            }
          }
        )
      },
      table.cell(fill: gray.lighten(10%))[Score],
      ..for (index, choice) in choices.enumerate() {
        let cell = table.cell.with(fill: choice.last().unweighted-total-fill-color)
        if index in highest.unweighted.indexes {
          (cell[*#choice.last().unweighted-total*],)
        } else {
          (cell[#choice.last().unweighted-total],)
        }
      },
    )
  } else {
    table(
      align: center + horizon,
      columns: choices.len() + 2,
      rows: criteria.len() + 2,

      table.vline(start: 0, end: 1, stroke: none, x: 0),
      table.hline(start: 0, end: 1, stroke: none, y: 0),

      table.header(
        [],
        table.cell(fill: purple.lighten(20%).desaturate(30%))[Weight],
        ..for (index, choice) in choices.enumerate() {
          let cell = table.cell
          if index in highest.weighted.indexes {
            (cell[*#choice.first()*],)
          } else {
            (cell[#choice.first()],)
          }
        },
      ),
      ..for (index, criterion) in criteria.enumerate() {
        (
          criterion.first(),
          table.cell(fill: purple.lighten(70%))[#str(criterion.last())x],
          ..for (index2, choice) in choices.enumerate() {
            let cell = table.cell.with(fill: choice.at(index + 1).fill-color)
            if index2 in highest.weighted.indexes {
              (cell[*#choice.at(index + 1).weighted*],)
            } else {
              (cell[#choice.at(index + 1).weighted],)
            }
          }
        )
      },
      table.cell(fill: gray.lighten(10%))[Score],
      table.cell(fill: purple.lighten(70%))[#sym.dash.em],
      ..for (index, choice) in choices.enumerate() {
        let cell = table.cell.with(fill: choice.last().weighted-total-fill-color)
        if index in highest.weighted.indexes {
          (cell[*#choice.last().weighted-total*],)
        } else {
          (cell[#choice.last().weighted-total],)
        }
      },
    )
  }
}

#let double-decision-matrix(criteria: (), choices: (), body: []) = [
  #show: align.with(center)

  = Unweighted Decision Matrix
  #decision-matrix(
    weighted: false,
    criteria: criteria,
    choices: choices
  )

  #body

  = Weighted Decision Matrix
  #decision-matrix(
    weighted: true,
    criteria: criteria,
    choices: choices
  )
]