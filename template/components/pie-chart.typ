#import "../template-packages.typ": cetz, plot, chart

#let pie-chart(
  radius: 3.5,
  outer-label-radius: 125%,
  data-type: "", 
  colors: (),
  legend: false,
  data
) = {
  /*
  - Color gradient
  - Absolute color order
  - Relative color order
  */

  if data.len() == colors.len() {
    // If an absolute color order is given
    data = data.sorted(key: (
      (label, value),
    ) => value)

    for (index, color) in colors.enumerate() {
      colors.at(index) = (
        fill: if index == data.len() - 1 {color}
          else {color.lighten(60%)},
        stroke: if index == data.len() - 1 {color.darken(50%) + 2pt}
          else {none}
      )
    }
  } else if (data.first().len() == 3) and (colors.len() == 0) {
    // If colors are specifically assigned to each category
    data = data.sorted(key: (
      (label, value, color),
    ) => value)

    for (index, (label, value, color)) in data.enumerate() {
      colors.push((
        fill: if index == data.len() - 1 {color}
          else {color.lighten(60%)},
        stroke: if index == data.len() - 1 {color.darken(50%) + 2pt}
          else {none}
      ))

      data.at(index) = (label, value)
    }
  } else if type(colors) == gradient {
    // If a gradient is supplied
    data = data.sorted(key: (
      (label, value),
    ) => value)
    
    let new-colors = ()

    for (index, data-value) in data.enumerate() {
      let color = colors.sample(100% * ((index + 1) / data.len()))

      new-colors.push((
        fill: if index == data.len() - 1 {color}
          else {color.lighten(75%)},
        stroke: if index == data.len() - 1 {color.darken(50%) + 2pt}
          else {none}
      ))
    }
    
    colors = new-colors
  } else if (data.first().len() == 2) and (colors == ()) {
    // Defaults to rainbow coloring if no other gradient is provided
    data = data.sorted(key: (
      (label, value),
    ) => value)
    
    for (index, data-value) in data.enumerate() {
      let color = gradient.linear(..color.map.rainbow).sample(100% * ((index + 1) / data.len()))

      colors.push((
        fill: if index == data.len() - 1 {color}
          else {color.lighten(75%)},
        stroke: if index == data.len() - 1 {color.darken(50%) + 2pt}
          else {none}
      ))
    }
  } else {
    panic("Incorrect value-color formatting for the pie chart")
  }

  cetz.canvas({
    import cetz.draw: *

    chart.piechart(
      data,
      start: 90deg,
      stop: 450deg,
      gap: 1deg,
      value-key: 1,
      label-key: 0,
      radius: radius,
      slice-style: colors,
      inner-radius: 0,
      inner-label: (
        content: "%",
        radius: 120%
      ),
      outer-label: (
        content: (value, label) => 
          if legend == false {
            let string = label + " (" + str(value)
            string = string.replace(" ", "\n")
            string = string + " " + data-type + ")"
            align(center, string)
          } else {
            let string = str(value) + " " + data-type
            align(center, string)
          },
        radius: outer-label-radius
      ),
      legend: (
        label: if legend == false {none} else {"LABEL"}
      )
    )
  })
}
