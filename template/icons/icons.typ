#import "../colors.typ": *

#let nb_question_mark = bytes(read("seal-question-red.svg"))
#let nb_light_bulb = bytes(read("lightbulb-alt-orange.svg"))
#let nb_target = bytes(read("bullseye-arrow-yellow.svg"))
#let nb_shapes = bytes(read("shapes-green.svg"))
#let nb_file = bytes(read("file-code-blue.svg"))
#let nb_chart = bytes(read("chart-simple-purple.svg"))
#let nb_book = bytes(read("book-open-pink.svg"))
#let nb_clipboard = bytes(read("clipboard-list-alt-lime.svg"))
#let nb_folder = bytes(read("folder-blue-gray.svg"))
#let nb_award = bytes(read("award-alt-amber.svg"))

#let nb_info = bytes(read("circle-information-deep-orange.svg"))
#let nb_superscript = bytes(read("superscript-teal.svg"))
// #let nb_warning = bytes(read("warning.svg"))
// #let nb_web = bytes(read("web.svg"))
// #let nb_quotes = bytes(read("quotes.svg"))
// #let nb_function = bytes(read("function.svg"))

// Images are stored undecoded so they can be changed later
#let type-metadata = (
  "identify": (icon: nb_question_mark, color: red, name: "Identify"),
  "understand": (icon: nb_book, color: pink300, name: "Understand"),
  "brainstorm": (icon: nb_light_bulb, color: orange, name: "Brainstorm"),
  "select": (icon: nb_target, color: yellow, name: "Select"),
  "plan": (icon: nb_clipboard, color: lime, name: "Plan"),
  "build": (icon: nb_shapes, color: green, name: "Build"),
  "program": (icon: nb_file, color: blue, name: "Program"),
  "test": (icon: nb_chart, color: purple, name: "Test"),
  "management": (icon: nb_folder, color: blue-gray, name: "Management"),
  "competition": (icon: nb_award, color: amber, name: "Competition"),
  "note": (icon: nb_info, color: deep-orange, name: "Note"),
  // "warning": (icon: nb_warning, color: red, name: "Warning"),
  // "example": (icon: nb_web, color: purple, name: "Example"),
  // "quote": (icon: nb_quotes, color: gray, name: "Quote"),
  "equation": (icon: nb_superscript, color: teal, name: "Equation"),
)

// Returns the raw image data, not image content
// You'll still need to run image.decode on the result
#let nb_change_icon_color(raw_icon: "", fill: red) = {
  return bytes(raw_icon.replace("<path", "<path style=\"fill: " + fill.to-hex() + "\""))
}

#let nb_change_icon_stroke(raw_icon: "", stroke: red) = {
  return bytes(raw_icon.replace("stroke=\"currentColor\"", "stroke=\"" + stroke.to-hex() + "\""))
}

#let nb_icon(label: "", size: 0.7em) = {
  let data = type-metadata.at(label)
  let raw_icon = data.icon
  
  image(raw_icon, height: size)
}

#let icon-box(type: "") = {
  let nb_solid_labels = true;
  let info = type-metadata.at(type)

  if nb_solid_labels == false {
    box(
      fill: info.color.lighten(40%),
      radius: 1.5pt,
      height: 0.5in,
      width: 2in,
      stroke: (paint: info.color, thickness: 1pt, dash: "dashed")
    )
  } else {
    box(
      fill: info.color.lighten(40%),
      radius: 1.5pt,
      height: 0.5in,
      width: 2in,
      stroke: (paint: info.color, thickness: 1pt,/* dash: "dashed"*/)
    )[
      #set text(16pt)

      #align(center + horizon)[
        #box(baseline: 35%, nb_icon(label: type, size: 2em)) #h(7pt) *#info.name*
      ]
    ]
  }
}