#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1 - Troubleshooting",
  type: "build",
  date: datetime(year: 2024, month: 8, day: 9),
  attendance: ("Ishika", "Makhi", "Rory", "Eric"),
  designed: "Ishika",
  witnessed: "Makhi",
)


#set grid(
  columns: (1fr, 1fr),
  column-gutter: 5pt,
  row-gutter: 0pt,
)

= 2024/08/09
#to-do(
  date: datetime(year: 2024, month: 8, day: 9),
  monthly-schedule: "Ahead",
  yearly-schedule: "On",
  (
    (true, "Build the drivetrain according to today's delegation.", "Everyone"),
  )
)

We are happy that the drivetrain is completed. We are making much more progress at this time compared to where we were last season. Today, we took time to troubleshoot our drivetrain to make sure everything functions correctly. Since the drivetrain serves as the foundation of our robot, a failed drivetrain will result in a failed robot.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the drivetrain): Eric, Ishika
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Eric
    - *Oversight & Quality Control*:
    - *Initial Testing*: Everyone
    - *Programming*: Ishika
  ],
  today: [
    - Attaching the cross brace for the drivetrain: Eric
    - Fix any problems or bending on the robot: Eric
  ]
)

== Build Process
=== Materials
- x1 26x2x1 C-channel
- x4 11x2x1 C-channel
- The remaining materials can be found in the toolbox

#colbreak()

#grid(
  [
    === Troubleshooting
    - The front of our drivetrain was starting to bend inwards.
      - We believe that the 1x1 half-cut brace in the front was responsible.
    - #text(red)[Problem:]
      - The front of the drivetrain was 78 mm wide.
      - However, the back of the drivetrain was around 76 mm wide. This caused the front of the drivetrain to start to bend.
    - #text(green)[Solution:]
      - First, we took the front wheels off. We believed that was where the wheels were starting to bend.
      - Then, we added standoffs at the end to push the drivetrain back.
    - We set up temporary C-channels on the side of the drivetrain. They will be the mounts for the cross brace.
      - They are attached so that the C-channels on the side are further ahead compared to the inner C-channels.
      - This is because the motors and screw joints prevent screws from reaching certain spots.
    - #text(red)[Problem:]
      - Because of the bending, some of the holes for the cross brace do not align.
      - We need to test if the standoffs reduce the bending at the next meeting.
  ],
  stack(
    spacing: 10pt,
    figure(
      image("build-2/2024.08.09-1.jpg", width: 200pt),
      caption: "The cross brace is not aligned with the holes"
    ),
    figure(
      image("build-2/2024.08.09-2.jpg", width: 200pt),
      caption: "Front view of the cross-brace"
    )
  ),
)

#colbreak()

= 2024/08/10
#to-do(
  date: datetime(year: 2024, month: 8, day: 10),
  monthly-schedule: "On",
  yearly-schedule: "On",
  (
    (true, "Build the drivetrain according to today's delegation.", "Everyone"),
    (true, "Program a versatile driver control system for the drivetrain.", ("Ishika",)),
    (true, "Test the performance of the drivetrain.", "Everyone"),
  )
)

We are worried about the bending at the front of the drivetrain. Not only does the bending prevent us from making any meaningful progress on the drivetrain, but it can also create friction on the drivetrain, as well as worsen the stability of future subsystems on the robot. We hope that our solution was able to mitigate the bending as much as possible.

== Delegation
#delegation(
  recurring: [
    - *Inventory* (Collecting materials from the manifest to build the drivetrain): Eric, Rory, Ishika
    - *Manufacturing* (cutting pieces to size, cleaning sharp edges): Eric
    - *Oversight & Quality Control*:
    - *Initial Testing*: Everyone
    - *Programming*: Ishika
  ],
  today: [
    - Reattach the wheel to the drivetrain:
    - Attach the cross brace of the drivetrain: Eric
    - Reexamine the friction of the drivetrain: Eric
  ]
)

== Build Process
#grid(
  figure(
    image("build-2/2024.08.10-1.jpg", width: 225pt),
    caption: "Temporary radio placement"
  ),
  [
    === Materials
    - Radio
    - x2 23x2x1 C-channel
    - The remaining materials can be found in the toolbox

    === Assembly
    - Since we are going to be testing the drivetrain on the field, we needed a temporary spot for the radio.
    - We ziptied the radio onto the back of the drivetrain for now.
  ],
)

#grid(
  [
    === Troubleshooting
    - Using standoffs to unbend the drivetrain seems to have helped.
    - #text(red)[Problem:] The cross brace was still a little misaligned. This will cause both sides of the drivetrain to bend inwards as the season progresses. Additionally, we noticed that the right side of the drivetrain was experiencing more stress than the left side.
    - #text(green)[Solution:] To prevent the side C-channels from warping, we added standoffs.
    - The bending was mitigated enough to attach new cross-bracing.
    - We attached the C-channels to the new cross-bracing to create the towers.
      - They will serve as the towers for the intake.
  ],
  figure(
    image("build-2/2024.08.10-2.jpg", width: 175pt),
    caption: "The bending got better as a result of leaving the standoffs overnight"
  ),
)

#figure(
  image("build-2/2024.08.10-3.jpg", width: 200pt),
  caption: "C-channel towers"
)