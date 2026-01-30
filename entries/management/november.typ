#import "/template/template.typ": *

#show: create-entry.with(
  title: "November Planning",
  type: "management",
  date: datetime(year: 2025, month: 11, day: 01),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Ishika",
  witnessed: "Rory",
)

#to-do(
  date: datetime(year: 2025, month: 11, day: 01),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Review our time and budget management during October.", "Everyone"),
    (true, "Plan out the September meetings by creating a Gantt chart & reviewing our budget.", "Everyone"),
    (true, "Build according to today's delegation", "Everyone"),
  )
)

Today was our first October meeting, so we dedicated some time to planning out the upcoming month.

= October Management Review
== Ocotober Time Management
#gantt-chart-key(intended-color: rgb("bfbfbf"))
#image("gantt-charts/october-post.png", width: 300pt)

We had some trouble in the beginning of the month with getting on track before the scrimmage. However, after the scrimmage we were able to organize ourselves well and function as we planned during our original gantt chart. 

== October Budget & Materials Management
The change in our overall robot design did cause us to look back at the budget because this rebuild required us to change a lot of susbystems. However, we kept track of the materials we bought and made sure we didn't buy too many unnecessary materials. We also found it easier to reuse a lot of the materials from the past design. 
= November Time Management
This is month our plan is to focus on the rebuild of our robot, to make sure that we have troubleshooted all the issues in this new design and get a competition auton before our first official tournament. Hopefully, we will be able to stay on track but due to the Capital Beltway Battle this month may differ at the end than it did in the beginning. 

#image("gantt-charts/november-pre.png", width: 400pt)