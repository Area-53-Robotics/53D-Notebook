#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v1",
  type: "plan",
  date: datetime(year: 2025, month: 9, day: 06),
  attendance: ("Ishika", "Makhi", "Rory", "Eric", "Anders", "Samia"),
  designed: "Ishika",
  witnessed: "Rory",
)
#to-do(
  date: datetime(year: 2025, month: 9, day: 6),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Plan and breakdown the construction of the intake", "Everyone"),
    (true, "Build the drivetrain according to today's delegation.", "Everyone"),
  )
)
= Work Breakdown Structure
#image("plan/intake-v1-wbs.excalidraw.svg")

#colbreak()

= Work Breakdown Gantt Chart
#image("plan/intake-v1-gantt-chart.png")

= CAD Model
We planned out our drivetrain using CAD. The technical drawings begin on the next page.

#pagebreak()
 #set page(margin: 0pt)
 #image("/assets/cad/intake-1/intake-sheet-1.excalidraw.svg", width: 100%, height: 100%)

 #pagebreak()
 #set page(margin: 0pt)
 #image("/assets/cad/intake-1/intake-sheet-2.excalidraw.svg", width: 100%, height: 100%)