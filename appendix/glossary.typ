#import "/template/template.typ": *

#glossary-entry(
  title: "Area 53",
  category: "management",
  definition: [
    The name of our organization. Consists of 6 teams/squads from A-F.
])

#glossary-entry(
  title: "Spin Up",
  category: "competition",
  definition: [
    The 2022-23 VEX Robotics Challenge. It involved shooting frisbee-like discs into elevated baskets, scoring rollers, and expanding during the endgame.
])

#glossary-entry(
  title: "RPM",
  category: "build",
  definition: [
    An acronym for "Rotations per Minute." Used to interpret the speed of motors and motorized subsystems.
])

#glossary-entry(
  title: "Typst",
  category: "program",
  definition: [
    A programming language similar to Markdown and LaTeX. It is used to write formatting instructions that get automatically rendered into a printable PDF.
])

#glossary-entry(
  title: "PROS",
  category: "program",
  definition: [
    An API developed by students at Purdue SIGBots, used to control VEX robots. It functions as an alternative to VEXCode V5.
])

#glossary-entry(
  title: "Python",
  category: "program",
  definition: [
    A general purpose, high-level programming language primarily used for data science. We utilize it to create graphs and other visual representations of data collected during our "Test" phases.
])

#glossary-entry(
  title: "Bash",
  category: "program",
  definition: [
    A command-line interface shell program used in macOS and Linux. The equivalent of it for Windows is Windows PowerShell.
])

#glossary-entry(
  title: "Slip Gear",
  category: "build",
  definition: [
    A slip gear is a gear that has several consecutive teeth shaven off, so that another gear driven by the slip gear will "slip" when it rotates to the section of the slip gear that has no teeth. Slip gears are most frequently utilized in catapults.
  ]
)

#glossary-entry(
  title: "Auton",
  category: "program",
  definition: [
    Means one of the following:
    1. The autonomous phase of a VRC match
    2. The code for the autonomous phase of a VRC match
  ],
)

#glossary-entry(
  title: "CAD",
  category: "select",
  definition: [
    An acronym for "Computer Aided Design". CAD programs are used at the industry level to plan out and test designs digitally. 53D uses Onshape as our CAD program.
])

#glossary-entry(
  title: "Onshape",
  category: "select",
  definition: [
    A cloud-based CAD program with a readily available educational license. 53D uses it to plan out designs digitally before the "Build" phase.
])

#glossary-entry(
  title: "Git",
  category: "program",
  definition: [
    A version control system that tracks the changes made to the source code of a project. It allows the user to create checkpoints called "commits" and develop multiple branches of the project simultaneously.
  ],
)

#glossary-entry(
  title: "GitHub",
  category: "program",
  definition: [
    A commonly-used platform to store and manage git repositories.
  ],
)

#glossary-entry(
  title: "Visual Studio Code (VSCode)",
  category: "program",
  definition: [
    A code editor developed by Microsoft with an embedded Git interface.
  ],
)

#glossary-entry(
  title: "LVGL",
  category: "program",
  definition: [
    An acronym for "Light and Versatile Graphics Library". It is used to create embedded GUIs into microprosessors such as the VEX brain.
  ],
)

#glossary-entry(
  title: "Repository",
  category: "program",
  definition: [
    A centralized digital storage that developers use to make and manage changes to an application's source code.
  ],
)

#glossary-entry(
  title: "PID",
  category: "program",
  definition: [
    A controller for subsystems that creates efficient and accurate movements. It has three terms that are added together to calculate output:
    - #underline[*P*]roportional term
    - #underline[*I*]ntegral term
    - #underline[*D*]erivative term
  ],
)

#glossary-entry(
  title: "Boxing",
  category: "build",
  definition: [
    A building technique that involves placing one C-channel into another and connecting them using long screws with spacers. This increases the stability of the subsystem it is used on.
  ],
)

#glossary-entry(
  title: "Telemetry",
  category: "program",
  definition: [
    The collection of data from sensors on the robot.
  ],
)

