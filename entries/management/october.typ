#import "/template/template.typ": *

#show: create-entry.with(
  title: "October Planning",
  type: "management",
  date: datetime(year: 2025, month: 10, day: 03),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Ishika",
  witnessed: "Eric",
)

#to-do(
  date: datetime(year: 2025, month: 10, day: 03),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Review our time and budget management during September.", "Everyone"),
    (true, "Plan out the October meetings by creating a Gantt chart & reviewing our budget.", "Everyone"),
    (true, "Build according to today's delegation", "Everyone"),
  )
)

Today was our first October meeting, so we dedicated some time to planning out the upcoming month.

= Septemeber Management Review
== September Time Management
#gantt-chart-key(intended-color: rgb("bfbfbf"))
#image("gantt-charts/september-post.png", width: 300pt)

We managed to follow the schedule during the first half of the month, however problems occured and we were set back on our schedule. 

== September Budget & Materials Management
The construction of the drivetrain did require us to buy some new parts but they were all withing the budget that was previously calculated. We also made sure to reuse any parts we needed to for the sake of this intake design.

= October Time Management
This is month our plan is to focus on the programming aspect, like skills and auton as there is a scrimmage this month which will help us evaluate the current design's positive aspects and limitations. The current plan will most likely change by the end of the month as there will be a lot of new things we notice after the scrimmage.  

#image("gantt-charts/october-pre.png", width: 400pt)