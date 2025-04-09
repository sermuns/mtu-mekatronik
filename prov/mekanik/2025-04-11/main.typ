#import "@preview/fletcher:0.5.4" as fletcher: diagram, node, edge

#let date = "2025-04-11"
#let title = "Mekanik prov | MEKMEK01 EE22"
#let newton = $upright("N")$
#let meter = $upright("m")$

#show image: align.with(center)
#set document(title: title)
#set page(
  margin: 4em,
  numbering: "1 / 1",
)
#set text(
  font: "Atkinson Hyperlegible",
  size: 12pt,
  lang: "sv",
)
#set heading(numbering: "1.")
#set stack(spacing: 1em)

// hardcode for smaller enums
#set enum(
  spacing: 1.3em,
  numbering: (it => strong[#numbering("a)", it)]),
)
#show enum: pad.with(top: .3em)

#set par(spacing: 1em)
#show table.cell.where(y: 0): strong

#stack(
  dir: ltr,
  spacing: 1fr,
  text(size: 1.5em)[*#title*],
  rect(date),
)

#rect(width: 100%, inset: 1em)[
  - Formelsamling och miniräknare ingår och får användas.
  - Vid flervalsfrågor ger varje korrekt svar poäng, fel svar ger avdrag från poäng.
  - *Alla svar ges i det separata svarspappret.*
]

#enum(
  numbering: (it => strong[#numbering("1.", it)]),
  spacing: 3em,

  [*Skriv ditt namn.*],

  [
    I vilken/vilka av dessa situationer är Pelle i jämvikt?
    #enum(
      [Han rullar med cykeln nedför en backe, stadigt ökande i hastighet.],
      [Han har precis hoppat ut från ett flygplan och faller snabbare och snabbare.],
      [Han sitter i en rymdraket som färdas i konstant hastighet.],
    )
  ],

  [
    En bil som väger $1400 "kg"$ kör i konstant hastighet på motorvägen.

    Den bromsas totalt med $2700 newton$ på grund av bl.a. luftmotstånd och friktion.

    *Rita en skiss över bilen med alla krafter som påverkar den.\ Skriv varje krafts storlek.*
  ],

  [
    I vilken/vilka av dessa situationer visar sig _mekanikens gyllene regel_?
    #enum(
      [Med hjälp av en lång skiftnyckel är det lättare att hårt dra åt en bult.],
      [Föremål med samma massa kan ha olika tyngd beroende på vilken planet den befinner sig på.],
      [Istället för att lyfta sina möbler rakt upp, väljer Pelle att använda en lång ramp.],
    )
  ],

  stack(
    align(
      center,
      diagram(
        cell-size: 5em,
        edge-stroke: 2pt,
        mark-scale: 70%,
        node-stroke: 2pt,
        $
          "" edge("u", 1 newton, "-|>") edge("rr", 2 newton, "-|>") \
        $,
      ),
    ),
    enum(
      [Rita ut krafternas resultant.],
      [Beräkna resultantens storlek.],
      [Beräkna resultantens vinkel.],
    ),
    v(1fr),
  ),
  stack(
    dir: ltr,
    spacing: 1fr,
    [
      Hur stort vridmoment skapas runt bulten \
      om kraften $F=20"N "$ verkar med
      #enum(
        $theta = 30 degree$,
        $theta = 60 degree$,
        $theta = 90 degree$,
      )
    ],
    image("sned_nyckel.svg", height: 10em),
  ),
  stack(
    [
      Pelle har tråkigt på en lektion och balanserar ett suddigummi på sin linjal som hänger över kanten på bänken.

      Han märker att allting är i balans när linjalens tyngdpunkt är $5 "cm"$ från bänkens kant, och suddigummit är $3 "cm"$ från bänkens kant.

      *Hur mycket väger linjalen om suddigummit väger $100 "g "$?*
    ],
    image("linjal.svg", width: 90%),
  ),
  {
    [
      En $50 "ton"$ bro ligger på två stödytor och är i jämvikt. Avstånd mellan tyngdpunkt och
      vänster stödyta är $5 meter$ och avståndet mellan tyngdpunkt och höger stödyta är
      $3 meter.$

      *Hur mycket kraft tar varje stödyta upp?*
    ]
    v(1em)
    image("bro.svg", height: 10em)
  },
)
