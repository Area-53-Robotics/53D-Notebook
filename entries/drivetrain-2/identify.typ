#import "/template/template.typ": *

#show: create-entry.with(
  title: "Drivetrain v2",
  type: "identify",
  date: datetime(year: 2025, month: 10, day: 18),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Eric",
  witnessed: "Anders",
)


#to-do(
  date: datetime(year: 2025, month: 10, day: 18),
  monthly-schedule: "Off",
  yearly-schedule: "Ahead",
  (
    (true, "Identify the new design goals and constraints for the drivetrain.", "Everyone"),
    (true, "Build the new drivetrain according to today's delegation", "Everyone"),
  )
)

From our findings and analysis of the scrimmage we found that our driver was unsatisfied with the current drivetrain and it did not fit the idea of the robot we wanted. We decided to make a switch from a mix of omni and traction wheels to all omnis on either side of the drivetrain. The team found that using all omnis would allow the robot to maneuver better around the field which has been filled with many obstacles in the way and would allow our driver to get a better hold on the steering of the robot.   

#pro-con(
  name: "Original Idea",
  image: image("drivetrainoldidea.excalidraw.svg"), 
  description: [ ],
  pros: [
    - *Ease of Driving* - Makes it considerably easier for newer drivers to get the hang of driving during fast matchplay. 
    - *Speed* - The hybrid of the two wheels allows for decent speed that can help during intense matches and last-minute strategic decisoins. 
  ], 
  cons: [
    - *Maneuverability* -  Due to the traction wheels it causes much more friction between the ground and the robot resulting in less control over the maneuverability of the robot. 
  ]
)

#colbreak()

#pro-con(
  name: "New Idea",
  image: image("drivetrainnewidea.excalidraw.svg"), 
  description: [ ],
  pros: [
    - *Ease of Programming* -  This design will make it easier on the programmers to code, creating a easier solution to the drive curve that is usually implemented. 
    - *Speed* - The lack of traction makes it easier for the robot to move without anything stopping it, increasing the overall speed of the drivetrain.
  ], 
  cons: [
    - *Traction* -  While the lack of traction can be a good thing it can also lead to the lack of control resulting in problems during the match. 
  ]
)

= New Design Goals & Constraints
#goals-constraints(
  goals: [
    - The drivetrain should allow the robot to maneuver much more smoothly and around all the obstacles laid in the path of the robot. 
    - There should be a satisfactory speed for the robot to score efficiently and accurately while beating the opponents during intense matchplay. 
  ],
  constraints: [
    - #vex-rule[R5] Robots must fit within an 18" x 18" x 18" volume
    - #vex-rule[R12] Motors are limited to a combined power of 88W
  ],
)
