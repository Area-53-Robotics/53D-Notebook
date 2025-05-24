#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1",
  type: "plan",
  date: datetime(year: 2024, month: 6, day: 29),
  attendance: ("Ishika", "Makhi", "Rory", "Eric"),
  designed: "Ishika",
  witnessed: "Ishika",
)

= Work Breakdown Structure
#image("plan/drivetrain-v1-wbs.excalidraw.svg")

#colbreak()

= Work Breakdown Gantt Chart
#image("plan/drivetrain-v1-gantt-chart.png")

= CAD Model
We planned out our drivetrain using CAD. The technical drawings begin on the next page.

// #cad(
//   folder: "drivetrain-v1",
//   sheets: 5,
//   add-views: ("Isometric", "Top", "Side", "Front"),
//   date: datetime(year: 2024, month: 6, day: 29),
//   designed: "Ishika",
//   witnessed: "Ishika",
// )