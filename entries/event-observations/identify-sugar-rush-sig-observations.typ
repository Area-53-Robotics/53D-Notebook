#import "/template/template.typ": *

#show: create-entry.with(
  title: "Sugar Rush Signature Event - Observations",
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
- Tournament name: Sugar Rush Signature Event
- Location: Hershey Lodge
  // - 325 University Drive
  // -  Hershey, Pennsylvania 17033
  // - United States
- Date(s): 2025/01/03 - 2025/01/04
- Capacity: 120 teams

= Overview
The Sugar Rush Signature Event is a high-level competition VEX Robotics tournament designed to challenge teams to innovate and perform at their best. Success in this event can also help teams qualify for the VEX Robotics World Championship. The winners were 5956B and 11777C.

= Team Observations
#table(
  columns: (1fr,1fr),

  table.header(
    repeat: false,
    table.cell(colspan: 2, align: center, fill: gray.lighten(20%))[
      *5956B Bangarang \
      Won Finals 2-1*
    ],
  ),

  table.cell[
    #figure(
      image("identify-sugar-rush-sig/bangarang-observations-1.png", width: 150pt),
      caption: "Them trying to score on the alliance stake."
    )
  ],
  table.cell[
    - *Auton*: First, they tried to score a preloaded ring onto the blue stake, but the ring did not come off their robot. Next, they went for a mobile goal, clamped it, and scored one ring on it. Then, they went for the rings in the corner, but did not intake any. Finally, they went to the ladder in the middle of the field and touched it.
  ],
  table.cell[
    #figure(
      image("identify-sugar-rush-sig/bangarang-observations-2.png", width: 110pt),
      caption: "The drivetrain from their Sugar Rush reveal video"
    )
  ],
  table.cell[
    - *Drivetrain*: They use 6 motors and 6 2.75” wheels with a 450 RPM drivetrain. They also use all omnis for better drifting.
    - *Tracking Wheels*: They have one tracking wheel on the bottom of their drivetrain.
  ],
  table.cell[
    #figure(
      [
        #image("identify-sugar-rush-sig/bangarang-observations-3.png", width: 150pt)
        #image("identify-sugar-rush-sig/bangarang-observations-4.png", width: 150pt)
      ],
      caption: "The intake and climb mechanisms from their Haunted Signature Event Robot Reveal"
    )
  ],
  table.cell[
    - *Intake*: Their intake has two stages, much like ours, with a 400 RPM first stage and a 600 RPM second stage. Their first stage has a cover made of lexan, and instead of one big ramp from the first to the second stage, they use two separate pieces of lexan. They use 3 flex wheels on their first stage.
    - *Climb*: Their climbing mechanism allows them to climb to the first level of the ladder. It is made of 1x1 angles with standoffs on the ends. It pops up along with their wall stake mechanism.
  ],
  table.cell[
    #figure(
      image("identify-sugar-rush-sig/bangarang-observations-5.png", width: 165pt),
      caption: "The wall stake mechanism from their Haunted Signature Event Robot Reveal"
    )
  ],
  table.cell[
    - *Wall Stake Mechanism*: They have a 66 RPM wall stake mechanism that takes rings directly from the intake and friction fits it in between the two arms. It then easily slides off onto the wall stakes.
  ]
)

#colbreak()

#table(
  columns: (1fr,1fr),

  table.header(
    repeat: false,
    table.cell(colspan: 2, align: center, fill: gray.lighten(20%))[
      *11777C MONTE \
      Finals*
    ],
  ),
  table.cell[
    #figure(
      image("identify-sugar-rush-sig/monte-observations-1.png", width: 150pt),
      caption: "Finals 1-1"
    )
  ],
  table.cell[
    - *Auton*: They scored a ring on the alliance stake, then picked up a mobile goal. They tried to pick up four more rings but did not score any on the mobile goal.
  ],
  table.cell[
    #figure(
      image("identify-sugar-rush-sig/monte-observations-2.png", width: 150pt),
      caption: "The mobile goal clamp from their Rumble in the Rockies Robot Reveal"
    )
  ],
  table.cell[
    *Mobile Goal Clamp*: They use two standoffs with polycarbonate in between to clamp onto mobile goals. Their clamp is very reliable and fast, which allows them to score quickly.
  ],
  table.cell[
    #figure(
      image("identify-sugar-rush-sig/monte-observations-3.png", width: 150pt),
      caption: "The intake from their Rumble in the Rockies Robot Reveal"
    )
  ],
  table.cell[
    - *Intake*: The intake hood allows them to intake rings onto their mobile goal no matter the offset. The hood helps push the rings onto the mobile goal.
  ],
  table.cell[
    #figure(
      image("identify-sugar-rush-sig/monte-observations-4.png", width: 110pt),
      caption: "Sugar Rush Finals Match"
    )
  ],
  table.cell[
    - *Wall Stake Mechanism*: They have a ladybrown mechanism capable of scoring and de-scoring on the wall stake.
  ]
)

= Final Observations
1. We saw a lot of ladybrowns that were capable of rotating 180 degrees. These types of ladybrowns were capable of flipping mobile goals over and descoring rings from mobile goals. We are considering rebuilding our ladybrown so that it has a 180 degree range of rotation.
2. We saw that a lot of robots had an auton that can score on the neutral wall stake. The ability to score on the wall stakes during auton would give us a significant advantage because then the enemy team would need to focus on placing their own color rings on the wall stakes. This gives them less time to focus on securing positive corners.
3. We did not see any significant hang mechanisms. Some teams ran a passive hang that is attached to their ladybrown. It looks like going for stage two and three are not worth the time invested to reach there.