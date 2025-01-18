#import "@preview/touying:0.5.5": *
#import themes.metropolis: *

#let accent-color = rgb("#ff0")
#let foreground-color = rgb("#fff")

#let svg-invert(path, alignment: auto) = {
  set align(alignment)
  image.decode(
    read(path).replace(
      "<svg",
      "<svg filter='invert(1)'",
    ),
  )
}

#show: metropolis-theme.with(
  footer-right: none,
  config-info(
    title: text(size: 2em)[Vridmoment],
    subtitle: [Mekanik (MEKMEK01)],
    date: datetime.today(),
  ),
  config-colors(
    primary: accent-color, // accents
    secondary: accent-color.darken(10%).desaturate(45%), // header
    neutral-lightest: rgb("#222"), // background
    primary-light: rgb("#aaa"), // progress bar?
    neutral-darkest: foreground-color, // text
    neutral-dark: foreground-color.darken(30%),
  ),
)

#set text(
  font: "Atkinson Hyperlegible",
  lang: "sv",
)

#title-slide()

= Repetition
---
== Jämviktsproblem

#align(
  center,
  image("jämvikt_bil.svg"),
)
#pause
$
  "konstant hastighet (eller stillastående)" &=> "jämvikt."\
  "jämvikt" &=> "summa av krafter är noll"
$
#pause
Båda leder till varandra!

= Vridmoment
---
== Vad är vridmoment?
#image("byt_däck.jpg")
---
#svg-invert("enkel_nyckel.svg", alignment: center)
