#import "/template/template.typ": *

#show: create-entry.with(
  title: "Rebel Rumble",
  type: "competition",
  date: datetime(year: 2025, month: 12, day: 13),
  attendance: ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia"),
  designed: "Anders",
  witnessed: "Rory",
)

#admonition(type: "competition", title: "Competition Results")[
  - *Rank:* 3/42
  - *Qualification Matches Wins/Losses/Ties:* 9/1/0
  - *Eliminated in:* Finals
]

= Competition Goals
- Verify that our subsystems are at a competitive level.
- The current robot design matches which our goals for this season. 

= Matches
#tournament-match(
  match: "Q8",
  red_alliance: (teams: ("1723A", "7135T"), score: 12),
  blue_alliance: (teams: ("53D", "929K"), score: 34),
  outcome: "Win",
  auton: "Blue",
  awp: false,
  strategy: [
    - Communicate with our teammates and see how the match goes
    - Play as much defense, score low as we want to keep the difference smaller
  ],
  auton_notes: [
    - Auton scored 3 blocks on the bottom goal, got the bonus


  ],
  match_notes: [
    - Defended them well
    - Intake not working (indexer got stuck)
    - brain cover fell off
    - Alliance descored 
    - Parked at the end



  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Loader"),
    underperformed: "Intake",
    disabled: none,
  )
)

#tournament-match(
  match: "Q14",
  red_alliance: (teams: ("9012B", "16700B"), score: 30),
  blue_alliance: (teams: ("53D", "9080R"), score: 31),
  outcome: "Win",
  auton: "Red",
  awp: false,
  strategy: [
    - Figure out a situation that allows us to play defense and offense at the same time, while allowing our alliance partner to just place offense. 

  ],
  auton_notes: [
    - Auton picked up blocks, but they pushed stuff across the line, which tiled us so we outtakes our own blocks into their side, lost auton
  ],
  match_notes: [
    - scored 3 blocks on the upper middle goal right away
    - alliance got some in the long goal
    - Tried to stop them from scoring in the long goal, they ended up getting 2
    - defended center and scored 1 of our own 
    - parked at the end

  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain","Intake", "Loader"),
    underperformed: none,
    disabled: none,
  )
)

#tournament-match(
  match: "Q23",
  red_alliance: (teams: ("53D", "9012G"), score: 55),
  blue_alliance: (teams: ("47418A", "76752B"), score: 10),
  outcome: "Win",
  auton: "Blue",
  awp: false,
  strategy: [
    - Focus on the center goal
  ],
  auton_notes: [
    - Auton picked up all 3 blocks, but missed out taking them, crossing the auton line and giving us a violation, auton loss

  ],
  match_notes: [
    - We quickly scored on the center goal, and tried to pick up blocks 
    - We were stuck between the other alliances' bots but we managed to score 2 blocks on the long goal
    - Our alliance was struggling but got 1 block in the other long goal
    - Helped our alliance park at the end



  ],
  subsystems: (
    overperformed: "Intake",
    satisfactory: ("Drivetrain", "Loader"),
    underperformed: none,
    disabled: none,
  )
)

#tournament-match(
  match: "Q41",
  red_alliance: (teams: ("53D", "7135D"), score: 37),
  blue_alliance: (teams: ("76763A", "7135W"), score: 24),
  outcome: "Win",
  auton: "Blue",
  awp: false,
  strategy: [
    - Park at the end of the match
  ],
  auton_notes: [
    - auton didn't drive all the way forward (drivetrain was stuck)
  ],
  match_notes: [
    - Reversed to fix drivetrain
    - scored 2 blocks on the long goal
    - alliance was struggling but we defended well
    - scored on the center goal, got pushed away
    - intaked from the match loader
    - tried to park at the end but they blocked us


  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Intake", "Loader"),
    underperformed: "Drivetrain",
    disabled: none,
  )
)

#tournament-match(
  match: "Q47",
  red_alliance: (teams: ("67572A", "593A"), score: 14),
  blue_alliance: (teams: ("1727V", "53D"), score: 72),
  outcome: "Win",
  auton: "Red",
  awp: false,
  strategy: [
    - Communicate during the match with our alliance

  ],
  auton_notes: [
    - Auton picked up all the blocks, missed one for outtake but got 3 in the lower center goal

  ],
  match_notes: [
    - Filled up the upper center goal
    - blocked other bots
    - Match loaded and tried to score on the long goal (only got one block)
    - our alliance parked

  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Loader", "Drivetrain", "Intake"),
    underperformed: none,
    disabled: none,
  )
)


#tournament-match(
  match: "Q55",
  red_alliance: (teams: ("53D", "9012H"), score: 34),
  blue_alliance: (teams: ("929V", "47418B"), score: 32),
  outcome: "Win",
  auton: "Red",
  awp: false,
  strategy: [
    - Defend against the other teams from scoring on the long goals
  ],
  auton_notes: [
    - Auton missed one block but got 3 in the lower goal
  ],
  match_notes: [
    - Had trouble scoring blocks on the higher goal
    - our alliance prevented 929V from scoring
    - we scored on the upper and lower center goal
    - parked at the very end


  ],
   subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Loader"),
    underperformed: "Intake",
    disabled: none,
  )
)

