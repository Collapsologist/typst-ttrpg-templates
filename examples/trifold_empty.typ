#import "/modules/typography/scifi_compact.typ": typography
#import "/modules/trifold.typ": trifold

#let author = "Author"
#set document(
  author: author,
  title: "Trifold Adventure Template",
  description: "A template for creating trifold adventures quickly using Typst."
)

#set page(
  paper: "a4",
  flipped: true,
  margin: (x: 2%, y: 4%),
)

#show: typography
#show: rest => trifold(rest)


#title()
Page 1
#pagebreak()
Page 2
#pagebreak()
Page 3
#pagebreak()
Page 4
#pagebreak()
Page 5
#pagebreak()
Page 6
