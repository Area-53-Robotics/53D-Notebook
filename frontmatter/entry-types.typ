#import "/template/template.typ": *

#show: create-frontmatter-entry.with(
  title: "Notebook Entry Types"
)

Entries all have 1 out of 10 types displayed in the top left corner, labeled at the bottom left or right corner, and shown in the table of contents. The 7 types with a black border are part of the engineering design process.

Here are the existing types:

#align(center)[
  #set text(size: 14pt)
  #grid(
    columns: (auto, auto, auto),
    rows: 8,
    gutter: 10pt,
    align: center + horizon,
    stroke: (x, y) => if x == 0 and ((y == 0) or ((y > 1) and (y < 8))) {
      (left: (
        paint: black,
        thickness: 2pt,
      ))
    },

    grid.cell(inset: (x: 10pt))[#nb_icon(label: "identify", size: 3em)],
    [*Identify the Problem*],
    icon-box(type: "identify"),

    grid.cell(inset: (x: 10pt))[#nb_icon(label: "understand", size: 3em)],
    [*Understand the Concepts*],
    icon-box(type: "understand"),

    grid.cell(inset: (x: 10pt))[#nb_icon(label: "brainstorm", size: 3em)],
    [*Brainstorm Solutions*],
    icon-box(type: "brainstorm"),

    grid.cell(inset: (x: 10pt))[#nb_icon(label: "select", size: 3em)],
    [*Select the Best Solution*],
    icon-box(type: "select"),

    grid.cell(inset: (x: 10pt))[#nb_icon(label: "plan", size: 3em)],
    [*Plan the Solution*],
    icon-box(type: "plan"),

    grid.cell(inset: (x: 10pt))[#nb_icon(label: "build", size: 3em)],
    [*Build the Solution*],
    icon-box(type: "build"),

    grid.cell(inset: (x: 10pt))[#nb_icon(label: "program", size: 3em)],
    [*Program the Solution*],
    icon-box(type: "program"),

    grid.cell(inset: (x: 10pt))[#nb_icon(label: "test", size: 3em)],
    [*Test the Solution*],
    icon-box(type: "test"),

    grid.cell(inset: (x: 10pt))[#nb_icon(label: "management", size: 3em)],
    [*Team Management*],
    icon-box(type: "management"),

    grid.cell(inset: (x: 10pt))[#nb_icon(label: "competition", size: 3em)],
    [*Competition Reflection*],
    icon-box(type: "competition"),
  )
]