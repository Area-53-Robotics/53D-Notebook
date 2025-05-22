#import "/template/template.typ": *

#show: create-entry.with(
  title: "Area 53 Scrimmage",
  type: "competition",
  date: datetime(year: 2024, month: 9, day: 28),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders"),
  designed: "Ishika",
  witnessed: "Eric",
)

#admonition(type: "competition", title: "Competition Results")[
  - *Rank:* 3/8
  - *Qualification Matches Wins/Losses/Ties:* 5/3/0
  - *Eliminated in:* Finals
]

= Competition Goals
- Verify that our subsystems are at a competitive level.

= Matches
#tournament-match(
  match: "Q1",
  red_alliance: (teams: ("53D", "23382H"), score: 33),
  blue_alliance: (teams: ("20096G", "53B"), score: 20),
  outcome: "Win",
  auton: "Blue",
  awp: false,
  strategy: [
    - We are going to quickly fill one mobile goal stake with rings. Then we will hand our mobile goal to 23382H.
    - Afterwards, we will play defense.
  ],
  auton_notes: [
    - 20096G attempted for a solo auton win point but failed to score a ring on the alliance wall stake. However, we still won the auton.
  ],
  match_notes: [
    - We managed to collect the rings for the mobile goal in 10 seconds.
    - Our intake was inconsistent because we did not have the flaps to push the rings down.
    - 23382H was able to score on the wall stakes, securing our win.
  ],
  subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain",
    underperformed: ("Intake", "Clamp"),
    disabled: none,
  )
)

#tournament-match(
  match: "Q3",
  red_alliance: (teams: ("53B", "53C"), score: 12),
  blue_alliance: (teams: ("53D", "53E"), score: 3),
  outcome: "Loss",
  auton: "Tie",
  awp: false,
  strategy: [
    - Since 53E cannot score rings onto mobile goals, they will play defense.
    - We will try to fill as many mobile goals as possible with rings and pass them to 53E
  ],
  auton_notes: [
    - Neither alliance had an auton
  ],
  match_notes: [
    - 53B and 53E were unable to score rings onto mobile goals.
    - Our intake still did not have flaps so we could not score rings
    - We tried to pin 53C as much as we could from scoring in the positive corners
    - Both positive corners were occupied by the red alliance, allowing them to win
  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Clamp"),
    underperformed: "Intake",
    disabled: none,
  )
)

#tournament-match(
  match: "Q6",
  red_alliance: (teams: ("53D", "53A"), score: 28),
  blue_alliance: (teams: ("53E", "23382H"), score: 23),
  outcome: "Win",
  auton: "Blue",
  awp: false,
  strategy: [
    - We will focus on defense and securing a positive corner.
    - 53A will focus on collecting and scoring rings onto mobile goals.
  ],
  auton_notes: [
    - Our alliance did not have an auton
    - 23382H scored 1 ring on the mobile goal, causing the blue alliance to win auton
  ],
  match_notes: [
    - 53A handed us a mobile goal with 3 rings on it
    - 23382H tried to score on the wall stakes, but were blocked by 53A
    - 23382H tried to score a mobile goal with our rings in the negative corner. However, we quickly moved it away from the corner.
  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Intake", "Clamp"),
    underperformed: none,
    disabled: none,
  )
)

#tournament-match(
  match: "Q7",
  red_alliance: (teams: ("23382H", "53C"), score: 33),
  blue_alliance: (teams: ("53D", "53F"), score: 0),
  outcome: "Loss",
  auton: "Blue",
  awp: false,
  strategy: [
    - Since the enemy alliance have ring scoring mechanisms, we are going to play defense
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
    satisfactory: none,
    underperformed: none,
    disabled: ("Drivetrain", "Intake", "Clamp"),
  )
)

#tournament-match(
  match: "Q9",
  red_alliance: (teams: ("53D", "53E"), score: 0),
  blue_alliance: (teams: ("20096G", "53F"), score: 34),
  outcome: "Loss",
  auton: "Tie",
  awp: false,
  strategy: [
    - Since the enemy alliance is confident in their ability to score rings, we are going to try to play defense
  ],
  auton_notes: [
    - Neither alliance had an auton
  ],
  match_notes: [
    - Since this is a back to back match, our drivetrain was overheating
    - We could not move much throughout the match
    - 53F's motor came off from their intake
    - 53C and 23382H took advantage and score as much rings as possible
    - The chains in our intake broke off
  ],
  subsystems: (
    overperformed: none,
    satisfactory: none,
    underperformed: none,
    disabled: ("Drivetrain", "Intake", "Clamp"),
  )
)

