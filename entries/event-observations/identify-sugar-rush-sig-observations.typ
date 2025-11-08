#import "/template/template.typ": *

#show: create-entry.with(
  title: "Mall of America Signature Event - Observations",
  type: "identify",
  date: datetime(year: 2025, month: 01, day: 05),
  attendance: ("Rory", "Eric", "Anders", "Makhi"),
  designed: "Anders",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2025, month: 1, day: 5),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Observe mechanisms used in the Sugar Rush Signature event.", "Everyone"),
    (true, "Analyze strategies used in the Sugar Rush Signature event.", "Everyone"),
  )
)

= Event Information
- Tournament name: University of North Dakota Signature at the Mall of America
- Location:  Mall of America®
  // - 60 East Broadway
  // -  Bloomington, Minnesota 55425
  // - United States
- Date(s): 31/7/2025 - 2/8/2025
- Capacity: 120 teams

= Overview
This summer, The University of North Dakota takes the helm of the Signature Event located at Mall of America. Under a new event name, the University of North Dakota Signature will build on this high-profile tournament’s fourth year adding fresh energy and innovation.   The competition is expanding to 120 teams competing in the 2025-2026 V5RC Competition: Push Back. As a qualifier for the VEX Robotics World Championships, the winners of the Excellence Award (team 10B) and Tournament Champions (teams 16610A and 9123C) will be invited to VEX Worlds.

= Team Observations


#table(
  columns: (1fr,1fr),

  table.header(
    repeat: false,
    table.cell(colspan: 2, align: center, fill: gray.lighten(20%))[
      *32792B COGNEX\
      *
    ],
  ),

  table.cell[
    #figure(
      image("identify-sugar-rush-sig\drivetrain.png", width: 150pt),
      caption: "*Their drivetrain from their Pits & Parts interview."
    )
  ],
  table.cell[
    - *Drivetrain*: They placed their brain, battery, and other parts towards the back of their drivetrain. This helps counterbalance the heavy weight of their scoring mechanism on top. Their center of gravity is also very low, which prevents it from tipping and keeps the bot stable.
  ],
  table.cell[
    #figure(
      image("identify-sugar-rush-sig\intake.png", width: 110pt),
      caption: "*Their intake from their Pits & Parts interview."
    )
  ],
  table.cell[
    - *Intake*: They have flex wheels and rubber bands to intake the blocks. The flex wheels also help shake the blocks around so they don’t get stuck in the intake.

  ],
  table.cell[
    #figure(
      [
        #image("identify-sugar-rush-sig\storage_pitsandparts.png", width: 150pt)
      ],
      caption: "*Their storage from their Pits & Parts interview."
    )
  ],
  table.cell[
    *Storage*: Their storage is surrounded by mesh to keep the balls in place. They also have some more screws to prevent blocks from getting jammed. 


  ],
  table.cell[
    #figure(
      image("identify-sugar-rush-sig\intake mechanisms_pitsnadparts.png", width: 165pt),
      caption: "*Their intake mechanism from their Pits & Parts interview."
    )
  ],
  table.cell[
     *Intake Mechanism*: They have an interesting mechanism to keep the rollers in constant contact with the blocks. It utilizes an omni-wheel at the end of an arm that can come in contact with the ground and other blocks.There are also standoffs that act as funnels to make sure the blocks get into place.
  ]


)

