#import "/template/template.typ": *
#import "../template/globals.typ"

#show: create-frontmatter-entry.with(
  title: "Table of Contents"
)

#let helper(type) = {
  let (state, markers) = if type == "frontmatter" {
    (
      globals.frontmatter-entries,
      query(
        selector(<notebook-frontmatter>),
      ),
    )
  } else if type == "body" {
    (
      globals.entries,
      query(
        selector(<notebook-entry>),
      ),
    )
  } else if type == "appendix" {
    (
      globals.appendix-entries,
      query(
        selector(<notebook-appendix>),
      ),
    )
  } else if type == "program" {
    (
      globals.program-entries,
      query(
        selector(<notebook-program>),
      ),
    )
  } else {
    panic("No valid entry type selected.")
  }

  let result = ()

  for (index, entry) in state.final().enumerate() {
    let page-number = counter(page).at(
      markers.at(index).location(),
    ).at(0)
    entry.page-number = page-number

    let location = markers.at(index).location()
    entry.position = location.position()

    result.push(entry)
  }

  return result
}

#context {
  // ! To remove the program and appendix from the TOC, comment out the helper calls and the toc() function parameters

  let frontmatter-entries = helper("frontmatter")
  let body-entries = helper("body")
  let program-entries = helper("program")
  let appendix-entries = helper("appendix")

  toc(
    frontmatter: (),
    body: body-entries,
    program: program-entries,
    appendix: appendix-entries
  )
}