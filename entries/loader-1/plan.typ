#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v1",
  type: "plan",
  date: datetime(year: 2025, month: 11, day: 29),
  attendance: ("Ishika", "Makhi", "Rory", "Eric", "Anders", "Samia"),
  designed: "Ishika",
  witnessed: "Rory",
)
#to-do(
  date: datetime(year: 2025, month: 11, day: 29),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Plan and breakdown the construction of the loader mechanism", "Everyone"),
    (true, "Build the drivetrain according to today's delegation.", "Everyone"),
  ) 
)
= Work Breakdown Structure
#image("plan/loader-wbs.excalidraw.svg")

#colbreak()

= Work Breakdown Gantt Chart
#image("plan/loader-v1-wbs.png")

= CAD Model
We planned out our drivetrain using CAD. The technical drawings begin on the next page.

#pagebreak()
 #set page(margin: 0pt)
 #image("plan/loadermech.excalidraw.svg", width: 100%, height: 100%)

 #pagebreak()
 #set page(margin: 0pt)
 #image("plan/loadermech2.excalidraw.svg", width: 100%, height: 100%)