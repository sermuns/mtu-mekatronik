#import "@preview/polylux:0.3.1": *

#set text(
  font: "Atkinson Hyperlegible",
  lang: "sv",
  size: 25pt,
  fill: white,
)
#set page(paper: "presentation-16-9", fill: black.lighten(10%))
#show link: text.with(fill: yellow)
#show link: underline
#set par(spacing: 2em)

#show heading: it => {
  it
  v(.5em)
}

#polylux-slide[
  #place(
    top + left,
    [MEKMEK01 - EE22],
  )
  #align(
    center + horizon,
    text(
      size: 2em,
      [*v45 - Ellära*],
    ),
  )
]

#polylux-slide[
  = Var ligger vi i schemat?
  #align(
    center + horizon,
    link("http://mek.samake.se/index.html#current-week", [LÄNK]),
  )

]

#polylux-slide[
  = Mål för dagen

  Lära oss om...

  #line-by-line[
    - potential och spänning
    - ström och resistans
    - (och kunna räkna med) ohms lag
    - serie- och (parallellkopplingar)
  ]
]

#polylux-slide[
  #align(
    center + horizon,
    text(
      size: 2em,
      [*Potential och spänning*],
    ),
  )
]

#polylux-slide[
  #image("krets_potential.svg", width: 100%)
]

#polylux-slide[
  = Potentialskillnad
  #align(
    center + horizon,
    link("ball-potential.mp4", [VIDEO]),
  )
]

#polylux-slide[
  = Spänningskällor
  #grid(columns: (1fr,)*3,
  image("battery.png"),
)
]
