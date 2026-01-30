#import "/template/entries.typ": *

#show: create-program-entry.with(
  title: "53D/src/subsystemFiles/"
)

= pneumatics.cpp <pneumatics.cpp>
#raw(block: true, lang: "cpp", read("src/subsystemFiles/pneumatics.cpp"))