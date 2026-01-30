#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v1",
  type: "brainstorm",
  date: datetime(year: 2025, month: 9, day: 05),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Rory",
  witnessed: "Anders",
)

Through a collective meeting, the team brainstormed different intake ideas, listing out the pros and cons of each specific idea. 


#pro-con(
  name: "Basket Intake",
  image: image("brainstorm/basketintake.excalidraw.svg"),
  description: [
    The basket intake consists of an interchanging set of sprockets and flex wheels which are used to propel the block up out of each preferred stage. The blocks are first intaked towards the bottom stage and go into the middle area between the intake and the body of the robot. Using the grip of the flex wheels and the tension from the rubber bands, the sprockets located in the back spin in an opposite direction from the flex wheels propelling it up. If another stage is needed to be passed then the same logic is executed with a piece of plastic at the top which is used to propel the block out the top.  
  ],
  pros: [
    - *Storage:* - A lot of storage space can be made and used well. 
    - *Accuracy:* - If tuned correctly will very accurately score the blocks.

  ],
  cons: [
    - *Orientation:* - Harder to orient the blocks correctly as if the intake is unable to correctly get the block into the right position for it to be propelled upwards there will be a problem. 
  ], 
  notes: [
    - A lot of tuning and experimentation needs to be done to see what will work best for the intake to be able to accurately propel the blocks upward.
  ]
)

// #colbreak()

#pro-con(
  name: "Escalator Intake",
  image: image("brainstorm/intakenewidea.excalidraw.svg"),
  description: [
    The escalator intake propels the block up the first part of the intake on a 45 degree angle then the blocks travel down the second part of the intake, which is flat, and out to the goal. The power to propel the blocks upward comes from the tension in the rubber bands on the sprockets and something towards the back of the intake will be used to propel the blocks onto the second part. Depending on the goal height the second part of the intake will either remain at a flat angle or increase to around a 45 degree angle. Flex wheels are used in this stages to smoothly transfer the blocks into the goals. 
  ],
  pros: [
    - *Efficiency:* - The integration of the intake at an angle can increase the scoring process, reducing the time taken to capture and score the blocks.
    - *Speed* - The smooth transition between the initial ramp to the flex wheels on the second part increases the speed at which the intake can take blocks and score them.
  ],
  cons: [
    - *Storage:* - Due to the space usage of this design, there is no space to hold any blocks limiting how many blocks can be scored at the same time.  
  ],
  notes: [
    - This robot can do very well in intense matchplay but will be highly dependent on air usage throughout all matches. 
  ]
)


#pro-con(
  name: "Hybrid",
  image: image("brainstorm/hybridintake.excalidraw.svg"),
  description: [
    The hybrid intake takes both the escalator design and the basket design and combines the two. It takes inspiration from the basket design’s front, but does not have sprockets, instead choosing to put flex wheels at the top to propel the blocks out. The escalator part of the intake uses sprockets of two different sizes and chain to propel the blocks upward. This is a very complicated design as it includes multiple functions that must work cohesively to achieve what is needed to be done. 
  ],
  pros: [
    - *Versatility:* - The design allows for quick and effective engagement with game elements, making it easier to get the blocks as they are weirdly shaped element that takes careful consideration. 
    - Matchloading capability
  ],
  cons: [
    - *Complexity:* - Combining two mechanisms increases the complexity of the design.
    - *Space:* - The combined design may require more space on the robot, which could limit other functionalities or components.
  ],
  notes: [
    - The robot is very complicated to implement as it involved a lot of different mechanism in one entire intake, this will result in confusion. The team still does not know much about this idea as well. 
  ]
)
