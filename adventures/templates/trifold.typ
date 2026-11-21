#import "typography/scifi_compact.typ": typography
#import "trifold_helpers.typ": trifold, make_credits, make_footer

#let author = "Author"
#set document(
  author: author,
  title: "Trifold Adventure Template",
  description: "A template for creating trifold adventures quickly using Typst."
)

#set page(
  paper: "a4",
  flipped:  true,
  margin: (x: 2%, y: 4%),
)

#show: typography
#show: rest => trifold(rest)


#title()
#make_footer[
  #line(length: 100%)
  #grid(
    columns: (1fr, 8fr),
    rows: 1,
    gutter: 8pt,
    align: left+horizon,
  )[
    #rect[Logo]
  ][
    #set text(style: "italic", size: 6pt)

    Credits, licenses, etc.

    Author: #author
  ]
]

#pagebreak()

#lorem(50)

#pagebreak()

#lorem(50)

#pagebreak()

#lorem(50)

#pagebreak()

#lorem(50)

#pagebreak()

#lorem(50)
