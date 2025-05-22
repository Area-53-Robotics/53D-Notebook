#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1",
  type: "build",
  date: datetime(year: 2024, month: 7, day: 26),
  attendance: ("Ishika", "Makhi", "Rory", "Eric"),
  designed: "Ishika",
  witnessed: "Makhi",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2024/07/26
#to-do(
  date: datetime(year: 2024, month: 7, day: 26),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Build the drivetrain according to today's delegation.", "Everyone"),
  )
)

We wanted to start this season off with a running start. Since we had the CAD of the drivetrain earlier than we planned, we can make the drivetrain quicker, which will in turn allow us to start working on the more complex subsystems quicker. Learning from last year's mistakes, we are going to have our screw joints come out from the outside and box our drivetrain better to prevent any bending.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the drivetrain): Eric 
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Eric
    - *Oversight & Quality Control*: 
    - *Initial Testing*: Everyone
    - *Programming*: 
  ],
  today: [
    - Ziptie the bearing blocks: Eric
    - Attach the motors and axles onto the drivetrain's C-channel: Eric
    - Attach the wheels and the screw joints: Eric
  ]
)

== Build Process
#grid(
  figure(
    image("build/2024.07.26-1.jpg", width: 150pt),
    caption: "The materials for the drivetrain"
  ),
  [
    === Materials
    - x4 3.25" Omni Wheel
    - x4 3.25" Traction Wheel
    - x4 48-tooth Gear
    - x6 36-tooth Gear
    - x6 11W 600 RPM motor
    - x4 29x2x1 C-Channel
      - These will be used for the sides of the drivetrain 
    - x1 26x2x1 C-Channel
      - This will be used for full drivetrain cross bracing
    - x2 28x2x1 C-Channel
      - These will be used for drivetrain inner width cross bracing
    - x2 26x1x1 half-cut C-Channel
      - These will be used as a resting point for the mobile goal mech
  ],
)

#grid(
  [
    - Attached the bearing blocks onto the 29x2x1 C-channels
      - From left to right, the first bearing block is 7 holes away from the edge, then the next one is five away from the first bearing block, and the last one is also 5 holes away from the second bearing block
      - Please see the CAD in our #entry-reference(title: "Drivetrain v1", type: "plan", date: datetime(year: 2024, month: 6, day: 29)).
      - The spacing allows us to have 2 holes worth of spacing at the front of our drivetrain for standoff support
    - The bearing blocks are ziptied to the C-channel
      - Since our drivetrain will be heavier than most other team's drivetrains, ziptying instead of using screws allow us to save weight
  ],
  stack(
    spacing: 10pt,
    figure(
      image("build/2024.07.26-2.jpg", width: 80pt),
      caption: "The bearing block placements"
    ),
    figure(
      image("build/2024.07.26-3.jpg", width: 150pt),
      caption: "Close-up of the zipties for the bearing blocks"
    )
  ),
)

#grid(
  stack(
    spacing: 10pt,
    figure(
      image("build/2024.07.26-4.jpg", width: 175pt),
      caption: "The wheels and gears. The gears are directly screwed to the wheels."
    ),
    figure(
      image("build/2024.07.26-5.jpg", width: 150pt),
      caption: "The motors"
    )
  ),
  [
    === Assembly: Drivetrain
    - Attached the gears to the wheels
      - Since we are working with 3.25" wheels, the wheels are taller than the gears. We can directly screw the gears to the wheels
    - Following the CAD [page here], we attached the gears to the other end of the C-channel
      - The outer C-channel is flipped from the outside because we are making 5-inch-wide drive halves. This method helped us fit the collars on the axles.
    - Our wheels are offset one hole above the motors. This helps us lower our center of gravity.
      - Therefore, the wheel spacers could not fit properly. We had to bend the walls of the C-channel slightly to fit them.
    - Learning from last year's mistakes, we put our screw joints on what will be the outward face of the drive half. Last season, the middle motor blocked the middle traction wheels and had to be taken off
    - We rubberbanded the drive halves together until the next meeting to keep everything tensioned down.
  ],
)

