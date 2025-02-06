#import "@preview/cetz:0.3.1"
#import "drawings.typ": *

#set document(title: "Formelsamling mekanik | MEKMEK01")
#set page(margin: 2em)
#set text(font: "Atkinson Hyperlegible", size: 14pt)

#align(
  center,
  text(size: 1.5em)[*#context document.title*],
)

#let mcell = (it, cs: 1, align: auto) => {
  grid.cell(
    align: align,
    colspan: cs,
    block(it),
  )
}

#set grid(
  row-gutter: 2em,
  column-gutter: 1em,
)

#grid(
  inset: 2em,
  stroke: black,
  columns: (1fr, 1fr),
  gutter: 0em,

  grid.cell(colspan: 2)[
    *Komposanter och resultant*
    #grid(
      columns: (1fr,) * 2,
      column-gutter: 3em,
      align: (x, y) => (
        horizon
          + (
            if x == 0 { right } else { left }
          )
      ),

      grid.cell(rowspan: 3, vektorer),

      mcell($ F_R = sqrt((F_x)^2 + (F_y)^2) $),

      mcell($
        F_x &= F_R dot cos(theta)\
        F_y &= F_R dot sin(theta)
      $),

      mcell([
        $theta = arctan(F_y / F_x)$

        _($arctan$ kan också betecknas $tan^(-1)$)_
      ]),
    )
  ],
  [
    *Vridmoment*
    #stack(
      spacing: 1em,
      $ M = F_perp dot l $,
      align(center, vridmoment),
    )
  ],
  [
    *Jämvikt*
    #stack(
      $
        sum F_x &= 0\
        sum F_y &= 0\
      $,
      v(2em),
      $
        sum M &= 0
      $,
    )
  ],

  [
    *Tecken på storhet*

    - Uppåt är positiv vertikalt

    - Höger är positivt horisontellt.

    - Moturs är positiv rotation

    #align(center, riktning)
  ]
)
