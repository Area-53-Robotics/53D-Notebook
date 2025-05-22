#import "/template/template.typ": *

#show: create-entry.with(
  title: "Odometry v1",
  type: "plan",
  date: datetime(year: 2024, month: 11, day: 29),
  attendance: ("Ishika"),
  designed: "Ishika",
  witnessed: "Ishika",
)

= Work Breakdown Structure
#image("plan/odometry-v1-wbs.excalidraw.svg")

= Work Breakdown Gantt Chart
#image("plan/odometry-v1-gantt-chart.png", height: 197pt)

= CAD Model
We planned out our tracking wheel design using CAD. The technical drawings begin on the next page.

#cad(
  folder: "odometry-v1",
  sheets: 3,
  add-views: ("Isometric", "Side", "Front", "Top"),
  date: datetime(year: 2024, month: 11, day: 29),
  designed: "Ishika",
  witnessed: "Ishika",
)