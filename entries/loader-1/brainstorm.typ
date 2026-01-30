#import "/template/template.typ": *

#show: create-entry.with(
  title: "Loader v1",
  type: "brainstorm",
  date: datetime(year: 2025, month: 11, day: 28),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Rory",
  witnessed: "Anders",
)
#to-do(
  date: datetime(year: 2025, month: 11, day: 28),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Brainstorm possible ideas for the loader mechanism.", "Everyone"),
    (true, "Select the best idea for the loader mechanism using a decision matrix.", "Everyone"),
  )
)

Through a collective meeting, the team brainstormed different loader mechanism ideas, listing out the pros and cons of each specific idea. 


#pro-con(
  name: "Idea 1",
  image: image("brainstorm/loader-idea1.excalidraw.svg"),
  description: [
    The claw loader mechanism consists of two claws made of c-channel that are mounted on by pistons that propel them open and shut. The claws have plastic stuck to the ends to help with gripping the blocks that are in the loader. This design need a very precise alignment for it to work and will not let go of the block once it has gripped it.
  ],
  pros: [
    - *Grip:* - Due to the strength of the claw, and all the force of the piston going to the center of the design, it will have a very good grip that won't let go of the blocks until the person controlling the robot deems it necessary. 

  ],
  cons: [
    - *Speed:* - This is a slower design as it would only get one block at a time, take it out, and then intake it which can be a tedious process. This is also very annoying during fast matchplay when the team wants to matchload quickly and score.
    - *Efficiency* - This design would need a lot of precision to get it right as the size and shape of the claw can always be somewhat off. The precision makes it less efficient as during fast matchplay the driver won't have the time to align the mechanism resulting in the lack of efficiency. 
  ], 
  notes: [
    - A lot of tuning and experimentation needs to be done to see what will work best to grip the blocks from the loader
  ]
)

// #colbreak()

#pro-con(
  name: "Idea 2",
  image: image("brainstorm/loader-idea2.excalidraw.svg"),
  description: [
    The plastic loader mechanism is called that due to the reason that it uses polycarb plastic to propel the block out of the loader and into the first stage of the intake. The unique shape of the plastic allows the robot to lift the stack of blocks up and closer to the intake to intake all of them at once. The size and shape of the loader can be hard to measure or find but if it work it can get a lot of blocks at once.
  ],
  pros: [
    - *Efficiency:* - The integration of this design at a good angle can get all the blocks from the loader at once and make it much easier throughout the match or even during skills. 
    - *Speed* - The smooth transition between the gripping of the blocks and the blocks travelling on the ramp allows for a fast pace that makes scoring in the overall match faster as well. 
  ],
  cons: [
    - *Size:* - Due to the unique shape of the plastic it can often take a lot of space or be unable to fit in front of the intake which can be a problem and would need a lot of tuning. 
  ],
  notes: [
    - This robot can do very well in intense matchplay but that is if the sizing of the plastic is found to be suitable for the entirety of the robot. 
  ]
)

#colbreak()
#pro-con(
  name: "Idea 3",
  image: image("brainstorm/loader-idea3.excalidraw.svg"),
  description: [
    This design idea is based on a design from early season 5155E where the bracing in the front slips inside the loader and under the stack of blocks so they fall down towards the front of the intake. When they fall they are met on impact against standoffs that are pushed down and the force causes it to bounce towards the back of the robot and into the front stage of the intake. Similar to the previous design this is very good at getting blocks fast in one go but the tuning and measurements can be a hassle during the designing phase. 
  ],
  pros: [
     - *Efficiency:* - The integration of this design at a good size and height can get all the blocks from the loader at once and make it much easier throughout the match or even during skills. 
    - *Size* - This fits easier with the size of the rest of the bot as it only involves getting the bracing correctly implemented and does not have to worry too much about big plastic pieces taking up space. 
  ],
  cons: [
    - *Grip:* - There isn't much grip for the blocks it mostly just relies on the blocks falling down from gravity and then the force being exerted on the standoffs, which in turn sends it into the front of the intake. 
  ],
  notes: [
    - The robot is easy to implement but hard to tune and can cause errors if the blocks get stuck or the standoffs don't work well. 
  ]
)