#tournament-match(
  match: "Q11",
  red_alliance: (teams: ("53B", "53F"), score: 3),
  blue_alliance: (teams: ("53A", "53D"), score: 35),
  outcome: "Win",
  auton: "Tie",
  awp: false,
  strategy: [
    - We plan to better manage time and communication with our alliance partner.
  ],
  auton_notes: [
    - Our auton failed to clamp on to the mobile goal and did not score.
    - We were the only robot with an auton.
  ],
  match_notes: [
    - At the start of the match every team except 53B clamped onto a mobile goal.
    - Instead, 53B pushed rings into the positive corner, which did not affect the match much.
    - Our clamp caused some trouble at the start, but we figured it out.
    - While the other teams were preoccupied, we managed to score two mobile goals in the positive corner.
    - 53A tried to put a mobile goal with 6 red rings into the negative corner, while 53B blocked them.
    - Our intake worked well, and we only failed to score one ring.
  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: ("Drivetrain", "Clamp"),
    underperformed: none,
    disabled: none,
  )
)

#tournament-match(
  match: "Q13",
  red_alliance: (teams: ("53C", "53A"), score: 20),
  blue_alliance: (teams: ("53D", "20096G"), score: 24),
  outcome: "Win",
  auton: "Blue",
  awp: true,
  strategy: [
    - We will stay mobile and score rings onto mobile goals.
    - Meanwhile, 20096G will fight for the positive corner since they have a bulkier robot than us.
  ],
  auton_notes: [
    - We scored 1 ring and 20096G scored 2 rings
    - 53C clamped on to a mobile goal, but failed to score.
  ],
  match_notes: [
    - 53C and 20096G fought for the positive corner closest to us.
    - Us and 53A fought for the far positive corner.
    - After not much happening, we decided to grab another mobile goal and attempt to score that way.
    - Our clamp was having issues securing the mobile goal, making it hard to score
  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Intake"),
    underperformed: "Clamp",
    disabled: none,
  )
)

#tournament-match(
  match: "Q16",
  red_alliance: (teams: ("53D", "20096G"), score: 27),
  blue_alliance: (teams: ("53A", "53C"), score: 11),
  outcome: "Win",
  auton: "Red",
  awp: false,
  strategy: [
    - 20096G grabs as many rings as possible.
    - We play defense and secure a positive corner.
  ],
  auton_notes: [
    - All teams except 53A had auton, but only 20096G managed to score.
  ],
  match_notes: [
    - Increasing our intake speed helped us score quickly, although it was still a little inconsistent.
    - 20096G secured the close positive corner quickly and maintained control.
    - We tried to place our mobile goal in a positive corner, but our clamp failed.
    - Makhi (our driver) did very well. He saw opportunities and took them, leading to a large win for us.
  ],
   subsystems: (
    overperformed: ("Drivetrain", "Intake"),
    satisfactory: none,
    underperformed: "Clamp",
    disabled: none,
  )
)

#tournament-match(
  match: "Semifinals",
  red_alliance: (teams: ("53D", "53C"), score: 29),
  blue_alliance: (teams: ("53A", "53F"), score: 9),
  outcome: "Win",
  auton: "Blue",
  awp: false,
  strategy: [
    - We will have someone in the drive team announce in the last ten seconds when to play more aggressively.
    - Because there is a mobile goal protection, we can prevent the other alliance from hanging.
  ],
  auton_notes: [
    - 53C scored one ring, which was enough to win auton.
  ],
  match_notes: [
    - Our clamp was misaligned, blocking our intake
    - We secured a mobile goal in a positive corner when the blue alliance left the corner undefended.
    - While the other 3 robots were fighting over the positive corners, 53A grabbed a mobile goal with 6 rings on it and brought it to the negative corner.
    - This reminded us that we need to keep track of what other robots are doing with all the corners, not just the positive ones.
  ],
  subsystems: (
    overperformed: none,
    satisfactory: "Drivetrain",
    underperformed: "Clamp",
    disabled: "Intake",
  )
)

