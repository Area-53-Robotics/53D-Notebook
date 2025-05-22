#import "/template/template.typ": *

#show: create-entry.with(
  title: "Odometry v1",
  type: "understand",
  date: datetime(year: 2024, month: 11, day: 22),
  attendance: ("Ishika", "Eric", "Rory", "Makhi", "Anders"),
  designed: "Ishika",
  witnessed: "Rory",
)
Since tracking wheels is a crucial component for our auton, it is important for the novice builders to properly understand the design. By breaking the design into smaller parts and explaining how each piece works together, we felt more comfortable to begin the brainstorming process.

#set grid(
  columns: (1fr, 1fr),
  gutter: 5pt,
)

#grid(
  align: (x, _) =>
    if x == 0 {center + horizon}
    else if x == 1 {left + top},

  grid.cell(colspan: 2, align: left + horizon)[
    = Integral
    #v(15pt)
  ],
  image("understand/integral.excalidraw.svg", width: 200pt),
  [
    == What is an integral?
    An integral is a mathematical concept that represents the area under a curve or the accumulation of quantities. It is defined as the limit of a sum of areas of rectangles under a curve as the width of the rectangles approaches zero, and it can be classified into definite and indefinite integrals.

    == How does it relate to odometry?
    Odometry calculates the robot's position as an accumulation of the rotations the tracking wheel(s) has made since the program's start. Additionally, the PID movement method uses an integral component to increase its output as the PID accumulates error.
  ],
)


#grid(
  align: (x, _) =>
    if x == 0 {left + top}
    else if x == 1 {center + horizon},

  grid.cell(colspan: 2)[
    = Derivative
    #v(15pt)
  ],
  [
    == What is derivative?
    A derivative is the limit of the difference quotient, which represents the slope of the tangent line to a function at a specific point. It quantifies the instantaneous rate of change of the function with respect to its variable.

    == How does it relate to odometry?
    The PID movement method uses a derivative component to decrease its output if the rate of change of the error is decreasing too rapidly.
  ],
  stack(
    spacing: 10pt,
    image("understand/derivative.excalidraw.svg", height: 135pt),
    admonition(type: "equation")[
      If:
      - $(d y)/(d x)$ is the derivative
      - $x$ is the input variable
      - $h$ is the difference from the first point to the second point
      $ (d y)/(d x) = op("lim", limits: #true)_(h->0) (f(x + h) - f(x)) / h $
    ],
  ),
)

#colbreak()

#grid(
  align: (x, _) =>
    if x == 0 {left + top}
    else if x == 1 {center + horizon},

  grid.cell(colspan: 2)[
    = Angular Rotation
    #v(15pt)
  ],
  [
    == What is angular rotation?
    The motion of an object along a curved path is known as curvilinear motion. The difference between the initial point and the final point is termed 'motion'. The angle difference between the initial and final positions of a point that has rotated along a specified axis is angular displacement.

    == How does it relate to odometry?
    Odometry calculates the robot's position as an accumulation of the angular rotations the tracking wheel(s) has made since the program's start.
  ],
  stack(
    spacing: 10pt,
    image("understand/angular-rotation.excalidraw.svg", fit: "contain", height: 115pt),
    admonition(type: "equation")[
      If:
      - $theta$ is the angular displacement
      - $s$ is the distance traveled by the body
      - $r$ is the radius of the circle along which the body is moving

      $ theta = s / r $
    ]
  ),
)