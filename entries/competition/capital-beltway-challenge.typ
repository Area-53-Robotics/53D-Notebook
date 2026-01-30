#import "/template/template.typ": *

#show: create-entry.with(
  title: "Capital Beltway Challenge",
  type: "competition",
  date: datetime(year: 2025, month: 11, day: 22),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Anders",
  witnessed: "Rory",
)

#admonition(type: "competition", title: "Competition Results")[
  - *Rank:* 12/24
  - *Qualification Matches Wins/Losses/Ties:* 3/4/0
  - *Eliminated in:* Round of 16
]

= Competition Goals
- Verify that our subsystems are at a competitive level.
- The current robot design matches which our goals for this season. 

= Matches
#tournament-match(
  match: "Q2",
  red_alliance: (teams: ("53D", "9080R"), score: 21),
  blue_alliance: (teams: ("676D", "20850A"), score: 62),
  outcome: "Loss",
  auton: "Red",
  awp: false,
  strategy: [
    - Communicate with our teammates and see how the match goes
  ],
  auton_notes: [
    - Intake one block but failed to outtake
    - Failed

  ],
  match_notes: [
    - Intake didn’t work
    - Drivetrain performed well
    - Blocked other teams from scoring
    - Alliance parked at the end


  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain"),
    underperformed: "Intake",
    disabled: none,
  )
)

#tournament-match(
  match: "Q10",
  red_alliance: (teams: ("9080S", "9039Z"), score: 59),
  blue_alliance: (teams: ("53D", "7135Z"), score: 25),
  outcome: "Loss",
  auton: "Blue",
  awp: false,
  strategy: [
    - See if the intake works and if it doesn’t then focus on defending
  ],
  auton_notes: [
    - Failed to intake blocks
    - Other alliance got disqualified from auton
  ],
  match_notes: [
    - Intake jammed
    - Snagged other bot
    - Tried to defend the other team
    - Pushed into the other alliance and we both got stuck up

  ],
  subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain",
    underperformed: "Intake",
    disabled: none,
  )
)

#tournament-match(
  match: "Q16",
  red_alliance: (teams: ("53D", "5525A"), score: 36),
  blue_alliance: (teams: ("9080H", "23098A"), score: 3),
  outcome: "Win",
  auton: "Blue",
  awp: false,
  strategy: [
    - The intake will likely not work so just stop other teams from scoring
  ],
  auton_notes: [
    - Auton missed the blocks and failed
  ],
  match_notes: [
    - Our intake had more issues so we focused on defense
    - Stopped the other team from scoring well
    - Defended the center goal
    - Parked at the end


  ],
  subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain",
    underperformed: "Intake",
    disabled: none,
  )
)

#tournament-match(
  match: "Q19",
  red_alliance: (teams: ("11555B", "21078A"), score: 16),
  blue_alliance: (teams: ("53E", "53D"), score: 42),
  outcome: "Win",
  auton: "Red",
  awp: false,
  strategy: [
    - Communicate with our alliance partner so we can defend while they score
  ],
  auton_notes: [
    - Auton didn't make it all the way to the goal, failed
  ],
  match_notes: [
    - Interfered with their ability to score
    - Stayed between their bot and the goal
    - A block was knocked out midgame
    - Failed to park at the end but instead continued to defend

  ],
  subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain",
    underperformed: none,
    disabled: "Intake",
  )
)

#tournament-match(
  match: "Q27",
  red_alliance: (teams: ("53D", "23098B"), score: 21),
  blue_alliance: (teams: ("53A", "20850X"), score: 61),
  outcome: "Loss",
  auton: "Blue",
  awp: false,
  strategy: [
    - Focus on getting points from parking

  ],
  auton_notes: [
    - Two blocks got jammed in the intake but one ended up being scored in the lower middle goal 
  ],
  match_notes: [
    - Started off quickly by pinning 53A
    - Stopped the other bots from picking up blocks
    - Remained in the middle area to quickly defend the goals
    - Alliance member parked
    - Intake got bent out of place
  ],
  subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain",
    underperformed: none,
    disabled: "Intake",
  )
)


#tournament-match(
  match: "Q34",
  red_alliance: (teams: ("20850G", "7135J"), score: 86),
  blue_alliance: (teams: ("53D", "5525A"), score: 17),
  outcome: "Loss",
  auton: "Red",
  awp: false,
  strategy: [
    - Our intake should work so try to score on the high goals, and center if necessary 
  ],
  auton_notes: [
    - Intake pistons didn't extend so the block fell out at the wrong level
  ],
  match_notes: [
    - Almost scored at the start but they pushed us away at the last moment
    - Intake was working this time, but we also focused on defense 
    - Tried to stop them from getting to their park some
    - Got caught on the center goal
    - Successfully parked at the end

  ],
   subsystems: (
    overperformed: none,
    satisfactory: ("Intake", "Drivetrain"),
    underperformed: none,
    disabled: none,
  )
)