#table(
  columns: (1fr,1fr),

  table.header(
    repeat: false,
    table.cell(colspan: 2, align: center, fill: gray.lighten(20%))[
      *9123X Shanghai RuiGuan Team\
      *
    ],
  ),

  table.cell[
    #figure(
      image("identify-sugar-rush-sig\drivetrain_pitsandparts.png", width: 150pt),
      caption: "*Their drivetrain from their Pits & Parts interview."
    )
  ],
  table.cell[
    - *Drivetrain*: They have a 6 motor drivetrain with 4 wheels on each side. They are just using omni-wheels, which are run at 450 rpm. They tried 2.75 inch wheels at the start but it was too slow, so they switched to 3.25 inches.
  ],
  table.cell[
    #figure(
      image("identify-sugar-rush-sig\intake_pitandparts.png", width: 110pt),
      caption: "*Their intake from their Pits & Parts interview."
    )
  ],
  table.cell[
    - *Intake*: Their strategy with their intake is to quickly and quietly intake blocks from the field. They do this with four rubber band rollers and a chain with plastic flippers. This helps prevent blocks from getting stuck.

    - *Storage*:  They try not to store too many blocks and instead work on scoring them right away.

    - *Parking*: They use polycarbonate on the side to align and slide themselves into the parking spot. They used the same thing in Over Under to get over the bumps.
  ],
  table.cell[
    #figure(
      [
        #image("identify-sugar-rush-sig\hook_pitsandparts.png", width: 150pt)
       ],
      caption: "*Their hook from their Pits & Parts interview."
    )
  ],
  table.cell[
    *Hook*: They have a retractable hook to grab onto other bots and push them around.

  ],
  table.cell[
    #figure(
      image("identify-sugar-rush-sig\alignmentmechanism_pitsandparts.png", width: 165pt),
      caption: "*Their alignment mechanism from their Pits & Parts interview."
    )
  ],
  table.cell[
     *Alignment Mech*: They have a piece of Delrin to help align with the scoring areas. This is very helpful with scoring and allows them to quickly place blocks into the goals.
  ]
)

#colbreak()

#table(
  columns: (1fr,1fr),

  table.header(
    repeat: false,
    table.cell(colspan: 2, align: center, fill: gray.lighten(20%))[
      *11101B Barcots Getting There\
      Lost finals 1-2 *
    ],
  ),
  table.cell[
    #figure(
      image("identify-sugar-rush-sig\intake_pitandparts.png", width: 150pt),
      caption: "Their intake from their Pits & Parts interview."
    )
  ],
  table.cell[
    *Intake*: They use flexwheels at the bottom to grip onto blocks. Then, stretched rubber bands move the blocks up to their storage compartment. The power is produced by 3 motors, two of them being 5.5 watts.
  ],
  table.cell[
    #figure(
      image("identify-sugar-rush-sig\basket_pitsandparts.png", width: 150pt),
      caption: "*Their basket from their Pits & Parts interview."
    )
  ],
  table.cell[
    *Basket*:  After being intake, blocks are stored in this basket. It is surrounded by string, which doesn’t take up much space but still keeps it secure. It holds about 10-12 blocks, and the string is better than mesh because it provides less friction. They also have an “agitator” at the bottom which shakes up the blocks so they don’t get stuck in place.
  ],
  table.cell[
    #figure(
      image("identify-sugar-rush-sig\depoloyed_mechanisms.png", width: 150pt),
      caption: "*Their deployed mechanisms from their Pits & Parts interview."
    )
  ],
  table.cell[
    - *Scoring*: They have many alignment mechanisms on their robot, which can get in the way when trying to score on the lower goals. To circumvent this issue, they use pistons to deploy some parts of the robot when scoring from the middle section. This allows them to efficiently score, while still having the ability to use other mechanisms when needed.

    - *Match Loads*: For match loads, they have pieces of Delrin that align with the block loader and push under the blocks. The blocks then fall into place and are swept up by the flex wheels.
  ],
  table.cell[
    #figure(
      image("identify-sugar-rush-sig\odometry-system.png", width: 110pt),
      caption: "*Their odometry system from their Pits & Parts interview."
    )
  ],
  table.cell[
    - *Odometry*: Their odometry system uses two, 2.5 inch omni wheels and plastic pieces which are flexible. These plastic pieces keep the wheels in contact with the ground at all times. They said that their system this year has a lot less drift and is overall much more reliable.

  ]
)

= Final Observations
1. Many different teams use various types of plastic alignment mechanisms to help make scoring and parking easier. These are usually made out of Delrin, and are shaped to mesh with the shapes of game elements, like the goals. We should definitely make one for our own bot, but we will have to ensure it doesn’t go above the plastic limit.

2. Hooks or other extendable mechanisms are also very common. Some are used to hook onto and pull/push other bots away from the goals. Other times, they are used to help intake blocks from the match loaders. Since they could block other scoring mechanisms, we should try to make them extendable/retractable mid-match.

3. There are many various designs for block storage/baskets. Some teams use mesh to hold blocks in one spot, while others decided to go with string. We will have to test different materials to find which one works the best for us. Additionally, an agitator mechanism, composed of one or two gears, would be useful to reduce jams.
