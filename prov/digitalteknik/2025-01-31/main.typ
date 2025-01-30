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
#set enum(numbering: (it => strong[#it.]))
#show table.cell.where(y: 0): set text(weight: "bold")

#grid(
  columns: (1fr, auto),
  text(size: 1.5em)[*Prov digitalteknik | MEKMEK01 EE22*], rect(date),
)
#v(2em)

#enum(
  spacing: 5em,

  grid(
    columns: (auto, 1fr, auto),
    align: bottom,
    stroke: none,
    inset: 0em,
    gutter: 1em,
    [Skriv ditt namn: ], line(length: 70%), [],
  ),

  [
    Skriv färdigt tabellen, alltså översätt alla tal till alla talsystem: #h(1fr)

    #table(
      align: center,
      columns: (1fr, 1fr, 1fr),
      inset: 0.7em,
      [Binärt], [Decimalt], [Hexadecimalt],
      [$101110_2$], [], [],
      [], [$27_10$], [],
      [], [], [$"2A"_16$],
    )
  ],

  [
    Skriv sanningstabellen för alla utsignaler: #h(1fr)

    #grid(
      columns: (1fr, 1fr),
      align: center + horizon,
      text(
        size: 1.5em,
        $
          y_1 &= a b + c\
          y_2 &= a' b c\
          y_3 &= (a xor b) + c\
          y_4 &= a+(b+c)'\
        $,
      ),
      table(
        columns: (2em,) * 7,
        align: center + horizon,
        rows: (2em,) * 9,
        [$a$], [$b$], [$c$], [$y_1$], [$y_2$], [$y_3$], [$y_4$],
        [0], [0], [0], [], [], [], [],
        [0], [0], [1], [], [], [], [],
        [0], [1], [0], [], [], [], [],
        [0], [1], [1], [], [], [], [],
        [1], [0], [0], [], [], [], [],
        [1], [0], [1], [], [], [], [],
        [1], [1], [0], [], [], [], [],
        [1], [1], [1], [], [], [], [],
      ),
    )

    #v(1fr)
  ],


  [
    För varje nät: skriv dess booleska uttryck. Du behöver själv namnge insignalerna till vänster.
    #grid(
      columns: (1fr, 1fr),
      align: center + horizon,
      gutter: 2em,
      [*a)* #box(image("1.svg", height: 6em))
        #v(2em)
        #line(length: 100%)
      ],
      [*b)* #box(image("2.svg", width:100%))
        #v(2em)
        #line(length: 100%)
      ],

      [*c)* #box(image("3.svg", width: 100%))
        #v(2em)
        #line(length: 100%)
      ],
      [*d)* #box(image("4.svg", width: 100%))
        #v(2em)
        #line(length: 100%)
      ],
    )
  ],

  [
    För varje booleskt uttryck $y_(1-4)$ från uppgift *3*:

    rita dess grindnät. Markera tydligt vilka in- och utsignaler som är vilka. #h(1fr)

    #table(
      rows: (9em,) * 2, columns: (1fr, 1fr)
    )
  ],
)
