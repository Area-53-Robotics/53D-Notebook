#import "/template/entries.typ": *
#import "/template/globals.typ": program-entries

#show: create-program-entry.with(
  title: "File Organization"
)

#let icon(color: none, icon) = {
  box(
    baseline: 17.5%,
    height: 1em,
  )[
    #if (color != none) {
      image(nb_change_icon_stroke(raw_icon: read("/template/tabler-icons/" + icon + ".svg"), stroke: color))
    } else {
      image("/template/tabler-icons/" + icon + ".svg")
    }
  ]
}

#let line-fill = {
  box(width: 1fr, baseline: -0.3em, line(length: 100%, stroke: (dash: "dotted")))
}

#context [
  #let program_entries = query(selector(<notebook-program>))

  #let program-file(name: none, label: none, body) = [
    #link(query(selector(label)).at(0).location())[
      #text(fill: black)[
        _ #name #line-fill *#body, docs on pg. P-#counter(page).at(query(selector(label)).at(0).location()).at(0)* _
      ]
    ]
  ]

  #let program-folder(name: none, num: none, bold: false, under: false, body) = [
    #link(program_entries.at(num).location())[
      #text(fill: black)[
        _ #name _
        #line-fill
        #if bold == true and under == false [
          _ *#body, docs begin on pg. P-#counter(page).at(program_entries.at(num).location()).at(0)* _
        ] else if bold == false and under == true [
          _ #underline[#body, docs begin on pg. P-#counter(page).at(program_entries.at(num).location()).at(0)] _
        ] else if bold == true and under == true [
          _ #underline[*#body, docs begin on pg. P-#counter(page).at(program_entries.at(num).location()).at(0)*] _
        ]
      ]
    ]
  ]

  #set list(
    indent: 1em,
    marker: []
  )

  - #icon("folder-root") 53D_HighStakes #line-fill The root folder of the repository
    - #icon("folder-cog") .github #line-fill Config files for our GitHub workflows
    - #icon("folder-cog") firmware #line-fill PROS firmware code
    - #icon("folder-open") include #line-fill C++ header files
      - #icon("folder") lemlib #line-fill LemLib header files
      - #icon("folder") liblvgl #line-fill LVGL header files
      - #icon("folder") pros #line-fill PROS header files
      - #icon("folder-open") subsystemHeaders #line-fill Individual subsystem headers
        - #icon(color: purple, "brand-cpp") ladybrown.hpp
        - #icon(color: purple, "brand-cpp") pneumatics.hpp
      - #icon(color: purple, "brand-cpp") api.h
      // - #icon(color: purple, "brand-cpp") autonomous.hpp
      // - #icon(color: purple, "brand-cpp") autonSelector.hpp
      - #icon(color: purple, "brand-cpp") chassis.hpp
      - #icon(color: purple, "brand-cpp") global.hpp
      - #icon(color: purple, "brand-cpp") main.h
    - #icon("folder-open") #program-folder(name: "src", num: 1, bold: true, under: true)[Competition code for the robot]
      - #icon("folder-open") #program-folder(name: "subsystemFiles", num: 2, bold: true, under: false)[Individual subsystem code]
        - #icon(color: blue, "brand-cpp") #program-file(name: "ladybrown.cpp", label: <ladybrown.cpp>)[Ladybrown code and helper functions]
        - #icon(color: blue, "brand-cpp") #program-file(name: "pneumatics.cpp", label: <pneumatics.cpp>)[Clamp, ring rush, and goal rush code]
      - #icon(color: blue, "brand-cpp") #program-file(name: "autonomous.cpp", label: <autonomous.cpp>)[Autonomous period program]
      - #icon(color: blue, "brand-cpp") #program-file(name: "chassis.cpp", label: <chassis.cpp>)[Autonomous robot movement functions]
      - #icon(color: blue, "brand-cpp") #program-file(name: "global.cpp", label: <global.cpp>)[Global object declarations such as motors]
      - #icon(color: blue, "brand-cpp") #program-file(name: "main.cpp", label: <main.cpp>)[Robot initialization, disabled period, and driver control code]
      // - #icon(color: blue, "brand-cpp") #program-file(name: "opcontrol.cpp", label: <opcontrol.cpp>)[Driver control period code]
    - #icon("brand-git") .gitignore #line-fill Git config file
    - #icon(color: orange, "letter-m") common.mk #line-fill PROS build configs
    - #icon(color: orange, "letter-m") Makefile #line-fill PROS build configs
    - #icon("align-justified") project.pros #line-fill Program upload configurations such as program title and slot
    - #icon(color: blue.darken(30%), "info-circle") README.md #line-fill GitHub repository description
]