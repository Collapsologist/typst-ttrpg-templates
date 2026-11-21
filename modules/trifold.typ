#let make_credits(author, credits, logo) = {
  line(length: 100%)
  grid(
    columns: (1fr, 8fr),
    rows: 1,
    gutter: 8pt,
    align: left+horizon,
  )[
    #rect[#logo]
  ][
    #set text(style: "italic", size: 6pt)

    #credits

    Author: #author
  ]
}

#let make_footer(footer) = {
  place(
    bottom,
    float: true
  )[
    #footer
  ]
}

#let split_content_by_pagebreak(content) = {
  let children = content.at("children")
  let page_arrays = children.split(pagebreak())
  page_arrays.map(page => page.join())
}

#let trifold(columns: (1fr, 1fr, 1fr), rows: (100%), gutter: 4%, content) = {
  let pages = split_content_by_pagebreak(content)
  assert.eq(
    pages.len(),
    6,
    message: "Document must have exactly 6 pages."
  )
  grid(
    columns: columns,
    rows: rows,
    gutter: gutter,
  )[
    #pages.at(1)
  ][
    #pages.at(5)
  ][
    #pages.at(0)
  ]

  pagebreak()

  grid(
    columns: columns,
    rows: rows,
    gutter: gutter,
  )[
    #pages.at(2)
  ][
    #pages.at(3)
  ][
    #pages.at(4)
  ]
}
