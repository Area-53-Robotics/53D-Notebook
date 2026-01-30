#import "/template/template.typ": *

#show: create-entry.with(
  title: "Overall Robot Plan v2",
  type: "identify",
  date: datetime(year: 2025, month: 10, day: 17),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Ishika",
  witnessed: "Rory",
)


#to-do(
  date: datetime(year: 2025, month: 10, day: 17),
  monthly-schedule: "Off",
  yearly-schedule: "Ahead",
  (
    (true, "Identify the new design goals and constraints for the overall robot.", "Everyone"),
    (true, "Plan the implementation of the new overall robot idea.", "Everyone"),
  )
)

The previous bot had issues scoring and was unsuitable for high-level matchplay. Reviewing the footage, and results from our scrimmage we realized that some changes had to be made to the robot. We researched overseas teams, events, and more to find inspiration on something that would work for our team. We found that many high level bots had many features that allows them to score faster, and more accurately. So, we chose to incorporate that into our own robot, we wanted a robot that could go under the bar and had more accurate scoring. One of the main teams we based our ideas off of was 8889A Highlander. 
#pro-con(
  name: "Original Idea",
  image: image("ishika-idea.png"), 
  description: [ ],
  pros: [
    - *Storage* - Takes into consideration storage space for the blocks to make it easier to score consistently during a match.
    - *Center of Gravity* - The connection of the basket intake to the actual hopper basket is evenly spaced giving the robot good center of gravity. 
  ], 
  cons: [
    - *Efficiency* -  Very hard to correctly orient the blocks leading to less efficiency in the scoring of the blocks.
    - *Speed* - The robot was slow in receiving the blocks into the robots and then scoring them onto goals, which was a due to the lack speed of the basket intake and hopper.   
    - *Complexity* - This design became more complex than as expected, leading to continuous tuning and inconsistent results. 
  ]
)

//#colbreak()

#pro-con(
  name: "New Idea",
  image: image("identify-overall-robotv2.excalidraw.svg"), 
  description: [ ],
  pros: [
    - *Accuracy* - This design will lead to more accuracy in the scoring of the blocks as the robot can lead the blocks more efficiently into goals, and line up with them well. 
    - *Speed* - Since the ramp of the intake is a smooth terrain to travel on it eliminates the amount of friction the blocks may get and so the time needed for the blocks to go into the goals is decreased.
    - *Compactness* - The weight of the robot is much lighter due to the compactness of the robot and makes it much easier for the driver to maneuver. This includes having the benefit of being able to go under the goals.
  ], 
  cons: [
    - *Storage* - This robot does not leave any space for blocks and is much more compact than any other design. 
    - *Air Usage* - The robot heavily relies on pistons to be able to move the upper level of the intake to match the goal height which results in a excessive reliance on air/pneumatics.  
  ]
)

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
