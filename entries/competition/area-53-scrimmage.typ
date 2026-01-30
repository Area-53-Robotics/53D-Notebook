#import "/template/template.typ": *

#show: create-entry.with(
  title: "Area 53 Scrimmage",
  type: "competition",
  date: datetime(year: 2025, month: 10, day: 11),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Anders",
  witnessed: "Rory",
)

#admonition(type: "competition", title: "Competition Results")[
  - *Rank:* 13/16
  - *Qualification Matches Wins/Losses/Ties:* 1/6/0
  - *Eliminated in:* Quarterfinals
]

= Competition Goals
- Verify that our subsystems are at a competitive level.
- The current robot design matches which our goals for this season. 

= Matches
#tournament-match(
  match: "Q1",
  red_alliance: (teams: ("53F", "12914X"), score: 88),
  blue_alliance: (teams: ("53D", "20850G"), score: 35),
  outcome: "Loss",
  auton: "Red",
  awp: false,
  strategy: [
    - Guard goals and defend scoring.
  ],
  auton_notes: [
    - Auton failed as it did not do the correct functions. 
  ],
  match_notes: [
    - Need an aligner mech
    - Intake works
    - Strategy worked until goal left alone near end

  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Intake", "Drivetrain"),
    underperformed: none,
    disabled: none,
  )
)

#tournament-match(
  match: "Q7",
  red_alliance: (teams: ("53D", "20850C"), score: 11),
  blue_alliance: (teams: ("53C", "20850Z"), score: 62),
  outcome: "Loss",
  auton: "Blue",
  awp: false,
  strategy: [
    - Interfere with other scoring and try to score on the center goal
  ],
  auton_notes: [
    - Neither alliance had a good auton but auton went to blue for what they did have. 
  ],
  match_notes: [
    - Our intake wasn’t on during the match
    - Poor communication with teammates
    - We managed to prevent scoring on one goal
  ],
  subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain",
    underperformed: none,
    disabled: "Intake",
  )
)

#tournament-match(
  match: "Q10",
  red_alliance: (teams: ("20850T", "20850S"), score: 65),
  blue_alliance: (teams: ("53E", "23382H"), score: 21),
  outcome: "Loss",
  auton: "Red",
  awp: false,
  strategy: [
    - Defend against other bots by pushing them around.
  ],
  auton_notes: [
    - The auton still had issues and the other alliance had a very good auton that was very consistent.
  ],
  match_notes: [
    - Intake change wasn’t good
    - Goals were decent, got cleared late

  ],
  subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain",
    underperformed: "Intake",
    disabled: none,
  )
)

#tournament-match(
  match: "Q13",
  red_alliance: (teams: ("20850T", "53E"), score: 11),
  blue_alliance: (teams: ("20850W", "53D"), score: 63),
  outcome: "Win",
  auton: "Blue",
  awp: false,
  strategy: [
    - Score in the middle so that others can’t descore.
  ],
  auton_notes: [
    - 23382H scored 1 ring on the mobile goal
  ],
  match_notes: [
    - Since this was a back to back match after Q6, our drivetrain was overheating
    - We could not move much throughout the match
    - 53F's motor came off from their intake, so they couldnt score
    - The chains in our intake broke off, so we also couldnt score
    - 53C and 23382H took advantage and scored multiple rings
  ],
  subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain",
    underperformed: none,
    disabled: "Intake",
  )
)

#tournament-match(
  match: "Q17",
  red_alliance: (teams: ("53D", "53E"), score: 33),
  blue_alliance: (teams: ("20850G", "20850Z"), score: 67),
  outcome: "Loss",
  auton: "Blue",
  awp: false,
  strategy: [
    - Defend goals while the other team scores

  ],
  auton_notes: [
    - Neither auton worked
  ],
  match_notes: [
     - Intake issues again
    - Goal control is important
  ],
  subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain",
    underperformed: "Intake",
    disabled: none,
  )
)


