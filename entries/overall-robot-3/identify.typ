#import "/template/template.typ": *

#show: create-entry.with(
  title: "Overall Robot Plan v2",
  type: "identify",
  date: datetime(year: 2025, month: 12, day: 19),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Ishika",
  witnessed: "Rory",
)


#to-do(
  date: datetime(year: 2025, month: 12, day: 19),
  monthly-schedule: "Off",
  yearly-schedule: "Ahead",
  (
    (true, "Identify the new design goals and constraints for the overall robot.", "Everyone"),
  )
)

While we did the best we had ever in this season, we found that there were a lot of flaws in our robot. In our finals match we were brutally crushed by our sister teams and it made us question our robot's ability. We know that our robot works well and can win, but it doesn't have the capability to do well at higher level competitions. The scoring was also very slow on the higher goal so the team headed back to the drawing board before attending Sugar Rush. Through research of teams like 1010G and 53C, as well as group discussions we were able to figure out a new idea that we wanted to make. 
#pro-con(
  name: "Original Idea",
  image: image("identify-overall-robotv2.excalidraw.svg"), 
  description: [ ],
  pros: [
    - *Compactness* - The weight of the robot is much lighter due to the compactness of the robot and makes it much easier for the driver to maneuver. This includes having the benefit of being able to go under the goals.
  ], 
  cons: [
    - *Storage* - This robot does not leave any space for blocks and is much more compact than any other design. 
    - *Air Usage* - The robot heavily relies on pistons to be able to move the upper level of the intake to match the goal height which results in a excessive reliance on air/pneumatics.  
    - *Speed* - We found that the speed of the scoring was heavily slow, especially when scoring on the long high goals. The speed uses a lot of power, two motors, but despite that the blocks are unable to swiftly score. This causes a lot of problems during matchplay as we are unable to properly help our alliance partners score effectively. 
  ]
)

//#colbreak()

#pro-con(
  name: "New Idea",
  image: image("robotv3.excalidraw.svg"), 
  description: [ ],
  pros: [
    - *Speed* - Unlike the previous design, this one has a more smooth transition between the first stage of the intake, and the release of the blocks from either the middle goal area or the high goal area. Due to the smooth transition, less blocks will get stuck in the intake during both the autonomous period and the driver control period which leads to for effective match scoring. 
    - *Accuracy* - The accuracy of the intake is much better in this design due to the fact that it is much easier for the robot to line itself up to the goals and be able to score. Unlike previous designs, this one will use will adjust for the use of some type of lining mechanism that acts as both a guide to propel the blocks outward and can help lign the robot to both the high goal and the lower goals. 
  ], 
  cons: [
    - *Complexity* - This is a much more complex design, as it involves a different structure along with a difference in the mechanical ability of the robot. This design involves a more complex switch between the intake's middle stage and the intake's high stage. This robot is also much wider than most, if not all, previous designs therefore makes it much different for the builders to adjust to and the driver to get used to. 
  ]
)
#colbreak()
= New Design Goals & Constraints
#goals-constraints(
  goals: [
    - The robot should be able to accurately score a continuous amount of blocks on any level goal height. 
    - The robot should have the ability to maneuver around any obstacles in a swift and timely manner, including being able to go underneath the high goal. 
    - The robot should have the ability to take blocks from the loader in a swift and efficient manner which allows for better matchplay and use for strategy.
  ],
  constraints: [
    - #vex-rule[R5] Robots must fit within an 18" x 18" x 18" volume
    - #vex-rule[R12] Motors are limited to a combined power of 88W
    - #vex-rule[R25] Each Robot is limited to a maximum of 12 individual pieces of plastic, each one no larger than 4” x 8” x 0.070”.
    - #vex-rule[] Robots may use a maximum of two (2) legal VEX pneumatic air reservoirs on a Robot and each may be charged to a maximum of 100 psi.
    - #vex-rule[SG6] A Robot may carry, push, or plow an unlimited number of Blocks.
  ],
)
