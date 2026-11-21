#import "templates/typography/scifi_compact.typ": typography, clue, hint
#import "templates/trifold_helpers.typ": trifold, make_footer
#import "templates/rpg_helpers.typ": make_roll_table


#set page(
  paper: "a4",
  flipped: true,
  margin: (x: 2%, y: 4%),
)

#let author = "Author"
#set document(
  author: author,
  title: "Trifold Adventure Template",
  description: "A template for creating trifold adventures quickly using Typst."
)

#show: typography
#show: rest => trifold(rest)

// Content

#title()

#text(
  style: "italic",
)[
  This template is for creating trifold adventure pamphlets quickly using
  barebones #highlight[Typst].

  The Typst website has a nice tutorial and a detailed reference.

#hint[Typography] settings are in the "templates/typography" folder and are imported
  into this file.
]

#rect(width: 100%, height: 40%)[
  Cover Art Placeholder

  To add an image, replace this block with `#image`.
]

== Adventure Meta, Location Description....

#lorem(40)

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

    Credits, logos, licenses etc.

    Author: #author
  ]
]

#pagebreak()

= General Context

#clue[Page revealed when opening the front of the pamphlet.]

#lorem(50)

== What now?

#lorem(20)

== Sample Timeline of Events

#table(
  columns: (auto, 1fr, 1fr),

  table.header([\#], [Stream 1], [Stream 2]),
  table.hline(),

  [Phase 1],
  table.vline(),
  [
    #lorem(15)
  ],
  table.vline(),
  [
    #lorem(10)
  ],

  [Phase 2],
  [
    #lorem(12)
  ],
  [
    #lorem(8)
  ],

  [Phase 3],
  [
    #lorem(24)
  ],
  [
    #lorem(32)
  ],
)

#pagebreak()

= Heading 1

#lorem(20)

== Heading 2

#lorem(20)

=== Heading 3

#lorem(20)

==== Heading 4

#lorem(20)

== H2
Can be used inline
== like so.

=== H3
too if you
=== want to

== Layout Examples with Text Samples

#hint[Bellow is a grid. Useful for producing
unusual layouts. The pamphlet pages are actually laid out
in a grid.]

#grid(columns: 2, gutter: 8%)[
  *Numbered List:*

  + *Bold*
  + _italic_
  + #underline[Underlined]
  + #highlight[highlighted]
][
  *Bullets:*

  - `#hint` = #hint[Looks like this.]
  - `#clue` = #clue[Looks like this.]
]

#rect(inset: 10pt, fill: black, height: 150pt)[
  #set text(fill: white)

  === Column Example
  Placed in a rectangular callout with custom styling.

  #line(stroke: white)

  #hint[Instead of grids you can use columns, but they offer less control.]

  #columns(2)[
    #lorem(20)

    #lorem(10)

    #lorem(10)
  ]
]

#pagebreak()

= Inner Spread Central Column

_Not a bad place for a map._

#rect(width: 100%, height: 40%)[
  Map placeholder.
]

#box[
  #grid(columns: (1fr, 2fr), gutter: 4%)[
    #rect(width: 100%, height: 50pt)[
      Placeholder.
    ]
  ][
    == Sublocation with minimap

    #hint[Example of grid being used to place
    a section of text next to and around
    an image. With some manual]
  ]
] #hint[text placement, text wrapping can be achieved.]

#lorem(30)

=== 1 Numbered Location Sample
_A short description of the location._

- Dusty crates and cases: Some items.
- Lockers: An item. #clue[An important item.]
- Exits: Steep stairs to ceiling hatch (Some Location),
Locked Door (Some Location),
Airlock (Some Location).

#pagebreak()

#lorem(45)

#lorem(50)

== Subsection

#lorem(35)

#lorem(50)

#pagebreak()

= Back of the Pamphlet

Nice location for clarifications, references
or advice for running the module.

= NPCs

Compact inline NPC descriptions using numbered lists.

+ *Name (Affiliation)*: Description. _"Tasty quote."_
+ *Name (Affiliation)*: Description. _"Tasty quote."_
+ #clue[Name (Affiliation)]: Important NPC. Important because of #clue[this.] _"Tasty quote."_

= Alternative Setups and Rules

...or general advice for running the module.

+ Leave some space between Sections.
+ Leave space between Content and Decor like Frames.
+ Come up with your own typographic language and use it consistently.
Locations, NPC names, secrets, special items can all have a particular
look.
+ Add creatures to the desert!

#make_roll_table(
  [Sample Roll Table],
  ([Thermal Paste], [Reagent], [Electronics Repair Kit], [A weapon], [1 day of food])
)