#glossary-entry(
  title: "AWP",
  category: "competition",
  definition: [
    An acronym for Autonomous Win Point.
  ],
)

#glossary-entry(
  title: "C++",
  category: "program",
  definition: [
    An object-oriented programming language used in VEXCode V5 and PROS.
  ],
)

#glossary-entry(
  title: "Meta",
  category: "competition",
  definition: [
    What is generally agreed upon by the VRC community to be the best (or one of the best strategies) to approach the game challenge.
  ],
)

#glossary-entry(
  title: "Over Under",
  category: "competition",
  definition: [
    The 2023-24 VEX Robotics Challenge. It involved scoring triangular-prism-shaped balls into goals and elevating during the endgame.
  ],
)

#glossary-entry(
  title: "Tipping Point",
  category: "competition",
  definition: [
    The 2021-22 VEX Robotics Challenge. It involved scoring rings onto mobile goals and balancing on a seesaw during the endgame.
  ]
)

#glossary-entry(
  title: "Pointer",
  category: "program",
  definition: [
    A variable that stores the memory address of another variable or object. One of their primary uses is as a parameter to a function, removing the need to copy objects over and over.
  ]
)


// Old Glossary Entries
/*
#glossary-entry(
  title: "API",
  definition: [
    Acronym for application programming interface. It is a translation layer between
    two pieces of software.
  ],
)

#glossary-entry(
  title: "Singleton Pattern",
  definition: [
  A software design pattern where a class is only instantiated once.
])

#glossary-entry(
  title: "Mutual Exclusion",
  definition: [
    A software design pattern where a shared resource can only be accessed by a
    single thread of execution at a time. It is often used to prevent race
    conditions.
  ],
)

#glossary-entry(
  title: "Skid Steer",
  definition: [
    A style of vehicle where the wheels have a fixed alignment. This is typically
    seen on heavy equipment like front loaders.
  ],
)

#glossary-entry(title: "Parallelism", definition: [
  The process of running code in parallel across multiple cores.
])

#glossary-entry(
  title: "Asynchronous",
  definition: [
    When code is run out of order to achieve the illusion of running at the same
    time (parallelism).
  ],
)


#glossary-entry(
  title: "Arcade Drive",
  definition: [
    A driver control method where one joystick controls forward and backwards, and
    the other controls turning.
  ],
)


#glossary-entry(
  title: "Framework",
  definition: [
    A collection of code that serves as a base for other code to be written on top
    of.
  ],
)

#glossary-entry(title: "Library", definition: [
  A collection of code that provides common utility.
])

#glossary-entry(title: "PID", definition: [
  Control theory used to move a system to a target smoothly.
])

#glossary-entry(
  title: "Pure Pursuit",
  definition: [
    A path following algorithm that causes the robot to move to a series of points.
  ],
)

#glossary-entry(title: "Odometry", definition: [
  A method of tracking the position of the robot in cartesian coordinates
  developed by team 5225, the Pilons.
])

#glossary-entry(
  title: "Absolute Movement",
  definition: [
    Movement that is in relation to a fixed point, rather than relative to itself.
  ],
)

#glossary-entry(
  title: "Tank Drive",
  definition: [
    A driver control method where the left joystick controls the left wheels of the
    bot, and the right joystick controls the right side of the bot.
  ],
)
*/

#show: create-appendix-entry.with(
  title: "Glossary",
  updated: datetime(year: 2024, month: 10, day: 18)
)

// #v(20pt)

#columns(
  2,
)[
  #context {
    let sorted-glossary = glossary-entries.final().sorted(key: (
    (title: title, category: category, definition: definition)
    ) => title)

    for entry in sorted-glossary [
      #rect(
        radius: 5pt
      )[
        #align(left)[
          #if entry.category != none [#box(baseline: 30%, nb_icon(label: entry.category, size: 2em))]
          #h(5pt)
          *#text(14pt)[#entry.title]*
        ]
        #v(-7pt)
        #line(length: 100%)
        #v(-7pt)
        #entry.definition
      ]
    ]
  }
]