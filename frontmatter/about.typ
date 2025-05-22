#import "/template/template.typ": *
#import "../packages.typ": codetastic
#import codetastic: qrcode

#show: create-frontmatter-entry.with(
  title: "About Our Notebook"
)

= How Was This Made?

This notebook was written with Typst, a programming language similar to Markdown and LaTeX. We write instructions about formatting in Typst, and they get automatically rendered into a printable PDF.

= Why Go Digital?

We decided to use a digital notebook over a physical notebook this year for the following reasons:

- Easier to embed pictures and diagrams
- Easier for multiple members to work on it simultaneously
- Consistent styling throughout the notebook

= Why Use Typst?

Typst gives us multiple benefits compared to other platforms such as Google Docs, Google Slides, and Notion.

- Management and collaboration using Git #glossary-footnote[Git]
- Verification of notebook history using Git
- The development of multiple branches (versions) of the notebook at the same time using Git
- Native scripting support, allowing for advanced styling
- Native support for math and code rendering

= Source Code

The source code for our notebook can be accessed on 
#box(baseline: 12.5%)[
  #box(
    image("/template/tabler-icons/brand-github-filled.svg", height: 1em),
    baseline: 10%
    )
  GitHub #glossary-footnote[GitHub]
] using either of the following methods:

#grid(
  columns: (1fr, 1fr),
  gutter: 20pt,
  align: center,

  [
    == Link
    #box[
      #box(
        image("/template/tabler-icons/brand-github-filled.svg", height: 1em),
        baseline: 20%
        )
      #link("https://github.com/Area-53-Robotics/53D-Notebook")
    ]
  ],
  [
    == QR Code
    #qrcode("https://github.com/Area-53-Robotics/53D-Notebook", size: 4pt)
  ],
)

#admonition(type: "note", title: "Formatting Information: Code Blocks")[
  #box(fill: white)[
  ```cpp
  // Comments look like this, read them to get info on what the code does
  std::String info = "Code looks like this"
  ```
  ]
]