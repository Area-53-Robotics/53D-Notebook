#import "/template/template.typ": *

#show: create-entry.with(
  title: "Overall Robot Plan v1",
  type: "brainstorm",
  date: datetime(year: 2025, month: 6, day: 13),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Ishika",
  witnessed: "Samia",
)

Every member on 53D used the analysis in our #entry-reference(type: "identify", title: "Game Challenge - Strategy Analysis") to brainstorm an overall robot idea.


#pro-con(
  name: "Makhi",
  image: image("brainstorm/makhi-idea.png"),
  description: [
    This design uses an escalator system where the blocks travel upwards from the intake to the first level of goals and there is a piston to move the intake up to the second level of goals. There is a kicker that is used to descore the blocks along with a fast, efficient drivetrain. 
  ],
  pros: [
    - Has a very efficient descore mechanism
    - Faster scoring mechanism 

  ],
  cons: [
    - No storage space
    - Can rely too heavily on air 
  ], 
  notes: [
    - The robot is a very efficient and accurate design but depending on how the idea is executed can cause problems. 
  ]
)

// #colbreak()

#pro-con(
  name: "Ishika",
  image: image("brainstorm/ishika-idea.png"),
  description: [
    This design incorporates the use of a basket keeping in mind of there being no limit to the amount of blocks that are allowed to be possessed. There is an elevator type intake that takes into consideration the different heights of the different goals and is very efficient in scoring. There is also a loader mech that allows us to take out blocks from the loaders, efficiently and smoothly.  
  ],
  pros: [
    - The ability to store a lot of a blocks at the same time.
    - Very efficient to use during high-speed matchplay. 
  ],
  cons: [
    - Cannot go under the goals 
    - Can be time consuming if the intake is not tuned properly. 
  ],
  notes: [
    - The most important aspect of this robot is the tuning, as if the tuning on the intake isn’t right it will become a huge hindrance during matches. 
  ]
)

#colbreak()

#pro-con(
  name: "Eric",
  image: image("brainstorm/eric-idea.excalidraw.svg"),
  description: [
    The intake is designed to move up and down to reach all the goals. A set of wheels at the front allows of easy matchload intaking
  ],
  pros: [
    - Considers space for electronics and sets them in good places
    - Matchloading capability
  ],
  cons: [
    - Air usage 
    - Heavy
  ],
  notes: [
    - The robot relies more on the use of pistons than the use of motors which can be either beneficial or consequential. 
  ]
)

#pro-con(
  name: "Rory",
  image: image("brainstorm/rory-idea.png"),
  description: [
    This design uses a two stage intake with a redirect mechanism. The drivetrain has eight wheels, with four on each side. The first stage of the intake uses four flexwheels to pick up the blocks, while a laddered intake made up of sprockets and rubber bands. Once blocks go up through the intake, they go through the redirect mechanism which can make the blocks go into either the top or middle goal based on which way a flex wheel is spinning.
  ],
  pros: [
    - The laddered intake is very organized and efficient. 
    - Very accurate
  ],
  cons: [
    - No storage space
    - Very hard to tune
  ],
  notes: [
    - This idea is very complicated to execute but if executed properly can be very accurate during fast matchplay.
  ]
)
#colbreak()
#pro-con(
  name: "Anders",
  image: image("brainstorm/Anders-Vex-Push-Back-Robot-Sketch.excalidraw.svg"),
  description: [
    My robot uses a unique design with a rotating loader/storage area. In the front, there are two flex wheels which can pick up blocks from loaders or just lying on the ground. Blocks are then stored in a rectangular prism, where they can then be moved upwards with the help of a piston. Finally, another piston will push the blocks out into a goal, scoring them and ejecting blocks out on the other end.
  ],
  pros: [
    - Ability to store many blocks
    - The order of blocks remains consistent

  ],
  cons: [
    - Limited storage
    - Limited movement by the pneumatic air tank
  ], 
  notes: [
    - Both pistons could be replaced by racks and pinions powered by electric motors. 
  ]
)

#pro-con(
  name: "Samia",
  image: image("brainstorm/samia-idea.excalidraw.svg"),
  description: [
    This design uses rotating flex wheels to intake the blocks, and to outtake on the lower stage goals in the middle. The blocks remain in the same respective position while in the robot. To score into the middle and upper goals, there is a piston to score into both.  Finally, there’s a descore mech at the top to score blocks for control bonuses and removing blocks from goals.  

  ],
  pros: [
    - More direct intake
    - Order of blocks stays the same

  ],
  cons: [
    - Limited storage
    - Can’t go under long goals 
  ], 
  notes: [
    - The piston could be replaced so that scoring into medium goals is easier 
  ]
)
