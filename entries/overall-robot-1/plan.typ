#import "/template/template.typ": *

#show: create-entry.with(
  title: "Overall Robot Plan v1",
  type: "plan",
  date: datetime(year: 2025, month: 6, day: 27),
  attendance: ("Ishika", "Eric", "Rory", "Makhi", "Anders", "Samia"),
  designed: "Eric",
  witnessed: "Ishika",
)
#to-do(
  date: datetime(year: 2025, month: 6, day: 27),
  monthly-schedule: "Ahead",
  yearly-schedule: "On",
  (
    (true, "Plan the breakdown of the Overall Robot design process", "Everyone"),
    (true, "Plan the creation of the overall robot idea.", "Everyone"),
  )
)
Now that we had selected an overall plan for our robot, our next step was to plan the implementation of the overall robot plan. First, we created a tree diagram to represent the breakdown of the parts of the overall robot idea we will need to construct.

= Work Breakdown Structure
#image("overall-robot-wbs.excalidraw.svg")

= Gantt Chart
Our work breakdown structure for the overall robot plan is very similar to the tasks we had already put into our High Stakes season gantt chart, which we made in our #entry-reference(type: "management", title: "High Stakes Season Planning"). Therefore, we will use that gantt chart as the basis for our timeline.