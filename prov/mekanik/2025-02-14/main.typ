#import "@preview/fletcher:0.5.4" as fletcher: diagram, node, edge

#let facit = false
#let date = "2025-02-14"
#let title = "Mekanik prov | MEKMEK01 EE22"

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
  - Formelsamling och miniräknare ingår och får användas.
  - Vid flervalsfrågor ger varje korrekt svar poäng, varje fel svar ger avdrag från poäng.
  - *Alla svar ska ges i det separata svarspappret.*
]

#enum(
  numbering: (it => strong[#numbering("1.", it)]),
  spacing: 3em,

  [*Skriv ditt namn.*],
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

    *Rita en skiss över elefanten och alla krafter som påverkar den.\ Skriv ut varje krafts storlek.*
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
    align(center, $F_1 = 5 "N ", F_2 = 10 "N "$),
    enum(
      [Rita ut krafternas resultant.],
      [Beräkna resultantens storlek.],
      [Beräkna resultantens vinkel.],
    ),
    v(1fr),
  ),
  stack(
    [
      Pelle har fått sommarjobb som byggarbetare. På kafferasten sitter han ute på en balk som spänns upp av en lina. Linan bildar 30$degree$ mot horisontallinjen. Pelle väger 80 kg. Balken är 5 meter lång och väger 100 kg.

      *Hur mycket kraft måste linan bära?*
    ],
    image("byggarbete.svg"),
  ),
  stack(
    dir: ltr,
    {
      [Hur stort vridmoment skapas runt bulten \
        om kraften $F=50"N "$ verkar...]
      enum(
        [med $theta = 30 degree$],
        [med $theta = 60 degree$],
        [med $theta = 90 degree$],
      )
    },
    image("sned_nyckel.svg", height: 10em),
  ),
  {
    [
      En 50 ton bro ligger på två stödytor och är i jämvikt. Avstånd mellan tyngdpunkt och
      vänster stödyta är 10 meter och avståndet mellan tyngdpunkt och höger stödyta är
      5 meter.

      *Hur mycket kraft tar varje stödyta upp?*
    ]
    v(1em)
    image("bro.svg", height: 10em)
  },
)
