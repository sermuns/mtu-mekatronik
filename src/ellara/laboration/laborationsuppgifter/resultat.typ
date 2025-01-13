#set page(
  paper: "a4",
  margin: 3em,
)
#set text(
  font: "Atkinson Hyperlegible",
  size: 13pt,
  lang: "sv"
)
#set box(width: 1fr)
#set enum(numbering: "1.a.")
#set par(spacing: 1em)
#let hl(width: 10em) = box(
  height: 1em,
  width: width,
  stroke: (bottom: 1pt)
)

#set table(
  columns: (auto, 1fr), rows: 1.5em
)

= MEKMEK01 ellära laboration resultatblad

#table(columns: (auto, 1fr), [Namn:], [])

#v(2em)
== Resultat
#grid(columns: (1fr, 1fr), column-gutter: 3em,
[
  1.  #table(
  columns: (auto, 1fr),
  [a], [],
  [b], [],
  [ ], [],
  [ ], [],
  [c], [],
  [d], [],
)

  2. #table(
  [a], [],
  [ ], [],
  [ ], [],
  [ ], [],
  [ ], [],
  [ ], [],
  [b], [],
  [c], [],
  [ ], [],
  [d], [],
  [e], [],
)

],
[
3.
a. #box(table(columns: (1fr,1fr), rows: (1.5em,)*10,
[*Resistans*], [*Ström*]
)
)

b. #hl()
],
)
