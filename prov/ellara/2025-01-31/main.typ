#let facit = false
#let date = "2025-01-31"

#set page(
  paper: "a4",
  margin: 4em,
  numbering: "1 / 1",
)
#set text(
  font: "Atkinson Hyperlegible",
  size: 13pt,
  lang: "sv",
)
#set box(width: 1fr)
#set heading(numbering: "1.")

// hardcode for smaller enums
#set enum(
  spacing: 1.5em,
  numbering: (it => strong[#numbering("a)", it)]),
)
#set par(spacing: .7em)
#show table.cell.where(y: 0): set text(weight: "bold")

#let ebox(body, p: "(1p)", r: auto) = {
  grid(
    columns: (r, 1fr, auto),
    align: bottom,
    gutter: .5em,
    body, line(length: 100%), //[*#p*],
  )
}

#grid(
  columns: (1fr, auto),
  text(size: 1.5em)[*Ellära prov | MEKMEK01 EE22*], rect(date),
)
#rect(width: 100%)[
  Miniräknare får användas. *Ange svar med korrekt enhet*
]
#v(.5em)

#enum(
  numbering: (it => strong[#numbering("1.", it)]),
  spacing: 2em,
  ebox(p: "(1p)")[Skriv ditt namn:],
  {
    [Vad är beteckningen för storheten... #h(1fr)]
    grid(
      columns: 3,
      column-gutter: 1em,
      inset: .5em,
      ebox(p: "")[*a)* resistans],
      ebox(p: "")[*b)* spänning],
      ebox(p: "")[*b)* ström],
    )
  },
  {
    [Vad är enheten för... #h(1fr)]
    grid(
      columns: 3,
      column-gutter: 1em,
      inset: .5em,
      ebox(p: "")[*a)* resistans],
      ebox(p: "")[*b)* spänning],
      ebox(p: "")[*b)* ström],
    )
  },
  {
    align(center, image("ström.svg", height: 13em))
    enum(
      ebox(p: "(1p)")[I vilken nod är potentialen högst, *$A$* eller *$B$*?],
      ebox(p: "(1p)")[Hur stor är resistansen i kretsen?],
      ebox(p: "(1p)")[Hur stor är spänningen i kretsen?],
      [Rita in strömmen som en pil i kretsen. Tänk på riktningen! #h(1fr) ],
      {
        [Hur stor är strömmen i kretsen? Visa beräkningarna i rutan. #h(1fr) ]
        rect(width: 100%, height: 5em)
      },
      {
        [Hur stor effekt utvecklas i resistorn? Visa beräkningarna i rutan. #h(1fr) ]
        rect(width: 100%, height: 5em)
      },
    )
    v(1fr)
  },
  {
    align(center, image("kretsfrågor.svg", width: 80%))
    enum(
      ebox(
        p: "(1p)",
      )[I kretsen ovan, är resistorerna serie- eller parallelkopplade?],
      {
        [Vad är ersättningsresistansen? Visa beräkningarna i rutan. #h(1fr) ]
        rect(width: 100%, height: 5em)
      },
      {
        [Hur stor är strömmen $I$ i kretsen? Visa beräkningarna i rutan. #h(1fr) ]
        rect(width: 100%, height: 5em)
      },
      [
        Hur stor är delspänningarna $U_1$ och $U_2$ som ligger över $R_1$ respektive $R_2$?

        Visa beräkningarna i rutorna.

        #grid(
          columns: (auto, 1fr),
          align: center + horizon,
          column-gutter: .5em,
          [$U_1:$], rect(width: 100%, height: 5em),
        )
        #grid(
          columns: (auto, 1fr),
          align: center + horizon,
          column-gutter: .5em,
          [$U_2:$], rect(width: 100%, height: 5em),
        )
      ],
    )
    v(1fr)
  },
  {
    align(
      center,
      {
        image("kombkrets.svg", height: 15em)
      },
    )
    v(1em)
    [
      *a)* Ta fram ersättningsresistansen för resistornätet. (Tips: gör det stegvis!) #h(1fr)

      $R_1 = 10 ohm$, $R_2 = 20 ohm$, $R_3 = 30 ohm$ och $R_4 = 40 ohm$.
    ]

    rect(width: 100%, height: 12em)

    v(1em)
    [
      *b)* Rita ut alla _(unika)_ noder i kretsen. #h(1fr)
    ]

    v(1em)
    [
      *c)* Rita ut och beräkna alla delströmmar.
    ]
    rect(width: 100%, height: 7em)

    v(1em)
    [
      *d)* Hur stor är delspänningen över $R_3$?
    ]
    rect(width: 100%, height: 7em)
  },
  {
    set par(spacing: 1em)
    align(
      center,
      {
        image("bakåt_ers.svg", height: 20em)
      },
    )
    [
      #v(1em)

      *a)* Hur stor är spänningskällan $U$ ?
      #h(1fr)
    ]
    rect(width: 100%, height: 7em)
    [
      *b)* Hur stor är resistorn $R_2$ ?
      #h(1fr)
    ]
    rect(width: 100%, height: 7em)
    [
      *c)* Vad är totala strömmen $I$ ?
      #h(1fr)
    ]
    rect(width: 100%, height: 7em)
  },
)