#tournament-match(
  match: "Q37",
  red_alliance: (teams: ("53F", "53D"), score: 84),
  blue_alliance: (teams: ("53A", "53D"), score: 18),
  outcome: "Win",
  auton: "Blue",
  awp: false,
  strategy: [
    - 53F will focus on offense while we do defense
  ],
  auton_notes: [
    -  53F scored 4 blocks on the long goal
    - We scored 1 block on the center goal
  ],
  match_notes: [
    - 53F filled up a full long goal
    - We blocked the other team from getting blocks 
    - 53F had trouble intaking
    - We tried to block them from parking 

  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Intake"),
    underperformed: none,
    disabled: none,
  )
)

#tournament-match(
  match: "Round of 16",
  red_alliance: (teams: ("9080H", "9080S"), score: 51),
  blue_alliance: (teams: ("53D", "23098B"), score: 8),
  outcome: "Loss",
  auton: "Red",
  awp: false,
  strategy: [
    - Focus on scoring and defend while our alliance is picking up blocks 
  ],
  auton_notes: [
    - Our auton missed and unfortunately pushed blocks over the line, losing us the bonus
  ],
  match_notes: [
    - We tried to block them from moving
    - Our intake was slower than normal
    - We had trouble navigating the field for a bit (kept getting pushed around)
    - They parked and our alliance member parked 

  ],
  subsystems: (
    overperformed: none,
    satisfactory: none,
    underperformed: ("Drivetrain", "Intake"),
    disabled: none,
  )
)


= Subsystem Reflection
#v(0.5em)
#box[
  == Drivetrain
  #subsystem-analysis(
    reflection: [
      Our drivetrain worked reliably at this competition and we were able to get around quickly.
    ],
    radius: 3,
    overperformed: 0,
    satisfactory: 7,
    underperformed: 1,
    disabled: 0
  )
]

#box[
  == Intake
  #subsystem-analysis(
    reflection: [
      Our intake had many issues and we were only able to use it in a few of our matches. We will have to redesign and tune it so that it works more reliably in the future.
    ],
    radius: 3,
    overperformed: 0,
    satisfactory: 2,
    underperformed: 4,
    disabled: 2,
  )
]


= Individual Reflections

== Ishika
#h(1em) Our standing in the competition reflects how much our team needs tp grow over this year. The intake did not perform well, as it did not quickly gathering and score blocks, rather it kept breaking apart or didn't work at all. The auton was the most disappointing part of the comepetition, as the programmer I expected more from it but it seemed that the team needs to spend more time working on these autons. I believe our driver showed great skill, but as a team, we need to discuss strategy to ensure backup drivers and the rest of the drive team understand matchplay better. Overall, the first competition was a valuable learning experience that helped identify our weak spots in the new design.

== Makhi
#h(1em) Overall I think we didn't do as well as I would have liked, so we need to improve on many thing like communication and handling stress and time. I think we definitely expected to do better for the first competition but as the driver it was difficult to drive a bot with so many non-functioning systems. The intake had many issues, and without it it is practically impossible to score, so we were stuck with playing defense for most of the competition. I hope we will get these issues fixed as soon as possible. 

== Rory
#h(1em) Overall we didn't do well at the scrimmage,but it was real practice before a real competition. We stressed about the auton, and at one point we were tuning a mechanism so much we forget that we were up immediately leading to parts off the robot. We did have the opportunity to see how teams outside of the 53 teams were performing and the opportunity to practice with another team. We also realized that something needs to be done about this current robot design because it is not very suitable for our goals. 

== Eric
#h(1em) We didn't do very well at the competition. We need to focus on making our intake function better as it kept going slowly and breaking apart. The auton had issues which need to be addressed in the future as well. This competition did let us see what things we need to change about our robot in the future and looking at what did work gave us some ideas for modifications that we can make.

== Anders 
#h(1em) Overall, I would say our performance at this competition left a lot to be desired. However, even though our numerical performance wasn’t the best, we still had our moments and learned a lot of things that can be used for improving the bot in the future. We also gained experience from working with other teams and stress-tested all the subsystems on our robot.

== Samia 
#h(1em) This competition was definitely not one of our proudest moments, and it shows we still have a lot of work to do in order to be competition-ready. Our auton had many issues with it, including but not limited to not being able to intake blocks most of the time. We will need to spend our next meetings working on it, so that we can score blocks during the autonomous period. Once we get that done, and add additional tracking wheels, I think we will be able to do much better on the competition field.