#import "@preview/cetz:0.3.1"

#let vektorer = cetz.canvas(
  length: 3cm,
  {
    import cetz.draw: *

    set-style(
      mark: (fill: black, scale: 1),
      angle: (
        radius: 0.3,
        label-radius: .22,
        fill: orange.lighten(80%),
      ),
      content: (padding: 5pt),
    )

    line((0, 0), (1.5, 0), mark: (end: "stealth"))
    content((), $ x $, anchor: "west")
    line((0, 0), (0, 1.0), mark: (end: "stealth"))
    content((), $ y $, anchor: "south")

    cetz.angle.angle(
      (0, 0),
      (1, 0),
      (1, calc.tan(30deg)),
      label: $theta$,
      radius: 2em,
    )

    // F_R
    line(
      (0, 0),
      (1, calc.tan(30deg)),
      name: "F_R",
      stroke: 1.5pt,
      mark: (end: ">"),
    )
    content(
      "F_R.mid",
      $ F_R $,
      angle: "F_R.end",
      anchor: "south",
    )

    line(
      (1, 0),
      (1, calc.tan(30deg)),
      name: "F_y",
      stroke: (paint: maroon),
    )
    content(
      "F_y.mid",
      $ F_y $,
      anchor: "west",
    )

    line(
      (0, 0),
      (1, 0),
      name: "F_x",
      stroke: (paint: blue),
    )
    content(
      "F_x.mid",
      $ F_x $,
      anchor: "north",
    )
  },
)
