#import "../globals.typ": *

#let glossary-entry(title: none, category: none, definition: none) = {
  if type(title) == none {
    panic("No glossary entry title")
  }

  if type(definition) == none {
    panic("No glossary entry definition")
  }

  glossary-entries.update(it => {
    it.push((title: title, category: category, definition: definition))
    it
  })
}