#tournament-match(
  match: "Finals",
  red_alliance: (teams: ("20096G", "23382H"), score: 28),
  blue_alliance: (teams: ("53D", "53C"), score: 18),
  outcome: "Loss",
  auton: "Red",
  awp: false,
  strategy: [
    - Similar strategy to semi-finals, however we want to play more aggressively since the red alliance is likely going to win the auton bonus.
  ],
  auton_notes: [
    - All of the robots had an auton.
    - However, only 53C and 20096G scored one and two rings respectively.
  ],
  match_notes: [
    - We immediately went for a positive corner. However, we struggled to clear the rings out of the corner for our mobile goal.
    - We also misscored two red rings onto a mobile goal.
    - Our intake launched a blue ring out of the field, and was unreliable for most of the match
      - In the future we will improve our intake consistency and possibly add automatic ring rejection for the opposing alliance's rings.
  ],
 subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Clamp"),
    underperformed: "Intake",
    disabled: none,
  )
)

= Subsystem Reflection
#v(0.5em)
#box[
  == Drivetrain
  #subsystem-analysis(
    reflection: [
      We did not run into many problems with the drivetrain. The drivetrain motors overheated at some points, but this was expected because of the short time intervals between matches.
    ],
    radius: 3,
    overperformed: 1,
    satisfactory: 7,
    underperformed: 0,
    disabled: 2
  )
]

#box[
  == Intake
  #subsystem-analysis(
    reflection: [
      In the beginning of the scrimmage, the intake had a hard time grabbing rings. This was because the intake did not have a flap to press the rings down. After Q11, we saw that the intake got more consistent.
    ],
    radius: 3,
    overperformed: 2,
    satisfactory: 2,
    underperformed: 3,
    disabled: 3
  )
]

#box[
  == Clamp
  #subsystem-analysis(
    reflection: [
      The clamp's arm was too low and struggled to grab the mobile goals. We came up with a solution where we added an extra piece of lexan to the end. This seemed to work as a temporary solution, but we will need to add extra length to the clamp.
    ],
    radius: 3,
    overperformed: 4,
    satisfactory: 4,
    underperformed: 2,
    disabled: 0
  )
]

#colbreak()

= Individual Reflections

== 
#h(1em) The challenges with the intake and clamp serve as reminders that even small design elements can significantly impact performance. Going further, I want to place a stronger emphasis on planning and CADing.

== Ishika
#h(1em) Our standing in the Scrimmage reflects how much our team has grown over the past year. The intake performed well, quickly gathering and scoring rings, although it occasionally got stuck on a wire, highlighting the need for better wire management. The clamp needs tuning for more consistent performance, as it impacted our autonomous mode, which functioned but struggled to clamp the goal effectively. Additionally, our autonomous routine could improve, as the quick version used wasn't fully troubleshooted. I believe our driver showed great skill, but as a team, we need to discuss strategy to ensure backup drivers and the rest of the drive team understand matchplay better. Overall, the scrimmage was a valuable learning experience that helped identify our weak spots.

== Makhi
#h(1em) Overall I think we did quite well, a few things we need to improve on include communication and handling stress and time. We also need to have any changes completed before competitions in the future to allow as much time as possible to repair and strategize during the event itself. Getting driver practice and seeing what other teams are doing was helpful in the game. Getting 3rd in team rankings and second in alliance rankings shows that we are doing much better this year than at this time last year.

== Rory
#h(1em) Overall we did pretty well at the scrimmage, getting second place, getting the auton working for one round, and just getting some real practice in before a real competition. Although we did well, we did have some issues. We stressed about the auton, and at one point we were building an entire new mechanism before the scrimmage started. We did have the opportunity to see how teams outside of the 53 teams were performing and the opportunity to practice with another team. We also realized that out clamp is sometimes inconsistent during a match.

== Eric
#h(1em) Our standing in the Scrimmage reflects significant growth for our team over the past year. The intake performed well, quickly gathering and scoring rings, though it occasionally got stuck on a wire, underscoring the need for better wire management to keep our workspace organized and minimize distractions. Additionally, the clamp requires tuning for more consistent performance, as it impacted our autonomous mode, which functioned but struggled to clamp the goal effectively, leading to missed opportunities during crucial moments. Our autonomous routine also needs improvement; the quick version we used wasn't fully troubleshooted, resulting in unexpected behavior during matches. These insights will guide us in refining our mechanisms and enhancing our strategic discussions as we prepare for future competitions.