#grid(
  figure(
    image("build/2024.07.26-6.jpg"),
    caption: "Unfinished drive half"
  ),
  figure(
    image("build/2024.07.26-7.jpg"),
    caption: "The rubber bands tensioning the drivetrain together"
  )
)

#colbreak()

= 2024/07/27
#to-do(
  date: datetime(year: 2024, month: 7, day: 28),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Build the drivetrain according to today's delegation.", "Everyone"),
  )
)

Last meeting, we ran into a few problems with the drivetrain. Firstly, one of the wheels was rubbing against the side of the drivetrain because the screws were too long. This causes the nuts to rub, causing unnecessary friction. Secondly, some of the C-channels were starting to bend out. We suspect that the bending of the metal to get spacers to fit was the cause for this issue. We repeated some steps from the previous meeting when attempting to resolve these problems.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the drivetrain): Eric 
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): 
    - *Oversight & Quality Control*: 
    - *Initial Testing*: Everyone
    - *Programming*: Ishika
  ],
  today: [
    - Ziptie the bearing blocks: Eric
    - Attach the motors and axles onto the drivetrain's C-channel: Eric
    - Attach the wheels and the screw joints: Eric
  ]
)

== Build Process
#grid(
  figure(
    image("build/2024.07.27-1.jpg", width: 150pt),
    caption: "The spacer that we sanded down to cut"
  ),
  [
    === Materials
    - Since we just rebuilt the drive halves, we used no new materials 
    - Instead of mending the walls of the C-channel, we sanded down the spacers
  ],
)

#grid(
  figure(
    image("build/2024.07.27-2.jpg", width: 175pt),
    caption: "The ziptied bearing blocks"
  ),
  figure(
    image("build/2024.07.27-3.jpg", width: 200pt),
    caption: "A screwjoint"
  )
)
#grid(
  [
    === Assembly: Drivetrain
    - Because of the different orientation of our drivetrain, we put in and secured our screw joints using keps nuts first
      - We squeezed the spacing and the wheels in between the drivetrain 
    - To get the inside spacing to line up, we put standoffs at the front. This will prevent the C-channel from bending outwards 
    - Since only one drive half is completed, we decided to add the middle bracing. We boxed it to prevent the C-channel from bending when it comes into contact with an enemy robot
  ],
  figure(
    image("build/2024.07.27-4.jpg", width: 80pt),
    caption: "Completed right drive half"
  ),
)

#admonition(type: "note")[
  We could not complete the other half of the drivetrain because the C-channel was bent. We need to go back to Wagner's gym to get more supplies.
]

#grid(
  figure(
    image("build/2024.07.27-5.jpg", width: 145pt),
    caption: "Standoffs preventing the drivetrain form bending inwards"
  ),
  figure(
    image("build/2024.07.27-6.jpg", width: 175pt),
    caption: "The cross-bracing boxing"
  )
)

#colbreak()

= 2024/08/02
#to-do(
  date: datetime(year: 2024, month: 8, day: 2),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Build the drivetrain according to today's delegation.", "Everyone"),
  )
)

We have suffered a major setback towards making the second half of the drivetrain. We suspect the bending of the C-channel to fit the spacing in has weakened the walls of the C-channel. This caused the C-channel to bend outwards. Unfortunately, we needed to find a new C-channel and begin redoing the drivetrain.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the drivetrain): Eric, Ishika
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Eric
    - *Oversight & Quality Control*: 
    - *Initial Testing*: Everyone
    - *Programming*: Ishika
  ],
  today: [
    - Attach the motors and axles onto the drivetrain's C-channel: Eric
    - Attach the wheels and the screw joints: Eric
  ]
)

