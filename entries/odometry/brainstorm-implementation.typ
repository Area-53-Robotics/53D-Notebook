#import "/template/template.typ": *

#show: create-entry.with(
  title: "Odometry v1 - Implementation",
  type: "brainstorm",
  date: datetime(year: 2024, month: 11, day: 29),
  attendance: ("Ishika"),
  designed: "Ishika",
  witnessed: "Ishika",
)

#to-do(
  date: datetime(year: 2024, month: 11, day: 29),
  monthly-schedule: "On",
  yearly-schedule: "Off",
  (
    (true, "Brainstorm implementation methods for an odometry system.", ("Ishika")),
    (true, "Select the best implementation method using a decision matrix.", ("Ishika")),
    (true, "Brainstorm hardware configurations for an odometry system.", "Everyone"),
    (true, "Select the best hardware configuration using a decision matrix.", "Everyone"),
    (true, "Plan the implementation of the odometry system.", "Everyone"),
    (true, "Build the odometry hardware according to today's delegation.", "Everyone"),
  )
)

Now that we have decided to use PID with a possibility for Pure Pursuit, we brainstormed a few different implementation methods that have the capability to use them.

#pro-con(
  name: "DIY Implementation",
  image: circle(fill: gray, image("/assets/logos/logo.svg")),
  description: [
    This would involve creating and programming our own movement algorithms from scratch.
  ],
  pros: [
    - *Customizability* - We would be able to add and change as many features as we desire and make the algorithms specific to our robot.
    - *Revertability* - Using Git commands, we can easily revert any breaking changes we make to the codebase.
  ],
  cons: [
    - *Support* - It would be harder to get assistance from others if an algorithm does not work.
    - *Development Time* - Unlike with a library, we would have to take time to program the algorithms we need.
  ],
)

#colbreak()

#pro-con(
  name: "LemLib",
  image: image("brainstorm-implementation/LemLib.png", height: 5em),
  description: [
    LemLib is a library created and maintained by other VRC students that makes it easier to implement algorithms such as position tracking, PID, and Pure Pursuit.
  ],
  pros: [
    - *Actively Maintained* - LemLib will continue being developed throughout this season, so if we encounter problems with the library we can request a fix from the developers.
    - *Robust Movement Options* - LemLib has linear PID, turning PID, boomerang (curved) PID, and Pure Pursuit movement.
    - *Support* - Many other teams use LemLib, so we can get support from them.
  ],
  cons: [
    - *Update Time* - LemLib's next confirmed major update, v0.6.0, release date is unknown.
  ],
)

#pro-con(
  name: "ARMS",
  image: image("brainstorm-implementation/ARMS.svg"),
  description: [
    ARMS is a library created by the Purdue SigBots VEX U team, the same group that created PROS. #glossary-footnote[PROS] It allows users to quickly implement and tune linear and angular PID algorithms.
  ],
  pros: [
    - *PROS 3 Compatibility* - It has the greatest compatibility with PROS, which will make debugging issues easier.
  ],
  cons: [
    - *Deprecated* - ARMS is no longer being updated, so if we encounter any significant problems we will be unable to fix them without modifying the source code ourselves.
    - *PROS 4 Incompatibility* - We would have to downgrade our PROS version from the PROS 4 Beta to the PROS 3 stable version to use this library.
  ],
)