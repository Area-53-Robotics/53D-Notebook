#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1",
  type: "plan",
  date: datetime(year: 2025, month: 8, day: 16),
  attendance: ("Ishika", "Makhi", "Rory", "Eric", "Anders", "Samia"),
  designed: "Ishika",
  witnessed: "Rory",
)
#to-do(
  date: datetime(year: 2025, month: 8, day: 16),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Plan and breakdown the construction of the drivetain", "Everyone"),
    (true, "Build the drivetrain according to today's delegation.", "Everyone"),
  )
)
= Work Breakdown Structure
#image("plan/drivetrain-v1-wbs.excalidraw.svg")

#colbreak()

= Work Breakdown Gantt Chart
#image("plan/drivetrain-gantt-chart.png")

= CAD Model
We planned out our drivetrain using CAD. The technical drawings begin on the next page.

 #pagebreak()
 #set page(margin: 0pt)
 #image("/assets/cad/drivetrain/drivetrain-sheet1.excalidraw.svg", width: 100%, height: 100%)

 #pagebreak()
 #set page(margin: 0pt)
 #image("/assets/cad/drivetrain/drivetrain-sheet2.excalidraw.svg", width: 100%, height: 100%)