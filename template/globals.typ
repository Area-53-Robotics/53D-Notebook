#import "colors.typ": *

// Global State
#let frontmatter-page-counter = counter("frontmatter-page-counter")
#let entry-page-counter = counter("entry-page-counter")
#let appendix-page-counter = counter("appendix-page-counter")
#let program-page-counter = counter("program-page-counter")

#let frontmatter-entries = state("frontmatter-entries", ())
#let entries = state("entries", ())
#let appendix-entries = state("appendix-entries", ())
#let program-entries = state("program-entries", ())

#let glossary-entries = state("glossary-entries", ())

#let appendix-entry-counter = counter("appendix-entry-counter")

// Global Notebook Variables
/*
  First Notebook: 1
*/
#let first-page-number = 1

#let team-members = ("Ishika", "Makhi", "Eric", "Rory", "Anders", "Samia")

/*
  0 = Metadata
  1 = Text
  2 = Signature
*/
#let signature-type = 0;