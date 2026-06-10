#let r1 = csv("/data/r1.csv")
#let r2 = csv("/data/r2.csv")
#let r3 = csv("/data/r3.csv")

== Resultados

#columns(3)[
  #figure(caption: "Resultados para la primer resistencia")[
    #table(
      columns: r1.at(0).len(),
      align: center,
      inset: .6em,
      table.header(..r1.at(0).map(it => [*#it*])),
      ..r1.slice(1).flatten(),
    )
  ]

  #colbreak()

  #figure(caption: "Resultados para la segunda resistencia")[
    #table(
      columns: r2.at(0).len(),
      align: center,
      inset: .6em,
      table.header(..r2.at(0).map(it => [*#it*])),
      ..r2.slice(1).flatten(),
    )
  ]

  #colbreak()

  #figure(caption: "Resultados para la tercer resistencia")[
    #table(
      columns: r3.at(0).len(),
      align: center,
      inset: .6em,
      table.header(..r3.at(0).map(it => [*#it*])),
      ..r3.slice(1).flatten(),
    )
  ]
]
