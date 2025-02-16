#import "@preview/fletcher:0.5.4" as fletcher: diagram, node, edge

#let u(unit) = $space.thin upright(unit)$
#let newton = u[N]
#let kg = "kg"
#let meter = u[m]
#let second = u[s]
#let date = "2025-02-14"
#let title = "Lösningar till mekanik prov | MEKMEK01 EE22"
#let wrong = emoji.crossmark
#let correct = "✅"

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
  spacing: 1em,
  numbering: (it => strong[#numbering("a)", it)]),
)
// #show enum: pad.with(top: .3em)

// #set par(spacing: 1.5em)
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

#enum(
  numbering: (it => strong[#numbering("1.", it)]),
  spacing: 2em,
  start: 2,

  enum(
    [
      Om han _ligger stilla_ betyder att hans hastighet är noll. Alltså har han en konstant hastighet, alltså är han i *jämvikt*!
    ],
    [
      Raketen _ökar i hastighet_ (accelererar). Hans hastighet är *inte* konstant. Därför är han *inte* i jämvikt.
    ],
    [
      Om han har nått sin maxhastighet och faller i i _konstant hastightet_, betyder det att luftmotståndet bromsar lika hårt som tyngdkraften försöker accelerera, alltså är han i *jämvikt*.
    ],
  ),

  {
    image("elefant.svg", height: 15em)
    [
      Detta är ett *jämviktsproblem*, eftersom det nämns i texten att elefanten rör sig med konstant hastighet.

      Från texten vet vi att $F_"broms" = 2700 newton$.

      Man kan beräkna elefantens tyngdkraft $F_g$ från att dess massa är $5000 kg$.

      $
        F_g &= m_"elefant" dot g \
        F_g &= 5000 dot 9.82 = 49100 newton
      $

      Elefanten går på en väg, så därför måste vägen bära upp elefantens tyngd. Detta görs med en *normalkraft*, $F_N$. Enligt jämvikt måste $sum F_y = 0$, alltså:

      $
        F_N - F_g &= 0 \
        F_N - 491000 &= 0 \
        F_N &= 49100 newton
      $

      På sammas sätt måste elefantens framåtkraft vara lika stor som vad den blir bromsad med, alltså:

      $
        F_"fram" - F_"broms" &= 0 \
        F_"fram" - 2700 &= 0 \
        F_"fram" &= 2700 newton
      $
    ]
    v(1fr)
  },
  enum(
    [
      #wrong Visserligen sant, men har ingenting med mekanikens gyllene regel att göra.
    ],
    [
      #correct Detta är ett exempel på regeln! Samma mängd vridmoment kan uppstå genom olika kombinationer av längd och kraft.
    ],
    [
      #correct Också ett exempel på regeln!
    ],
  ),
  {
    enum(
      diagram(
        cell-size: 5em,
        edge-stroke: 2pt,
        mark-scale: 70%,
        node-stroke: 2pt,
        $
          "" edge("u", 5 newton, "-|>") edge("rr", 10 newton, "-|>") edge("urr", F_R, "-|>")
        $,
      ),
      $
        F_R &= sqrt(F_y^2 + F_x^2) \
        F_R &= sqrt(5^2 + 10^2) = sqrt(25 + 100) = sqrt(125) \
        F_R &approx 11.2 newton
      $,
      $
        theta &= arctan(F_y / F_x) \
        theta &= arctan(5 / 10) \
        theta &approx 26.57 degree
      $,
    )
    v(1fr)
  },
  {
    image("byggarbete_facit.svg")
    [
      Detta är en jämviktssituation. Alltså är:
      $
        sum F_y &= 0 \
        sum F_x &= 0 \
        sum M &= 0
      $
      Vi kan börja med alla vertikala krafter:
      $
        sum F_y &= 0 \
        F_"lina_Y" - F_"pelle" - F_"balk" &= 0 \
        F_"lina_Y" &= F_"pelle" + F_"balk" \
        F_"lina_Y" &= 80 dot 9.82 + 100 dot 9.82 \
        F_"lina_Y" &= 785.6 + 982 = 1767.6 newton \
      $

      Nu vet vi att linan tar upp $1767.6 newton$ i y-led, men hur mycket tar den upp totalt? Vi kan kolla på komposantuppdelningsformeln för $F_y$:
      $
        F_y &= F_R dot sin(theta) \
      $
      I detta fall motsvarar $F_"lina"$ vår $F_R$, och $F_"lina_Y"$ motsvarar $F_y$.

      Vi vet även att $theta = 30 degree$. Därför:
      $
        F_"lina_Y" &= F_"lina" dot sin(30 degree) \
        F_"lina_Y" / sin(30 degree) &= F_"lina" \
        1767.6 / sin(30 degree) &= F_"lina" \ \
        F_"lina" &= 3535.2 newton
      $
    ]
    v(1fr)
  },
  enum(
    $50 dot sin (30 degree) dot 0.7 = 17.5 "Nm"$,
    $50 dot sin (60 degree) dot 0.7 approx 30.3 "Nm"$,
    $50 dot sin (90 degree) dot 0.7 = 35 "Nm"$,
  ),
  {
    image("bro_facit.svg")
    [
      Bron är i jämvikt. Vi kan då börja med att konstatera att $sum F_y = 0$ :
      $
        F_v + F_h - F_g &= 0 \
        F_v + F_h &= F_g \
        F_v + F_h &= 50" "000 dot 9.82 \
        F_v + F_h &= 491" "000 newton
      $
      Än så länge är båda krafterna okända, men detta betyder att vi bara behöver hitta _en_ av stödkrafterna för att veta den andra.

      Vi kan använda jämvikt av vridmoment kring exempelvis den vänstra stödytan för att hitta den högra stödkraften:

      $
        - F_g dot 6 + F_h dot (6+2.5) &= 0 \
        F_h dot 8.5 &= F_g dot 6 \
        F_h &= (F_g dot 6) / 8.5 \
        F_h &= (491" "000 dot 6) / 8.5 \
        bold(F_h &approx 346" "588 newton)
      $

      Sista steget är att stoppa in värdet på $F_h$ i förra ekvationen:

      $
        F_v + 346" "588 &= 491" "000 \
        F_v &= 491" "000 - 346" "588 \
        bold(F_v &approx 144" "412 newton)
      $
    ]
  },
)
