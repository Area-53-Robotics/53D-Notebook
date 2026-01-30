#import "/template/template.typ": *

#show: create-entry.with(
  title: "September Planning",
  type: "management",
  date: datetime(year: 2025, month: 9, day: 05),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Ishika",
  witnessed: "Eric",
)

#to-do(
  date: datetime(year: 2025, month: 9, day: 05),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Review our time and budget management during August.", "Everyone"),
    (true, "Plan out the September meetings by creating a Gantt chart & reviewing our budget.", "Everyone"),
    (true, "Configure GitHub workflows for our program repositories", ("Ishika",)),
    (true, "Brainstorm possible ideas for the intake.", "Everyone"),
    (true, "Select the best idea for the intake using a decision matrix.", "Everyone"),
  )
)

Today was our first September meeting, so we dedicated some time to planning out the upcoming month.

= August Management Review
== August Time Management
#gantt-chart-key(intended-color: rgb("bfbfbf"))
#image("gantt-charts/august-post.png", width: 300pt)

We managed to nearly perfectly follow our schedule in August, which will set us up pretty well for September to get what we need done. 

== August Budget & Materials Management
The construction of the drivetrain did not require us to buy any parts for the structure or the electronics as we simply reused the parts from last year. However, we did need to buy new wheels which was in our budget for the month.

= September Time Management
This is month our plan is to tackle our most important subsystem of the season, the intake. This should be very carefully organized and due to the unpredictability of the building of the design it may result in minor problems in the future but we have organized our initial thoughts on organization into this gantt chart:

#image("gantt-charts/september-pre.png", width: 300pt)