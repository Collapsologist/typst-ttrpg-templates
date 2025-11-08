#set page(
  paper: "a4",
  flipped: true,
  margin: (x: 2%, y: 4%),
)

#let page1 = [
  Page 1
]

#let page2 = [
  Page 2
]

#let page3 = [
  Page 3
]

#let page4 = [
  Page 4
]

#let page5 = [
  Page 5
]

#let page6 = [
  Page 6
]

// Layout Setup

#grid(
  columns: (1fr, 1fr, 1fr),
  rows: (100%),
  gutter: 4%,
)[
  #page2
][
  #page6
][
  #page1
]

#pagebreak()

#grid(
  columns: (1fr, 1fr, 1fr),
  rows: (100%),
  gutter: 4%,
)[
  #page3
][
  #page4
][
  #page5
]
