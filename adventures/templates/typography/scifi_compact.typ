/* 
* Setup for a compact (almost) B/W sci-fi piece.
*
* To create your own custom typographic configuration,
* Simply copy this file and change what you like.
*
* See trifold.typ for examples of use.
*/


#let typography(
  body_font: "Liberation Mono",
  heading_font: "Kelly Slab",
  title_font: "BBH Sans Bogle",
  table_row_odd_color: rgb("D7D9E0"),
  doc
) = [
  #set text(
    font: body_font,
    size: 8pt,
  )

  #set highlight(fill: table_row_odd_color)

  #set par(
    justify: true,
  )

  #set table(
    fill: (_, y) => if calc.odd(y) {table_row_odd_color},
    stroke: none,
  )

  #show heading.where(level: 1): it => [
    #set align(center)
    #set text(
      font: heading_font,
      size: 15pt,
      fill: white,
    )
    #highlight(
      fill: black,
      extent: 10pt,
    )[
      #smallcaps(it.body)
    ]
  ]

  // Set the header styling
  // HACK: Looks for row 0 instead of the header.
  // https://github.com/typst/typst/issues/3640
  #show table.cell.where(y: 0): strong

  #show heading.where(level: 2): it => [
    #set text(
      size: 12pt,
      font: heading_font,
      fill: white,
    )
    #highlight(
      fill: black,
    )[
    #smallcaps(it.body)]
  ]

  #show heading.where(level: 3): it => [
    #set text(
      size:9pt,
      font: heading_font,
    )
    #box[\- #it.body -]
  ]

  #show title: it => {
    set text(
      size: 30pt,
      font: title_font,
      hyphenate: false,
      tracking: 2pt,
    )

    set align(center)
    set par(spacing: 0.4em)
    if (it.body != none and it.body != auto) {
      it.body
    } else {
      document.title
    }
  }

  #doc
]

#let clue(content) = highlight(fill: black)[
    #text(
      fill: white,
    )[*#content*]]

#let hint(content) = underline[#content]