#tournament-match(
  match: "Q24",
  red_alliance: (teams: ("53A", "53D"), score: 24),
  blue_alliance: (teams: ("20850U", "20850A"), score: 38),
  outcome: "Loss",
  auton: "Blue",
  awp: false,
  strategy: [
    - Focus on scoring on the high goals
  ],
  auton_notes: [
    - Our auton did not work, while our alliance partner did not have an auton. 
  ],
  match_notes: [
    - During the middle of the match, our intake broke from a fallen motor which resulted in us being unable to score as much anymore.
    - We focused a lot of our energy on defending, and made sure to help out our alliance partner.  
  ],
   subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain",
    underperformed: none,
    disabled: "Intake",
  )
)

#tournament-match(
  match: "Quarterfinals",
  red_alliance: (teams: ("20850Z", "20850W"), score: 59),
  blue_alliance: (teams: ("53A", "53D"), score: 38),
  outcome: "Loss",
  auton: "Red",
  awp: false,
  strategy: [
    - Communicate with teammates and the driveteam
  ],
  auton_notes: [
    - Our auton did not work, while our alliance partner did not have an auton.
    - The opposing alliance had really good autons. 
  ],
  match_notes: [
    - Did pretty well, goal control cost us match.
    - One of our best matches with the intake working well and scoring a lot.
    - We were unable to keep goal control which cost us the match, along with auton. 
  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Intake"),
    underperformed: none,
    disabled: none,
  )
)



= Subsystem Reflection
#v(0.5em)
#box[
  == Drivetrain
  #subsystem-analysis(
    reflection: [
      Our drivetrain actually worked very well, and we were able to move around the field quickly.
    ],
    radius: 3,
    overperformed: 0,
    satisfactory: 7,
    underperformed: 0,
    disabled: 0
  )
]

#box[
  == Intake
  #subsystem-analysis(
    reflection: [
      Repeated intake failures kept on causing us to lose valuable scoring opportunities.
    ],
    radius: 3,
    overperformed: 0,
    satisfactory: 2,
    underperformed: 2,
    disabled: 3
  )
]

#colbreak()

= Individual Reflections

== Ishika
#h(1em) Our standing in the Scrimmage reflects how much our team needs tp grow over this year. The intake did not perform well, as it did not quickly gathering and score blocks, rather it kept breaking apart. The auton was the most disappointing part of the scrimmage, as the programmer I expected more from it but it seemed that the team needs to spend more time working on these autons. I believe our driver showed great skill, but as a team, we need to discuss strategy to ensure backup drivers and the rest of the drive team understand matchplay better. Overall, the scrimmage was a valuable learning experience that helped identify our weak spots.

== Makhi
#h(1em) Overall I think we didn't do as well as I would have liked, so we need to improve on many thing like communication and handling stress and time. We also need to have any changes completed before competitions in the future to allow as much time as possible to repair and strategize during the event itself. Getting driver practice and seeing what other teams are doing was helpful in the game. We also discussed changing this robot idea as we have seen that it does not do much to help us. 

== Rory
#h(1em) Overall we didn't do well at the scrimmage,but it was real practice before a real competition. We stressed about the auton, and at one point we were tuning a mechanism so much we forget that we were up immediately leading to parts off the robot. We did have the opportunity to see how teams outside of the 53 teams were performing and the opportunity to practice with another team. We also realized that something needs to be done about this current robot design because it is not very suitable for our goals. 

== Eric
#h(1em) Our standing in the Scrimmage reflects the need for growth in our team for the sake of the future. The intake performed bad, breaking down so many times instead of scoring, though it had one good match. Our autonomous routine also needs improvement; the quick version we used wasn't fully troubleshooted, resulting in unexpected behavior during matches. Finally, we need to discuss the constraints of the current idea we have because there will be a problem if our team keeps progressing in this direction. These insights will guide us in refining our mechanisms and enhancing our strategic discussions as we prepare for future competitions. 

== Anders 
#h(1em)Considering this was the first competition of the season, I would say we did okay. At the start, we had high hopes and our bot was definitely one of the best ones. However, we were plagued with quality issues, like subsystems (especially the intake) not working. Our auton also required a lot of work, which could’ve helped us win many of our matches. Since this was just a scrimmage, we decided to rebuild a large part of our intake halfway through the competition. This meant we had no time to troubleshoot or tune it, so we lost a lot of matches. All in all, although we didn’t do the best on paper, we definitely made some big improvements to our bot and learned things that will help us for the rest of the season.