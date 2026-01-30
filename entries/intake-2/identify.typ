#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v2",
  type: "identify",
  date: datetime(year: 2025, month: 10, day: 24),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Rory",
  witnessed: "Ishika",
)


#to-do(
  date: datetime(year: 2025, month: 10, day: 24),
  monthly-schedule: "Off",
  yearly-schedule: "Ahead",
  (
    (true, "Identify the new design goals and constraints for the intake.", "Everyone"),
    (true, "Plan the implementation of the new intake idea.", "Everyone"),
  )
)

After having a group meeting and discussing the changes we made to the overall robot design, we referred back to our initial intake designs from #entry-reference(type: "brainstorm", title: "Intake v1"). We found that while the basket intake design was accuracy, efficiency, and highly complex there was an intake design we could use that would cover these specific criteria much better than the basket intake did. We decided on an escalator intake, one that would give us both the speed and precision we need during matchplay and what our team’s robot is looking for.   

#pro-con(
  name: "Original Idea",
  image: image("basketintake.excalidraw.svg"), 
  description: [ ],
  pros: [
    - *Storage* - The amount of space that the intake takes up allows for considerable storage which can allow the robot to store blocks and use them at a later time during the match. 
  ], 
  cons: [
    - *Complexity* -  The tuning of the intake was much more complicated than expected, resulting in inconsistency and frustration from the constant changes. 
  ]
)

//#colbreak()

#pro-con(
  name: "New Idea",
  image: image("intakenewidea.excalidraw.svg"), 
  description: [ ],
  pros: [
    - *Efficiency* -   The use of this type of intake will increase the efficiency of the blocks being scored, instead of them getting stuck or caught they will smoothly transfer out and into the goals.  
    - *Speed* - The design of the ramp helps ensure a smooth pathway for the blocks, and along with the compactness it helps make the transit of the blocks very quick which is vital for these matches.
  ], 
  cons: [
    - *Air Usage* - Due to the use of the piston to change the height of the intake there is a heavy reliance on air which can become a hindrance during matches that become very intense. 
  ]
)

= New Design Goals & Constraints
#goals-constraints(
  goals: [
    - The intake should be able to accurately score a continuous amount of blocks.  
    - The intake should be able to score on any of the different goal heights at any moment throughout the match. 
  ],
  constraints: [
    - #vex-rule[R5] Robots must fit within an 18" x 18" x 18" volume
    - #vex-rule[R12] Motors are limited to a combined power of 88W
    - #vex-rule[R25] Each Robot is limited to a maximum of 12 individual pieces of plastic, each one no larger than 4” x 8” x 0.070”.
    - #vex-rule[] Robots may use a maximum of two (2) legal VEX pneumatic air reservoirs on a Robot and each may be charged to a maximum of 100 psi.
  ],
)
