#let facit = false
#let ans = body => if facit [#strong[#math.bold[#body]]]

#set page(
  paper: "a4",
  margin: 4em,
  numbering: "1 / 1",
  header: ans[Facit]
)
#set text(
  font: "Atkinson Hyperlegible",
  size: 13pt,
  lang: "sv"
)
#set box(width: 1fr)
#set heading(
  numbering: "1.",
)
#set enum(numbering: (it => strong[#it.])) 
#show table.cell.where(y: 0): set text(weight: "bold")


#v(1em)
#align(center)[
  #text(size:2em, 
  [*Prov digitalteknik | MEKMEK01 EE22*]) \
]

#v(2em)

#enum(
  tight: false,
  spacing: 3em,
  
  grid( columns: (auto, 1fr, auto), align: bottom, stroke: none, inset: 0em, gutter: 1em,
  [Skriv ditt namn: ], line(length:100%), [*(1p)*]
  ),
  
  [
    Skriv färdigt tabellen, alltså översätt alla tal till alla talsystem: #h(1fr) *(6p)*

#table(
  align: center,
  columns: (1fr, 1fr, 1fr),
  inset: 0.7em,
  [Binärt], [Decimalt], [Hexadecimalt],
  [$110010_2$], ans[$50_10$], ans[$32_16$],
  ans[$111111_2$], [$63_10$], ans[$3F_16$],
  ans[$100001_2$], ans[$33_10$], [$21_16$]
)
  ],

  [
    Skriv sanningstabellen för alla utsignaler: #h(1fr) *(16p)*

    #grid(columns: (1fr, 1fr), align: center+horizon,

    text(size: 1.5em, 
      $
      y_1 &= a b c \
      y_2 &= a' + b c \
      y_3 &= (a + b)' c \
      y_4 &= (a xor b') + c \
      $
    ),
table(
  columns: (2em,)*7, 
  align: center+horizon, 
  rows: (2em,)*9,
  [$a$], [$b$], [$c$], [$y_1$], [$y_2$], [$y_3$], [$y_4$],
  [0], [0], [0], ans[0], ans[1], ans[0], ans[1],
  [0], [0], [1], ans[0], ans[1], ans[1], ans[1],
  [0], [1], [0], ans[0], ans[1], ans[0], ans[0],
  [0], [1], [1], ans[0], ans[1], ans[0], ans[1],
  [1], [0], [0], ans[0], ans[0], ans[0], ans[0],
  [1], [0], [1], ans[0], ans[0], ans[0], ans[1],
  [1], [1], [0], ans[0], ans[0], ans[0], ans[1],
  [1], [1], [1], ans[1], ans[1], ans[0], ans[1],
)
  )
    #v(1fr)
  ],


  [
   För varje nät: namnge in- och utsignaler samt skriv dess booleska uttryck.  #h(1fr) *(12p)*
   #grid(columns: (1fr, 1fr), align: center+horizon, gutter: 2em,
   [*a)* #box(image("1.svg", height: 6em))
 #v(1em)
 #line(length: 100%)
 ],
 
 [*b)* #box(image("2.svg", width:100%))
 #v(1em)
 #line(length: 100%)
],
   [*c)* #box(image("3.svg", width: 100%))
 #v(1em)
 #line(length: 100%)
 ],
 
 [*d)* #box(image("4.svg", width: 100%))
 #v(1em)
 #line(length: 100%)
],
    )
  ],

  [
    För varje booleskt uttryck $y_(1-4)$ från uppgift 3: rita dess grindnät. Markera tydligt vilka in- och utsignaler som är vilka. #h(1fr) *(12p)*

    #table(rows: (11em,)*2,columns: (1fr,1fr)
  )
  ]
)