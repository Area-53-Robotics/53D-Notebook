#import "/template/entries.typ": *

#show: create-program-entry.with(
  title: "53D_HighStakes/src/subsystemFiles/"
)

= ladybrown.cpp <ladybrown.cpp>
#raw(block: true, lang: "cpp", read("src/subsystemFiles/ladybrown.cpp"))

= pneumatics.cpp <pneumatics.cpp>
#raw(block: true, lang: "cpp", read("src/subsystemFiles/pneumatics.cpp"))