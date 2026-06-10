#let style(project) = {
  set text(font: "Cambria", size: 11pt, lang: "es")
  show math.equation: set text(font: "Cambria Math", size: 11pt)

  show link: set text(fill: blue)
  show ref: set text(fill: navy)

  show heading: set block(above: 1.5em, below: 1em)
  show heading.where(level: 1): set align(center)
  show heading.where(level: 1): set text(1.3em)
  show heading.where(level: 2): set text(1.2em)
  show heading.where(level: 3): set text(1.1em)
  show heading.where(level: 2): set align(center)
  // show heading.where(level: 2): it => {
  //   pagebreak(weak: true)
  //   it
  // }

  project
}

// Callout
#let callout(color: rgb("#ffffff00"), body) = rect(
  width: 100%,
  fill: color,
  stroke: 1pt,
  radius: 1em,
  inset: 1em,
  body,
)
