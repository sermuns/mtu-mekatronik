#import "@preview/fletcher:0.5.4" as fletcher: diagram, node, edge

#let u(unit) = $space.thin upright(unit)$
#let newton = u[N]
#let kg = "kg"
#let cm = "cm"
#let meter = u[m]
#let second = u[s]
#let date = "2025-03-06"
#let title = "Lösningar till mekanik prov | MEKMEK01 EE22"
#let wrong = emoji.crossmark
#let correct = "✅"

#let catan(x) = calc.round(calc.atan(x).deg(), digits: 2)
#let csqrt(x) = calc.round(calc.sqrt(x), digits: 2)

#show image: align.with(center)
#set document(title: title)
#set page(
  margin: 4em,
  numbering: "1 / 1",
)
#set text(
  font: "Atkinson Hyperlegible",
  size: 11pt,
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
  spacing: 5em,
  start: 2,

  enum(
    [
      #correct Om han _ligger stilla_ betyder att hans hastighet är noll. Alltså har han en konstant hastighet, alltså är han i *jämvikt*!
    ],
    [
      #wrong Raketen _ökar i hastighet_ (accelererar). Hans hastighet är *inte* konstant. Därför är han *inte* i jämvikt.
    ],
    [
      #correct Om han har nått sin maxhastighet och faller i i _konstant hastightet_, betyder det att luftmotståndet bromsar lika hårt som tyngdkraften försöker accelerera, alltså är han i *jämvikt*.
    ],
  ),

  {
    image("bil.svg", height: 15em)
    [
      Detta är ett *jämviktsproblem*, eftersom det nämns i texten att bilen kör i $90 "km/h"$ (konstant) hastighet.

      Från texten vet vi att $F_"broms" = 2700 newton$.

      Vi får bilens tyngdkraft $F_g$ från att dess massa är $1000 kg$.

      $
        F_g &= m_"elefant" dot g \
        F_g &= 1000 dot 9.82 = 9820 newton
      $

      Bilen kör ovanpå en väg, så därför måste vägen bära upp bilens tyngd. Detta görs med en normalkraft $F_N$. Enligt jämvikt måste $sum F_y = 0$, alltså:

      $
        F_N - F_g &= 0 \
        F_N - 9820 &= 0 \
        F_N &= 9820 newton
      $

      Enligt jämvikt måste $sum F_x = 0$.

      Alltså måste bilens framåtkraft vara lika stor som vad den blir bromsad med:

      $
        F_"motor" - F_"broms" &= 0 \
        F_"motor" - 2700 &= 0 \
        F_"motor" &= 2700 newton
      $
    ]
    v(1fr)
  },
  enum(
    [
      #correct Detta är ett exempel på regeln! Samma mängd vridmoment kan uppstå genom olika kombinationer av längd och kraft.
    ],
    [
      #wrong Visserligen sant, men har ingenting med mekanikens gyllene regel att göra.
    ],
    [
      #correct Också ett exempel på regeln! Man får göra en avvägning mellan sträcka trampat med pedalerna, eller kraft applicerad.
    ],
  ),
  {
    enum(
      diagram(
        cell-size: 1em,
        edge-stroke: 2pt,
        mark-scale: 70%,
        node-stroke: 2pt,
        $
          "" edge("uuu", 6 newton, #left, "-|>") edge("rr", 2 newton, #right, "-|>") edge("uuurr", F_R, "-|>")
        $,
      ),
      $
        F_R &= sqrt(F_y^2 + F_x^2) \
        F_R &= sqrt(6^2 + 2^2) = sqrt(36 + 4) = sqrt(40) \
        F_R &approx #csqrt(40)newton
      $,
      $
        theta &= arctan(F_y / F_x) \
        theta &= arctan(6 / 2) \
        theta &approx #catan(6/2) degree
      $,
    )
  },
  {
    $M = F_perp dot l$
    enum(
      $M &= 20 dot sin(30 degree) dot 0.50 = #calc.round(20*calc.sin(30deg)*0.5, digits: 2) "Nm"$,
      $M &= 20 dot sin(60 degree) dot 0.50 = #calc.round(20*calc.sin(60deg)*0.5, digits: 2) "Nm"$,
      $M &= 20 dot sin(90 degree) dot 0.50 = #calc.round(20*calc.sin(90deg)*0.5, digits: 2) "Nm"$,
    )
    v(1fr)
  },
  {
    image("linjal.svg", height: 15em)
    [
      Detta är en jämviktssituation, eftersom det står i texten "allting är i balans".

      Då vet vi att summan av vridmoment är noll:
      $
        sum M &= 0 \
        M_"suddi" - M_"linjal" &= 0 \
        m_"suddi" dot g dot 0.03 - m_"linjal" dot g dot 0.05 &= 0 \
        m_"suddi" dot g dot 0.03 &= m_"linjal" dot g dot 0.05 \
        m_"suddi" dot 0.03 &= m_"linjal" dot 0.05 \
        (m_"suddi" dot 0.03) / 0.05 &= m_"linjal" \
      $
      Vi vet från texten att $m_"suddi" = 100 "g " = 0.1 kg $:
      $
        m_"linjal" &= (0.1 dot 0.03) / 0.05 \
        m_"linjal" &= #calc.round(0.1*0.03/0.05, digits: 2) "kg" = 60 "g "
      $
    ]
    v(1fr)
  },

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
