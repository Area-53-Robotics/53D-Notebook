#import "/template/template.typ": *

#show: create-entry.with(
  title: "Intake v1",
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
    = Impulse
    #v(15pt)
  ],
  stack(
    spacing: 10pt,
    image("understand/impulse1.png", width: 200pt),
    image("understand/impulse2.png", width: 200pt)
  ),
  [
    == What is Impulse?
    Impulse describes the change in momentum of an object. It is often denoted by the symbol J and is mathematically expressed as the product of force (F) and the time (Δt) over which the force is applied:
    #admonition(type: "equation")[
      If:
      - $J$ is the impulse (change in momentum) of an object
      - $F$ is the amount of force applied to an object
      - $#sym.Delta t$ is the time over which the force is applied

      $ J = F #sym.Delta t $
    ]

    == How does it relate to the intake?

    The impulse experienced by a game element is equal to the change in its momentum. When an intake mechanism interacts with a game element, it applies a force over a certain duration. The resulting impulse causes a change in the game element momentum, which is important for moving blocks through and out the intake. 
  ],
)

#grid(
  align: (x, _) =>
    if x == 0 {left + top}
    else if x == 1 {center + horizon},

  grid.cell(colspan: 2)[
    = Tension
    #v(15pt)
  ],  
  [
    == What is tension?
      Tension refers to the force that is transmitted through a string, rope, cable, or any flexible connector when it is pulled tight by forces acting from opposite ends. Tension is a pulling force, and it is always directed along the length of the flexible connector.
  ],
  image("understand/tension.png"),
  grid.cell(colspan: 2)[
    == How does it relate to the intake?
    Tension in flexible connectors contributes to the control and stability of the intake mechanism. 
  ]
)

#colbreak()

#grid(
  align: (x, _) =>
    if x == 0 {left + top}
    else if x == 1 {center + horizon},

  grid.cell(colspan: 2)[
    = Elasticity and Hooke's Law
    #v(15pt)
  ],
  [
    == What is elasticity and Hooke's law?

    - *Elasticity* is the property of a material that allows it to return to its original shape and size after deformation when the applied force is removed. Materials that exhibit high elasticity can undergo substantial deformation and then recover completely
    - *Hooke's Law* describes the linear relationship between the force applied to a spring or elastic material and the resulting deformation. It is named after the 17th-century physicist Robert Hooke..

    #admonition(type: "equation")[
      If:
      - $F$ is the force needed to extend or compress an elastic material
      - $k$ is a constant factor characteristic of the elastic material
      - $#sym.Delta x$ is the distance that that the elastic material is displaced

      $ F = -k #sym.Delta x $
    ]

    == How do they relate to the intake?
    Elasticity is crucial for allowing the intake to deform when interacting with blocks and then recover its original shape afterwards, especially if we plan to use rubber bands or flex wheels in the intake design. 
  ],
  stack(
    spacing: 10pt,
    image("understand/elastichooke1.png"),
    image("understand/elastichooke2.png")
  ),
)