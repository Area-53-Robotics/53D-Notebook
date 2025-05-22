#import "../globals.typ": entries, team-members
#import "../icons/icons.typ": type-metadata


#let entry-page-list() = context {
  let headings = query(selector(<notebook-entry>))

  let enumerated-entry-list = entries.final().enumerate().map(
    it => {
      it.last().body = counter(page).at(headings.at(it.first()).location()).at(0)
      it
    }
  )

  let entry-list = ()

  for (index, entry) in enumerated-entry-list {
    entry-list.push(entry)
  }

  entry-list
}

#let signature-list(chronological: true) = {
  context {
    if chronological == false {
      grid(
        columns: 2,
        row-gutter: 7pt,
        column-gutter: 10pt,

        ..for name in team-members {
          (table(
            columns: 2,
            rows: (25pt, 45pt, auto),

            [= #name], [],
            [== Designed By Pages], [== Witnessed By Pages],
            {
              let valid-entries = entries.final().enumerate()

              valid-entries = valid-entries.filter(
                entry => {
                  entry.last().designed.match(name) != none
                }
              )

              for (index, entry) in valid-entries [
                #let first-page = counter(page).at(query(selector(<notebook-entry>)).at(index).location()).at(0)
                #let last-page = 0

                #if index < query(selector(<notebook-entry>)).len() - 1 {
                  last-page = counter(page).at(query(selector(<notebook-entry>)).at(index + 1).location()).at(0) - 1
                } else {
                  last-page = [END]
                }

                #first-page - #last-page,
              ]
            },
            {
              let valid-entries = entries.final().enumerate()

              valid-entries = valid-entries.filter(
                entry => {
                  entry.last().witnessed.match(name) != none
                }
              )

              for (index, entry) in valid-entries [
                #let first-page = counter(page).at(query(selector(<notebook-entry>)).at(index).location()).at(0)
                #let last-page = 0

                #if index < query(selector(<notebook-entry>)).len() - 1 {
                  last-page = counter(page).at(query(selector(<notebook-entry>)).at(index + 1).location()).at(0) - 1
                } else {
                  last-page = [END]
                }

                #first-page - #last-page,
              ]
            },
          ),)
        }
      )
    } else {
      table(
        columns: 5,
        fill: (_, y) =>
          if y == 0 {gray.lighten(20%)},

        table.header(
          [Entry \#], [Entry Name], [Page Range], [Designed By], [Witnessed By],
        ),
        ..for (index, entry) in entries.final().enumerate() {
          // if type-metadata.at(entry.type).name == "Test" {
            let first-page = counter(page).at(query(selector(<notebook-entry>)).at(index).location()).at(0)
            let last-page = 0

            if index < query(selector(<notebook-entry>)).len() - 1 {
              last-page = counter(page).at(query(selector(<notebook-entry>)).at(index + 1).location()).at(0) - 1
            } else {
              last-page = [END]
            }

            let cell = table.cell
            (
              cell[#(index + 1)],
              cell[#type-metadata.at(entry.type).name: #entry.title],
              cell[
                #first-page - #last-page
              ],
              cell[#entry.designed],
              cell[#entry.witnessed]
            )
          // }
        },
      )
    }
  }
}