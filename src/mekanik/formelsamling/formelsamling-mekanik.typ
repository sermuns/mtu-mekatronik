#import "@preview/cetz:0.3.1"
#import "drawings.typ": *

#let p = it => {
  pad(left: 1em, it)
}

#set document(title: "Formelsamling mekanik | MEKMEK01")
#set page(margin: 3em)
#set text(font: "Atkinson Hyperlegible", size: 12pt)
#show math.equation: text.with(size: 1.2em)

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
  inset: 1em,
  stroke: black,
  columns: 2 * (1fr,),
  gutter: 0em,
  grid.cell(colspan: 2)[
    *Komposanter och resultant*
    #grid(
      columns: (1fr,) * 2,
      align: (x, y) => (
        if x == 0 { right } else { left }
      ),

      grid.cell(rowspan: 3, vektorer),

      mcell($ F_R = sqrt((F_x)^2 + (F_y)^2) $),

      mcell($
        F_x &= F_R dot cos(theta)\
        F_y &= F_R dot sin(theta)
      $),

      mcell([
        $theta = arctan(F_y / F_x)$\
        _($arctan$ kan också betecknas $tan ^ (-1)$)_
      ]),
    )
  ],
  [
    *Vektoraddition*
    #grid(
      columns: (1fr,) * 2,
      align: (x, y) => (
        if x == 0 { right } else { left }
      ),
      row-gutter: 1em,
      column-gutter: 2em,

      [Likriktade:],
      mcell($
        F_"tot" &= F_1 + F_2\
      $),

      grid.cell(
        colspan: 2,
        likriktade,
      ),

      [Motriktade:],
      mcell($
        F_"tot" &= F_1 - F_2\
      $),

      grid.cell(
        colspan: 2,
        motriktade,
      ),

      grid.cell(inset: 1em, colspan: 2, align: left)[
        _(Om krafter inte är parallella måste de komposantuppdelas och adderas komposantvis.)_
      ]
    )
  ],
  [
    *Kraftjämvikt*
    #grid(
      columns: (1fr,) * 2,
      row-gutter: 1em,
      column-gutter: 2em,

      mcell(
        align: center,
        cs: 2,
        $
          sum F_x = 0\
          sum F_y = 0
        $,
      ),
    )

  ],
  grid.cell(colspan: 2)[
    *Vridmoment*

    #grid(
      columns: (1fr,) * 2,
      row-gutter: 3em,
      column-gutter: 2em,

      mcell(
        align: center + horizon,
        $
          M = F_perp dot l
        $,
      ),

      vridmoment
    )
  ]
)
