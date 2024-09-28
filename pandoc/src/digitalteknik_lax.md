---
title: MEKMEK01 | Digitalteknik LaX
---

> Du har blivit anlitad av ett företag för att designa grindnät som förverkligar vissa logiska funktioner. Varje problem kräver att du använder logiska grindar, och du måste skriva ut vilka pin:s på styrenheten som sladdar går mellan.  Kunden vill att du sätter bokstäver på ingång- och utgångarna. Ni ska själva tolka antalet ingångar, men ni vet att det alltid är exakt en utgång.

# Exempelproblem och lösning:
"En bil har ett säkerhetssystem för att den inte startar med misstag: man ska endast kunna starta bilen om kopplingen hålls ned samtidigt som bromsen.

```{=typst}
#align(center)[
    #text(weight: "bold")[
        Skapa logik för när det är tillåtet att starta bilen.
        ]
    ]
```

```{=typst}
#set table(
  stroke: none,
  gutter: 0em,
  align: horizon,
  fill: (x, y) =>
    if y == 0 { black },
  inset: (right: 1.5em),
)

#show table.cell: it => {
  if it.y == 0 {
    set text(white)
    strong(it)
  } else {
    rect(width: 100%, height: 100%, it)
  }
}

#table(
    columns: (1fr, 1fr),
    rows: (2em, 8em),
    table.header[In- och utgångar][Booleskt uttryck],
    [
        a : koppling nedtryckt \
        b : broms trycks ned \
        y : tillåtet att starta bilen
    ],
    [$$y = ab$$],
    [
        Gridnnät
    ]
)
```