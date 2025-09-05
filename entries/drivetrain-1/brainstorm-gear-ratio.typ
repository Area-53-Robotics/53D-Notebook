#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v1 - Gear Ratio",
  type: "brainstorm",
  date: datetime(year: 2025, month: 8, day: 28),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Makhi",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2025, month: 8, day: 28),
  monthly-schedule: "Ahead",
  yearly-schedule: "Ahead",
  (
    (true, "Brainstorm possible gear ratios for the tank drive.", "Everyone"),
    (false, "Select the best gear ratio for the tank drive using a decision matrix.", "Everyone"),
  )
)

The last important factor that goes into a drivetrain is the gear ratio that is used. Gear ratios affect the torque and speed output of a subsystem, and is a critical part of drivetrain creation. We used a publicly available spreadsheet #footnote[#link("https://docs.google.com/spreadsheets/d/1RSoLv3tnpiCgFyHb0QayxK-42r9MgVRD_4QQmeFM618/edit#gid=0")] to help us collect the data needed for each gear ratio.

#admonition(type: "equation")[
  $"Gear Ratio" = "# Driven Gear Teeth"/"# Driving Gear Teeth" = "Driven : Driving"$
]

#admonition(type: "equation")[
  $"Output RPM" = "Motor RPM" * "Gear Ratio"$
]

#gear-ratio-pro-con(
  name: "450 RPM 2.75\" Wheels",
  image: image("brainstorm-gear-ratio/450 RPM 2.75 inch.excalidraw.svg"),
  motor-cartridge: "600 RPM (Blue Cartridge)",
  wheel-size: 2.75,
  gear-ratio: "36:48",
  simplified-ratio: "3:4",
  rpm: 450,
  speed: 64.8,
  pros: [
    - *Speed-Torque Balance* - Gearing down from 600 RPM to 450 RPM trades speed (some of which is unnecessary anyways) to create an effective balance between speed and torque.
    - *Control* - Gearing down the RPM produces better control, as the drivetrain is not turning as fast.
  ],
  cons: [
    - *Speed* - Due to having the lowest RPM and smallest wheels out of the brainstormed options, this option is the slowest.
    - *Limited Traction* - Limited traction due to the smaller wheels.
  ],
  notes: [
    - This is the same gear ratio that we ran last year
  ]
)

#colbreak()

#gear-ratio-pro-con(
  name: "600 RPM 2.75\" Wheels",
  image: image("brainstorm-gear-ratio/600 RPM 2.75 inch.excalidraw.svg"),
  motor-cartridge: "600 RPM (Blue Cartridge)",
  wheel-size: 2.75,
  gear-ratio: "60:60",
  simplified-ratio: "1:1",
  rpm: 600,
  speed: 86.394,
  pros: [
    - *Speed* - Direct drive allows for high speed and acceleration, creating quick movements.
    - *Force* - Direct drive leads to less mechanical energy loss between gears.
  ],
  cons: [
    - *Load Capacity* - Limited torque causes limited load capacity.
    - *Skidding* - The high speed of the drivetrain makes it more prone to slipping.
  ],
  notes: [
    - Better for speed than control
  ]
)

#gear-ratio-pro-con(
  name: "450 RPM 3.25\" Wheels",
  image: image("brainstorm-gear-ratio/450 RPM 3.25 inch.excalidraw.svg"),
  motor-cartridge: "600 RPM (Blue Cartridge)",
  wheel-size: 3.25,
  gear-ratio: "36:48",
  simplified-ratio: "3:4",
  rpm: 450,
  speed: 76.6,
  pros: [
    - *Speed-Torque Balance* - Gearing down from 600 RPM to 450 RPM and using bigger wheels creates an ideal balance between speed and torque.
    - *Traction* - More traction than the other gear ratios because of the bigger wheels.
  ],
  cons: [
    - *Complexity* - This gear ratio requires gearing downwards and using bigger wheels, which can be hard to fit into a drivetrain half.
  ],
  notes: [
    - 3.25" wheels allow for 3 hole wide drive halves
  ]
)