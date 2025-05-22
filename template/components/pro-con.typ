#include "../colors.typ"

#let pro-con(name: none, image: [], image-width: 40%, pros: [], cons: [], description:[] , notes: []) = [
  #assert(name != none, message: "No name given")
  #assert(description != [], message: "No description given")
  #assert(pros != [], message: "No pros recorded")
  #assert(cons != [], message: "No cons recorded")

  #if notes != [] {
    table(
      columns: (image-width, 1fr, 1fr),
      rows: 6,
      align: left + top,
      table.cell(align: center, fill: gray,colspan: 3)[*#name*],
      table.cell(align: center, colspan: 3)[#description],
      table.cell(align: center + horizon, rowspan: 4)[#image],
      table.cell(fill: green)[*Pros*],
      table.cell(fill: red)[*Cons*],
      pros,
      cons,
      table.cell(colspan: 2, fill: gray)[*Notes*],
      table.cell(colspan: 2)[
        #notes
      ],
    )
  } else {
    table(
      columns: (image-width, 1fr, 1fr),
      rows: 4,
      align: left + top,

      table.cell(align: center, fill: gray, colspan: 3)[*#name*],
      table.cell(align: center, colspan: 3)[#description],
      table.cell(align: center + horizon, rowspan: 2)[#image],
      table.cell(fill: green)[*Pros*],
      table.cell(fill: red)[*Cons*],
      pros,
      cons,
    )
  }
]

#let gear-ratio-pro-con(
  name: none,
  image: [],
  motor-cartridge: none,
  gear-ratio: none,
  simplified-ratio: none,
  rpm: none,
  wheel-size: none,
  speed: none,
  pros: [],
  cons: [],
  notes: []
) = {
  table(
    columns: (1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr, 1fr),
    rows: 8,
    align: left + top,

    table.header(table.cell(align: center, fill: gray, colspan: 10)[*#name*]),
    
    table.cell(align: left + horizon, colspan: 5)[*Motor Cartridge:* #motor-cartridge],
    table.cell(align: left + horizon, colspan: 5)[*Wheel Size:* #wheel-size in.],
    table.cell(align: left + horizon, colspan: 5)[*Gear Ratio*: #gear-ratio Ratio],
    table.cell(align: left + horizon, colspan: 5)[*Simplified Ratio:* #simplified-ratio Ratio],
    table.cell(align: left + horizon, colspan: 5)[*RPM:* #rpm RPM],
    table.cell(align: left + horizon, colspan: 5)[*Speed:* #speed in/s],
    table.cell(align: center + horizon, rowspan: 4, colspan: 4)[#image],
    table.cell(fill: green, colspan: 3)[*Pros*],
    table.cell(fill: red, colspan: 3)[*Cons*],
    table.cell(colspan: 3)[#pros],
    table.cell(colspan: 3)[#cons],
    table.cell(colspan: 6, fill: gray)[*Notes*],
    table.cell(colspan: 6)[#notes],
  )
}