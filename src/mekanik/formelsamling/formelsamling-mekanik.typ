#import "@preview/cetz:0.3.1"

#let p = it => {
  pad(left: 1em, it)
}

#set page(margin: 3em)
#set text(font: "Atkinson Hyperlegible")

#align(
  center,
  text(size: 1.5em)[*Formelsamling för mekanik [MEKMEK01]*],
)

#let mcell = (it, cs: 2) => {
  grid.cell(
    colspan: cs,
    block(it),
  )
}

#grid(
  inset: 1em,
  stroke: black,
  columns: 2,
  [
    *Vektorer*
    #grid(
      columns: (auto,) * 3,
      align: (x, y) => (
        if x == 0 { right } else { left }
      ),
      gutter: 5em,

      [Komposantuppdelning:],
      mcell(
        cs: 1,
        $
          F_x &= F_R dot cos(theta)\
          F_y &= F_R dot sin(theta)
        $,
      ),
      cetz.canvas(
        length: 2cm,
        {
          import cetz.draw: *

          set-style(
            mark: (fill: black, scale: 1),
            stroke: (thickness: 1pt, cap: "round"),
            angle: (
              radius: 0.3,
              label-radius: .22,
              fill: orange.lighten(80%),
              stroke: (paint: green.darken(50%)),
            ),
            content: (padding: 1pt),
          )

          line((-1.5, 0), (1.5, 0), mark: (end: "stealth"))
          content((), $ x $, anchor: "west")
          line((0, -1.5), (0, 1.5), mark: (end: "stealth"))
          content((), $ y $, anchor: "south")


          // Draw the green angle
          cetz.angle.angle(
            (0, 0),
            (1, 0),
            (1, calc.tan(30deg)),
            label: text(orange, [#sym.alpha]),
          )

          line((0, 0), (1, calc.tan(30deg)))

          line(
            (30deg, 1),
            ((), "|-", (0, 0)),
            stroke: (paint: red),
            name: "sin",
          )
          content(("sin.start", 50%, "sin.end"), text(red)[$ sin alpha $])
          line("sin.end", (0, 0), stroke: (paint: blue), name: "cos")
          content(
            ("cos.start", 50%, "cos.end"),
            text(blue)[$ cos alpha $],
            anchor: "north",
          )
          line(
            (1, 0),
            (1, calc.tan(30deg)),
            name: "tan",
            stroke: (paint: orange),
          )
          content(
            "tan.end",
            $
              text(#orange, tan alpha) = text(#red, sin alpha) / text(#blue, cos alpha)
            $,
            anchor: "west",
          )
        },
      ),

      [Vektoraddition],
      block($
        F_"res" &= sqrt(F_1^2 + F_2^2 + 2 * F_1 * F_2 * cos(theta))
      $),
    )
  ],
  [

  ],
)
