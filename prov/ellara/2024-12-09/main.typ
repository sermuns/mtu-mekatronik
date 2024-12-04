#let facit = false
#let ans = body => if facit [#strong[#math.bold[#body]]]
#let date = "2024-12-09"

#set page(
  paper: "a4",
  margin: 4em,
  numbering: "1 / 1",
  header: ans[#rect()[_Facit_]],
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
  spacing: 2em,
  numbering: (it => strong[#numbering("a)", it)]),
)
#set par(spacing: .5em)
#show table.cell.where(y: 0): set text(weight: "bold")

#let ebox(body, p: "1p") = {
  grid(
    columns: (auto, 1fr, auto),
    align: bottom,
    gutter: .5em,
    body, line(length: 100%), [*(#p)*],
  )
}

#grid(
  columns: (1fr, auto),
  text(size: 1.5em)[*Ellära prov | MEKMEK01 EE22*], rect(date),
)
#v(2em)

#enum(
  numbering: (it => strong[#numbering("1.", it)]),
  spacing: 5em,
  ebox(p: "1p")[Skriv ditt namn],
  {
    [Svara på frågor om kretsen]
    align(center, image("2.svg", width: 80%))
    enum(
      ebox(p: "1p")[Hur stor är strömmen $I$ som går genom kretsen?],
      [
        Hur stor är delspänningarna $U_1$ och $U_2$ som ligger över $R_1$ respektive $R_2$?
        #grid(
          columns: 2,
          gutter: 3em,
          inset: 1em,
          ebox(p: "1p")[$U_1$], ebox(p: "1p")[$U_2$],
        )
      ],
    )
  },
)