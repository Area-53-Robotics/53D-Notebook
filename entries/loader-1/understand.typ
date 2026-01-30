#import "/template/template.typ": *

#show: create-entry.with(
  title: "Loader Mechanism v1",
  type: "understand",
  date: datetime(year: 2025, month: 8, day: 30),
  attendance: ( "Ishika", "Eric", "Rory", "Makhi", "Anders", "Samia"),
  designed: "Eric",
  witnessed: "Rory",
)

#set grid(
  columns: (1fr, 1fr),
  gutter: 5pt,
)

#grid(
  align: (x, _) =>
    if x == 0 {center + horizon}
    else if x == 1 {left + top},

  grid.cell(colspan: 2, align: left + horizon)[
    = Levers
    #v(15pt)
  ],
  stack(
    spacing: 10pt,
    image("understand/first-class-lever.excalidraw.svg", width: 150pt),
    image("understand/second-class-lever.excalidraw.svg", width: 150pt),
    image("understand/third-class-lever.excalidraw.svg", width: 150pt),
    image("understand/mechanical-leverage.excalidraw.svg", width: 280pt)
  ),
  [
    == What are levers?
    Levers are simple machines that help make it easier to lift, move, or apply force to an object. They consist of a rigid bar that pivots around a fixed point called a fulcrum. By applying force (effort) at one point on the lever, you can move an object (the load) at another point, using the mechanical advantage to multiply the input force and make the task easier. There are three types of lever systems with different levels of mechanical advantages.

    == First Class Levers
    - Arrangement: The fulcrum is located between the effort and the load.
    - Examples: Seesaw, crowbar, scissors.
    - Mechanical Advantage: This can vary depending on where the fulcrum is placed. If the fulcrum is closer to the load, it provides more force. If it's closer to the effort, it provides more speed.

    == Second Class Levers
    - Arrangement: The load is located between the fulcrum and the effort.
    - Examples: Wheelbarrow, bottle opener, nutcracker.
    - Mechanical Advantage: Less effort is required to move a larger load.

    == Third Class Levers
    - Arrangement: The effort is located between the load and the fulcrum.
    - Examples: Tweezers, fishing rod, human arm.
    - Mechanical Advantage: It does not reduce the effort needed but increases the speed or range of motion.
  
    == How do levers relate to the loader mechanism?
    In a loader mechanism, a lever system is often used. The lever amplifies the force applied at one end, creating a stronger gripping force at the point of contact with the object at the other end. This allows the mechanism to grip the block or lift the stack of blocks in the loader up. 
  ],
)

#grid(
  align: (x, _) =>
    if x == 0 {left + top}
    else if x == 1 {center + horizon},

  grid.cell(colspan: 2)[
    = Friction
    #v(15pt)
  ],  
  [
    == What is friction?
      Friction is the force that resists an object’s motion on a surface. The object can either be stationary or in motion relative to the surface. Friction occurs where the object is in contact with the surface. In other words, it takes place between two surfaces, and hence, is a contact force.
  ],
  image("understand/friction.excalidraw.svg"),
  grid.cell(colspan: 2)[
    == How does it relate to the loader mechanism?
    When the loader mechanism goes to grab the blocks or stack of blocks inside the loader, there needs to be a contact force between the loader mechanism and the block. This contact force creates a friction force that prevents the block from slipping off of the platform of the loader mechanism. 

  ]
)


#grid(
  align: (x, _) =>
    if x == 0 {left + top}
    else if x == 1 {center + horizon},

  grid.cell(colspan: 2)[
    = Inclined Plane
    #v(15pt)
  ],
    [
    == What is inclined plane?
      A tilted, flat surface used to raise or lower objects with less force than lifting vertically, trading force for distance. An object on an incline has its weight broken down; the parallel component causes it to slide down, while the perpendicular component is supported by the normal force. To move it up, you apply a force parallel to the ramp that overcomes both and friction, moving it over a longer path but with less effort than lifting straight up. 
  ],
  image("understand/inclined-plane.excalidraw.svg"),
  grid.cell(colspan: 2)[
    == How does it relate to the loader mechanism?
    When the loader mechanism goes to grab the blocks or stack of blocks inside the loader,the ramp curves which creates an inclined plane. This inclined plane allows the force to exceed the friction and push into the front of the intake so that the blocks can use for scoring. 

  ]
)