#tournament-match(
  match: "Round of 6",
  red_alliance: (teams: ("53D", "1727X"), score: 71),
  blue_alliance: (teams: ("1723D", "47418D"), score: 14),
  outcome: "Win",
  auton: "Blue",
  awp: false,
  strategy: [
    - Double Park at the end of the match
  ],
  auton_notes: [
    - Auton scored 3 blocks on the bottom goal, won bonus
  ],
  match_notes: [
    - Intaked blocks from the loader right away, and scored on the center goal
    - Struggled again with the long goal


  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Drivetrain", "Loader"),
    underperformed: "Intake",
    disabled: none,
  )
)

#tournament-match(
  match: "Quarterfinals",
  red_alliance: (teams: ("53D", "1727X"), score: 54),
  blue_alliance: (teams: ("9080H", "593C"), score: 32),
  outcome: "Win",
  auton: "Blue",
  awp: false,
  strategy: [
    - Focus on the center goals while 1727X does the long goals
  ],
  auton_notes: [
    - Air had all leaked out so our auton lost the blocks and one rolled on the other side, auton fail
  ],
  match_notes: [
    - alliance scored more on the long goal and used the match loader
    - mostly played defense to stop the other team from scoring
    - Lots of activity in the center area, they flipped over but righted themselves with their loader mech
    - parked at the very end


  ],
  subsystems: (
    overperformed: "Drivetrain",
    satisfactory: ("Intake", "Loader"),
    underperformed: none,
    disabled: none,
  )
)

#tournament-match(
  match: "Semifinals",
  red_alliance: (teams: ("53D", "1727X"), score: 52),
  blue_alliance: (teams: ("929N", "929K"), score: 8),
  outcome: "Win",
  auton: "Blue",
  awp: false,
  strategy: [
    - Intake blocks from the match loaders

  ],
  auton_notes: [
    - Missed blocks on the bottom goal, lost auton
  ],
  match_notes: [
    - Intaked some blocks from the match loader
    - Moved to score on the center goal
    - Stopped the other team from scoring on the long goal
    - 1727X descored some blocks
    - Parked at the end
  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Intake", "Loader", "Drivetrain"),
    underperformed: none,
    disabled: none,
  )
)
#tournament-match(
  match: "Finals",
  red_alliance: (teams: ("53C", "53F"), score: 87),
  blue_alliance: (teams: ("53D", "1727X"), score: 16),
  outcome: "Loss",
  auton: "Red",
  awp: false,
  strategy: [
    - Play heavy defense against 53C and 53F.


  ],
  auton_notes: [
    - Got two blocks on the bottom goal, 1727X got 3 on the long goal, but we lost the bonus.
  ],
  match_notes: [
    - Tried to defend against 53C
    - 53F yanked our battery cord out, we were disabled for the rest of the match

  ],
  subsystems: (
    overperformed: none,
    satisfactory: ("Loader", "Drivetrain"),
    underperformed: ("Intake"),
    disabled: none,
  )
)
= Subsystem Reflection
#v(0.5em)
#box[
  == Drivetrain
  #subsystem-analysis(
    reflection: [
      Our drivetrain worked well in this competition when it didn't get jammed, as we were abe to reliably work fast. 
    ],
    radius: 3,
    overperformed: 1,
    satisfactory: 8,
    underperformed: 1,
    disabled: 0
  )
]

#box[
  == Intake
  #subsystem-analysis(
    reflection: [
      Our intake had some issues and it was very slow when it came to the long goals.
    ],
    radius: 3,
    overperformed: 1,
    satisfactory: 5,
    underperformed: 4,
    disabled: 0,
  )
]

#box[
  == Loader
  #subsystem-analysis(
    reflection: [
      We didn't use this as much but it did work out whenever we needed it in a match. 
    ],
    radius: 3,
    overperformed: 0,
    satisfactory: 10,
    underperformed: 0,
    disabled: 0,
  )
]

= Individual Reflections

== Ishika
#h(1em) I believe this is the best we've ever done in a competition so it has shown we have grown but I think we could have done more to help all of our alliance partners throughout the day. We were unable to use our robot to its fullest potential, and thinking about the future some changes need to be made so this bot is more skillfull and match prepared.

== Makhi
#h(1em) Overall I think we did much better than we hoped for, but we need to improve on many thing like communication and handling stress and time. We also need to get skills ready faster, and as a driver I need more practice driving will all omni wheels. However, I think we also need to focus on a new design due to the fact that our competition will only get challenging from here. 

== Rory
#h(1em) Overall, I think we did okay. We tried our best and got to the finals but our team isn't satisfied with the result because we weren't looking for numbers, we were looking for results. We are happy to be tournament finalists but with how the intake was scoring today, something needs to be done so that we can compete at a higher playing field. 

== Eric
#h(1em) We need to focus on making our intake function better as it kept going slowly and breaking apart. The auton had issues which need to be addressed in the future as well. This competition did let us see what things we need to change about our robot in the future and looking at what did work gave us some ideas for modifications that we can make.

== Anders 
#h(1em) I think we can all be very proud of our performance at this competition. We didn’t go in with that high of expectations, but thanks to our quick problem solving and Makhi’s skillful driving, we managed to get 3rd place in qualification matches and 2nd in the entire tournament. This was our best performance at a competition ever, and I am very impressed that we did this well. We should all be very happy that our bot was working well and we could solve any issues that came up, however we should still work on innovating and continuing to improve our robot for the future.

== Samia 
#h(1em) This competition was definitely one of our proudest moments, but it shows we still have a lot of work to do in order to be competition-ready for the higher level comps. Our auton had many issues with it, including but not limited to not being able to intake blocks in the correct position most of the time. We will need to spend our next meetings working on it, so that we can score blocks during the autonomous period. Once we get that done, and add additional tracking wheels, I think we will be able to do much better on the competition field.