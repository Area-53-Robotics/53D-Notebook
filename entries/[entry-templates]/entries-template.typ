#import "/template/template.typ": *

#show: create-entry.with(
  title: "",
  type: "",
  date: datetime(year: 2024, month: 1, day: 1),
  attendance: (),
  designed: "",
  witnessed: "",
)

#to-do(
  date: datetime(year: 2024, month: 1, day: 1),
  (
    (true, ""),
  )
)

= ---