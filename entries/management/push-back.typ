#import "/template/template.typ": *

#show: create-entry.with(
  title: "High Stakes Season Planning",
  type: "management",
  date: datetime(year: 2024, month: 5, day: 30),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Ishika",
  witnessed: "Rory",
)

#show table: it => align(center)[#it]

= Timeline Management
Before beginning our early season brainstorming, we decided to make a general timeline for the robot's construction. We did this at the beginning of the Over Under season two years ago, and it was a significant help in keeping us on time for task completion. This year, we want to dedicate a large amount of time to a few tasks & mechanisms:
- *Initial Drivetrain:* The drivetrain is the robot's core, and attempting to make changes to it can sometimes require reconstruction of parts of, or the entire, robot. Therefore, we want to try to get the drivetrain right the first time. 
- *Autonomous Programming:* During the early and mid-season last year, our autonomous programming was repeatedly put off until right before tournaments. This made programming autonomous routines stressful and prevented us from making the best autonomous routines possible. We wanted an autonomous system that could obtain the autonomous win point without assistance from our alliance partner, but we could not complete it due to time constraints. We hope to get the best autonomous possible by dedicating more time this year.
- *Robot Tuning before States:* Having the best robot possible for the state competition is of utmost priority, and to achieve this we need an optimum amount of time to test and adjust mechanisms
- *Scrimmages before States:* Last year, we participated in multiple scrimmages with other Area 53 teams before the States competition. We even held an official scrimmage where many nearby teams participated. This resulted in a visible performance increase at the States competition compared to our performance in other late-season tournaments. We plan to do the same this year. To make organization easier, we identify parts of the season with the following labels:
- *Early Season* - Includes the spring & summer months after the game reveal (May - September), during which scrimmages occur while tournaments do not
- *Mid Season* - Includes the fall & early winter months (October - December) when state competition qualifying tournaments begin
- *Late Season* - Includes the late winter months (January - April) when state competition qualifying tournaments end, and the state & world competitions occur
#colbreak()
We also have a general idea of when tournaments will take place by looking at patterns from previous years. This will help us estimate at what times we need to have our robot ready:

#table(
  columns: 2,
  align: left,
  fill: (_, y) => {
    if y == 0 or y == 1 {gray}
  },

  table.header(table.cell(colspan: 2, align: center)[Tournaments],
  table.cell(align: center)[Mid Season], table.cell(align: center)[Late Season]),
  [
    - Capital Beltway - Late November
    - Hereford - Early December
  ],
  [
    - Loyola - January
    - Valley Mall - January
    - Cardinal Classic - January
    - Southern Hagerstown - Early Feburary
    - States - Late February/Early March
  ]
)

Another thing we had to keep in mind was that all of Area 53 will likely attend one of the two signature events listed below this year, which we have to plan our schedule around:
- *Sugar Rush VRC Signature Event:* 3-Jan-2026 - 4-Jan-2026
- *Kalahari Classic* 23-Jan-2026 - 24-Jan-2026
- *Gateway to the West VRC Signature Event:* 28-Jan-2026 - 29-Jan-2026

This year the Push Back season will end for 53D after the state competition if we do not qualify for Worlds. The State Competition will likely be in early March, so our robot must be completed before then.

Taking all of the above factors into consideration, we created a Gantt chart for the High Stakes season:

#image("gantt-charts/push-back.png")

#admonition(type: "note")[
  We plan to adjust this Gantt chart as the season goes on depending on new deadlines that arise.
]
#colbreak()
= Budget & Materials Management
After creating our season timeline, we obtained information on our organization's budget to get an idea of what our expenses for the season will look like.

Total Area 53 Organization Budget: \$27549.55

#table(
  columns: 2,
  align: left,
  fill: (_, y) => {
    if y == 0 or y == 1 {gray}
  },

  table.header(table.cell(colspan: 2, fill: gray, align: center)[Budget Breakdown],
  table.cell(fill: gray, align: center)[Expense Name], table.cell(fill: gray, align: center)[Expense Cost]),

  [VEX Annual Squad Registration], [\$1,100.00],
  [Parts, tools, and supplies for building robots.], [\6,000.00],
  [Event registration (local, signature, state championship)], [\$4,500.00],
  [Food], [\$1,500.00],
  [Beltway Battle tournament at Eleanor Roosevelt], [\$3,450.00],
  [Team apparel], [\$1,000.00],
  [Misc. supplies, team-building costs, and administrative costs], [\$760.00],
  [Wifi Services(monthly)], [\$780.00],
  [*Total regular season expenses*], [*\$19,090.00*],
)


To estimate the amount of money available to us for parts and event registration, we divide the allocated amount for the Area 53 organization by the 5 squads in our organization, leaving our team with the following:
- Event Registration Budget: \$900
- Parts Budget: \$1,200.00

Most of the parts we will need throughout the season will likely be in our organization's storage, but keeping track of our budget will allow us to make informed decisions when brainstorming and selecting subsystems.