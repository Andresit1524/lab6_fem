#import "../snippets/calculations.typ": *

// Datos de cada resistencia
#let r_a = csv("/data/RA.csv")
#let r_b = csv("/data/RB.csv")
#let r_c = csv("/data/RC.csv")
#let r_d = csv("/data/RD.csv")

== Resultados

=== Teóricos y medidos con multímetro
Los resultados teóricos son los valores leidos de las 4 resistencias. Los valores obtenidos para cada una son:

$
  R_A & = 820 space upright(Omega) \
  R_B & = 2690 space upright(Omega) \
  R_C & = 6800 space upright(Omega) \
  R_D & = 2200 space upright(Omega)
$

También se midieron las resistencias directamente con un multímetro. Los valores obtenidos son:

$
  R_A & = 810 space upright(Omega) \
  R_B & = 2690 space upright(Omega) \
  R_C & = 6830 space upright(Omega) \
  R_D & = 2190 space upright(Omega)
$

=== Medidos con el puente y calculados
Las mediciones de las longitudes del puente de Wheatstone y los valores de $R_X$ calculados usando la @eq2_rx_using_l1-l2 se describen en las siguientes tablas para cada resistencia de la $R_A$ a la $R_D$.

#columns(2)[
  #figure(caption: [Resultados para la resistencia $R_A$])[
    #table(
      columns: r_a.at(0).len() + 1,
      align: center,
      inset: .6em,
      table.header(..(r_a.at(0).map(it => [*#it*])), [*RA*]),
      ..(
        r_a
          .slice(1)
          .map(
            it => (it, [#rx(it.at(1), it.at(2), it.at(0))]),
          )
      ).flatten()
    )
  ]

  #colbreak()

  #figure(caption: [Resultados para la resistencia $R_B$])[
    #table(
      columns: r_b.at(0).len() + 1,
      align: center,
      inset: .6em,
      table.header(..(r_b.at(0).map(it => [*#it*])), [*RB*]),
      ..(
        r_b
          .slice(1)
          .map(
            it => (it, [#rx(it.at(1), it.at(2), it.at(0))]),
          )
      ).flatten()
    )
  ]

  #colbreak()

  #figure(caption: [Resultados para la resistencia $R_C$])[
    #table(
      columns: r_c.at(0).len() + 1,
      align: center,
      inset: .6em,
      table.header(..(r_c.at(0).map(it => [*#it*])), [*RC*]),
      ..(
        r_c
          .slice(1)
          .map(
            it => (it, [#rx(it.at(1), it.at(2), it.at(0))]),
          )
      ).flatten()
    )
  ]

  #colbreak()

  #figure(caption: [Resultados para la resistencia $R_D$])[
    #table(
      columns: r_d.at(0).len() + 1,
      align: center,
      inset: .6em,
      table.header(..(r_d.at(0).map(it => [*#it*])), [*RD*]),
      ..(
        r_d
          .slice(1)
          .map(
            it => (it, [#rx(it.at(1), it.at(2), it.at(0))]),
          )
      ).flatten()
    )
  ]
]
