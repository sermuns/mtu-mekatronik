#import "@preview/fletcher:0.5.4" as fletcher: diagram, node, edge

#let facit = false
#let date = "2025-02-14"
#let title = "Mekanik prov | MEKMEK01 EE22"

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

#let ebox(body) = {
  grid(
    columns: (auto, 1fr, auto),
    align: bottom,
    gutter: .5em,
    body, line(length: 100%), //[*#p*],
  )
}

#grid(
  columns: (1fr, auto),
  text(size: 1.5em)[*#title*], rect(date),
)

#rect(width: 100%, inset: 1em)[
  Formelsamling och miniräknare ingår och får användas.

  *Alla svar ska ges i det separata svarspappret.*

  Vid flervalsfrågor ger varje korrekt svar poäng, varje fel svar ger avdrag från poäng.
]

#enum(
  numbering: (it => strong[#numbering("1.", it)]),
  spacing: 2em,

  [Skriv ditt namn],
  {
    [I vilken/vilka av dessa situationer är Pelle i jämvikt?]
    enum(
      [Han ligger stilla i sin säng.],
      [Han sitter i en rymdraket som stadigt ökar i hastighet.],
      [Han fallskärmshoppar, har uppnått maxhastighet, och faller nu i en konstant hastighet på $200 "km/h".$],
    )
  },
  [
    En elefant som väger $5000 "kg"$ drar en vagn framåt i konstant hastighet. Totalt påverkas elefanten av $2700 "N "$ bromsande krafter.

    *Rita en skiss över elefanten, med alla påverkande krafter och dess storlek.*
  ],
  {
    [I vilka av dessa situationer visar sig _mekanikens gyllene regel_?]
    enum(
      [Föremål med samma massa kan ha olika tyngd beroende på vilken planet den befinner sig på.],
      [Två personer som har olika tyngd kan få en gungbräda i jämvikt genom att sitta på lämpligt avstånd från rotationscentrum.],
      [Med en cykel kan det kännas tungt att trampa i 7:ans växel, men tråkigt att behöva trampa så många varv i 1:ans växel.],
    )
  },
  stack(
    align(
      center,
      diagram(
        cell-size: 5em,
        edge-stroke: 2pt,
        mark-scale: 70%,
        node-stroke: 2pt,
        $
          "" edge("u", F_1, "-|>") edge("rr", F_2, "-|>") \
        $,
      ),
    ),
    $F_1 = 5 "N ", F_2 = 10 "N "$,
    enum(
      [Rita ut krafternas resultant.],
      [Beräkna resultantens storlek.],
      [Beräkna resultantens vinkel.],
    ),
  ),
  {

},
)
