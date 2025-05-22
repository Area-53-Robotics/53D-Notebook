#import "/template/template.typ": *

#show: create-entry.with(
  title: "Kanban Board",
  type: "management",
  date: datetime(year: 2024, month: 6, day: 16),
  attendance: ("Ishika", "Eric", "Rory", "Makhi"),
  designed: "Ishika",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2024, month: 6, day: 16),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Evaluate our current project workflow to identify possible improvements.", "Everyone"),
    (true, "Identify the design goals and constraints for the drivetrain.", "Everyone"),
    (true, "Determine the mathematical and scientific concepts involved in drivetrain design.", "Everyone"),
  )
)

Before beginning construction of our drivetrain, we took some time to evaluate different project management strategies to choose one that we could implement throughout the season. Specifically, we researched the Waterfall methodology and the Agile methodology.

#grid(
  columns: 2,
  row-gutter: 10pt,

  grid.cell(colspan: 2)[
    = Waterfall Methodology
    == Qualities
    - Every step is sequential and must be completed before continuing to the next phase.
  ],
  [
    == Steps
    + *Requirements* - Identify the project requirements, detail what is needed to complete the project, and determine the definition of “done."
      - Correlates with the “Identify" EDP step
    + *Design* - Create the design of the solution through CAD, sketches, mock-ups, etc.
      - Correlates with the “Brainstorm" and “Select" EDP steps
    + *Implementation* - Build the solution
      - Correlates with the “Build" and “Program" EDP steps
    + *Verification* - Test if the solution meets all of the identified project requirements
      - Correlates with the “Test" EDP step
    + *Maintenance* - Ensure the solution is kept functional after its completion
      - The EDP does not have a step dedicated to this, but it achieves a similar goal by being a cycle
  ],
  grid.cell(align: center + horizon)[#image("kanban-board/waterfall-methodology.svg", height: 290pt)],
)

#colbreak()

#grid(
  columns: 2,
  row-gutter: 10pt,

  grid.cell(colspan: 2)[
    = Scrum Methodology
    == Qualities
    - A very quick-paced management method where the goal is to get a usable product out as quick as possible, not the best product out after a long time of waiting.

    == Steps
    1. *Sprint Backlog* - Identify the task(s) from the backlog that need to be completed
      - Correlates with the “Identify" EDP step
  ],
  [
    2. *Iterative Cycle* - This is repeated multiple times over set time intervals, such as every 3 weeks. The cycle is repeated until we meet the definition of “done."
      - *Planning* - Plan the solution through CAD, sketches, mock-ups, etc.
        - Correlates with the “Brainstorm" and “Select" EDP steps
      - *Implementation* - Build the solution
        - Correlates with the “Build" and “Program" EDP steps
      - *Review* - Verify that the solution meets all criteria identified during the “Sprint Backlog" phase
        - Correlates with the “Test" EDP step
      - *Retrospect*
        - This step is unique to the Scrum methodology, putting an emphasis on looking at past successes and failures to improve future designs.
  ],
  grid.cell(align: center + horizon)[#image("kanban-board/scrum-methodology.svg")],
  grid.cell(colspan: 2)[
    3. *Definition of Done*
      - If the solution meets the definition of “done," then restart the Scrum Methodology from the “Sprint Backlog" phase with a new task that needs to be completed.
      - If the solution does not meet the definition of “done," then restart the Iterative Cycle.
  ]
)

  = Our Implementation
  We decided to use the Scrum Methodology because it correlated the best with both the fluidity and habits of the engineering design process 53D had applied in previous years. 
  We began our implementation by creating a Kanban Board to contain tasks that are "Completed", "To-Do," and "In-Progress." At the beginning of each meeting, we plan to take some of the most urgent tasks from the "To-Do" section, and create a To-Do list for the day by assigning some of those tasks to each team member. We hope that by implementing the Scrum methodology, we can have a faster workflow during the rest of the season.

#align(center)[
  #figure(
    image("kanban-board/kanban-board.jpg", height: 30%),
    caption: [Our new Kanban Board!]
  )
]

#admonition(type: "note")[
  The To-Do list that we create for each day will be visualized in the notebook through the gray "To-Do" admonition at the beginning of the day's entry.
]