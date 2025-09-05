#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1",
  type: "understand",
  date: datetime(year: 2025, month: 8, day: 16),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Ishika",
  witnessed: "Eric",
)

#set grid(
  columns: (1fr, 1fr),
  gutter: 5pt,
)

#grid(
  align: (x, _) =>
    if x == 0 {center + horizon}
    else if x == 1 {left + top},

  grid.cell(colspan: 2, align: left)[
    = Gear Ratios
  ],
  [#image("understand/DT stem - Gear ratio.svg")],
  [
    == What are gear ratios?
    Gear ratios provide mechanical advantage. Depending on whether the driven gear has more or fewer teeth than the driving gear, the gear ratio can either increase (mechanical advantage for torque) or decrease (mechanical advantage for speed) rotational speed or force.

    == How do they relate to the drivetrain?
    Gear ratios are crucial for optimizing the performance of motorized systems. They assist in achieving the desired balance between speed and torque, allowing robots to move efficiently.
  ],
)

#grid(
  align: (x, _) =>
    if x == 0 {center + horizon}
    else if x == 1 {left + top},

  grid.cell(colspan: 2, align: left)[
    = Structural Dynamics
  ],
  [#image("understand/Structural dynamics.svg")],
  [
    == What are structural dynamics?
    Determining the natural frequencies of a structure is crucial in understanding how it will respond to dynamic loads. These frequencies represent the inherent vibration characteristics of the structure.

    == How do they relate to to the drivetrain?
    Structural dynamics help analyze and understand the vibrations induced in the drivetrain components during operation. Vibrations can be critical, affecting the performance and lifespan of various elements, such as gears, bearings, and structural members.
  ],
)

#colbreak()

#grid(
  align: (x, _) =>
    if x == 0 {left + top}
    else if x == 1 {center + horizon},

  grid.cell(colspan: 2, align: left)[
    = Newton's Laws of Motion
    #v(10pt)
  ],
  [
    == What are Newton's Laws of Motion?

    1. *First Law* (Law of Inertia): An object at rest remains at rest, and an object in motion continues in motion with a constant velocity unless acted upon by a net external force.

    2. *Second Law* ($#sym.Sigma F = m a$): The acceleration of an object is directly related to the net force acting upon it and inversely related to its mass.

    #admonition(type: "equation")[
      If:
      - $#sym.Sigma F$ is the net force acting on an object
      - $m$ is the mass of the object
      - $a$ is the acceleration of the object

      $ #sym.Sigma F = m a $
    ]

    3. *Third Law* (Action and Reaction): For every action, there is an equal and opposite reaction.

    #admonition(type: "equation")[
      If:
      - $F_"in"$ is the force that the first object exerts on the second object
      - $F_"out"$ is the force that the second object exerts back on the first object

      $ F_"in" = F_"out" $
    ]
  ],
  stack(
    spacing: 10pt,
    image("understand/Newton's First Law.excalidraw.svg", fit: "contain", height: 115pt),
    image("understand/Newton's Second Law.excalidraw.svg", fit: "contain", height: 110pt),
    image("understand/Newton's Third Law.excalidraw.svg", fit: "contain", height: 170pt)
  ),
  grid.cell(colspan: 2)[
    == How do they relate to the drivetrain?

    Newton's laws of motion directly influence the behavior of a drivetrain in the following ways:

    - *Initiating Motion*: The first law explains the initial state of rest or motion.
    - *Acceleration and Forces*: The second law governs how the forces applied by the drivetrain's motors result in acceleration or deceleration, influencing the robot's speed and direction.
    - *Interaction with the Ground*: The third law is evident in the interaction between the wheels of the drivetrain and the surface, which is essential for the robot's mobility.
  ]
)