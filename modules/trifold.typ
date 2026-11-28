#let make_footer(footer) = {
  place(
    bottom,
    float: true
  )[
    #footer
  ]
}

#let split_content_by_element(content, element) = {
  let children = content.at("children")
  let page_arrays = children.split(element)
  page_arrays.map(page => page.join())
}

#let trifold(columns: (1fr, 1fr, 1fr), rows: (100%), gutter: 4%, content) = {
  let pages = split_content_by_element(content, pagebreak())
  assert.eq(
    pages.len(),
    6,
    message: "Document must have exactly 6 pages."
  )
  grid(
    columns: columns,
    rows: rows,
    gutter: gutter,
    pages.at(1),
    pages.at(5),
    pages.at(0),
  )

  pagebreak()

  grid(
    columns: columns,
    rows: rows,
    gutter: gutter,
    ..pages.slice(2, 5),
  )
}