== Build Process
#grid(
  figure(
    grid(
      column-gutter: 0pt,
      image("build/2024.08.02-1.jpg", width: 56pt),
      image("build/2024.08.02-2.jpg", width: 56pt),
    ),
    caption: "The bent C-channel"
  ),
  [
    === Materials
    - Since we had to redo the right drive half, we did not get any new materials. The only exception is that we had to replace the two 29x2x1 C-channels.

    === Troubleshooting 
    - The C-channel experiences a significant bending along the end. This causes the C-channel to be unusable for the drivetrain because it will ruin the spacing for additional bracing and cause the wheels to rub against each other.
    - We suspect that bending the C-channel to get the spacers to fit may have caused the bending to worsen over time.
    - We also believe that the order in which we constructed the parts may have had something to do with the bending.
  ],
)

#grid(
  [
    === Assembly: Drivetrain
    - Since the motors and wheels block the nylon for the screw joint, we have to add the middle motor once everything is finished. There is not much clearance, so we found a custom Allen wrench.
    - The order for assembly:
      + Put the front and back motors on
      + Put the two omni wheels and gears for the motors on
      + Put on the traction wheel closest to the front of the drivetrain
      + Attach the middle motor
      + Attach the last wheel and gears
  ],
  figure(
    image("build/2024.08.02-3.jpg", width: 140pt),
    caption: "Custom Allen wrench"
  )
)

#figure(
  image("build/2024.08.02-4.jpg", width: 325pt),
  caption: "Incomplete right drive half"
)

#figure(
  image("build/2024.08.02-5.jpg", width: 325pt),
  caption: "Complete right drive half"
)

#colbreak()

= 2024/08/03
#to-do(
  date: datetime(year: 2024, month: 8, day: 3),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Build the drivetrain according to today's delegation.", "Everyone"),
  )
)

Now that we have completed the right side of the drivetrain, we planned to assemble both of the drive sides together. The purpose of this meeting was to quickly add supports for the drivetrain, and test drive it. Additionally, we planned to troubleshoot any problems that occurred.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the drivetrain): Eric, Ishika
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Eric
    - *Oversight & Quality Control*: 
    - *Programming*: Ishika
  ],
  today: [
    - Attach the 1x1 half-cuts to the front of the drivetrain:  Hao
    - Attach another cross bracing for the drivetrain: Eric
    - Initial driver control testing: Eric
  ]
)

== Build Process
#grid(
  figure(
    image("build/2024.08.03-1.jpg", width: 120pt),
    caption: "The materials"
  ),
  [
    === Materials
    - x2 26x1x1 half-cuts
    - x1 18x2x1 C-channel
  ],
)

#grid(
  [
    === Assembly: Drivetrain
    - Boxed the two half-cuts together
      - This is the most important structure of our brace since it will be the platform for our mobile goals. Therefore, it will experience the most stress out of all the structures in the drivetrain bracing 
    - Added the half-cuts to the back of the drivetrain 
    - Added and boxed the 18x2x1 C-channel near the back of the drivetrain
    - Wired the motors
    - Attached the brain, battery, and radio
      - The brain is rubberbanded onto the motors (temporarily for initial testing)
      - The radio is screwed on to the C-channel
      - The battery is ziptied on. We created a ziptied mounting spot that does not allow the battery to fall out
  ],
  figure(
    image("build/2024.08.03-2.jpg", width: 180pt),
    caption: "Complete drivetrain"
  )
)

#grid(
  figure(
    image("build/2024.08.03-3.jpg", width: 180pt),
    caption: "Example of keps nut thats not fully tightened"
  ),
  [
    === Troubleshooting
    - The friction on the drivetrain is uneven. The right has significantly more friction and therefore makes it harder to turn.
    - We noticed that the keps nuts were not fully tightened. This means that they were pushing the wheels outwards. Tightening them solved the problem.
  ],
)

#figure(
  image("build/2024.08.03-4.jpg", width: 325pt),
  caption: "Complete drivetrain with electronics"
)