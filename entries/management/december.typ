#import "/template/template.typ": *

#show: create-entry.with(
  title: "November Planning",
  type: "management",
  date: datetime(year: 2025, month: 12, day: 05),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Ishika",
  witnessed: "Rory",
)

#to-do(
  date: datetime(year: 2025, month: 12, day: 05),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Review our time and budget management during November.", "Everyone"),
    (true, "Plan out the December meetings by creating a Gantt chart & reviewing our budget.", "Everyone"),
    (true, "Program the loader mechanism", "Everyone"),
  )
)

Today was our first October meeting, so we dedicated some time to planning out the upcoming month.

= November Management Review
== November Time Management
#gantt-chart-key(intended-color: rgb("bfbfbf"))
#image("gantt-charts/november-post.png", width: 300pt)

This month went by quickly and efficiently as we were able to get everything we need done and more which puts us in a good position for December in terms of programming and auton. 

== November Budget & Materials Management
The change in our overall robot design in the month of November was very small, very minimal, so it didn't make much of impact on the budget but we need to stay more on top of things when it comes what stuff do we have in stock and what stuff we need to order ASAP. 
= December Time Management
This is month our plan is to focus on winter break that is yet to come, we will have a huge break from robotics and right after that is our signature event of the year, Sugar Rush. We need to prepare thoroughly for the signature so the plan for this month is to focus on odometry, PID, and the autnonomous paths so that the team can do better in the competitions. 

#image("gantt-charts/december-pre1.png", width: 400pt)