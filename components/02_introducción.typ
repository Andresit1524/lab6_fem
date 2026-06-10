#import "@preview/mannot:0.3.3": markrect
#let boxed = markrect.with(outset: 0.2em)

== Introducción

=== ¿Qué es el puente de Wheatstone?
El puente de Wheatstone es un circuito que nos permite determinar la resistencia de un componente cuando no lo conocemos. Fue inventado por Samuel Hunter Christie en 1833 y perfeccionado por Charles Wheatstone en 1843, por eso su nombre.

El circuito es el siguiente.

#figure(caption: "Circuito del puente de Wheatstone")[
  #image("/images/circuito.png", width: 50%)
] <figura_1_circuito>

La segunda resistencia ($R_2$) es variable, lo cual necesitaremos más tarde.

=== Fundamento teórico del sistema
El objetivo del puente de Wheatstone es calcular $R_X$. Sabemos que la corriente que sale de la fuente pasa por dos caminos:

+ Por las resistencias $R_1$ y $R_2$. Llamaremos a esta corriente $I_B$
+ Por las resistencias $R_3$ y $R_X$. Llamarmos a esta corriente $I_B$

Si variamos $R_2$ para que las corrientes se equlibren, obtenemos que $I_A = I_B$ y por ende ninguna corriente pasa por el galvanómetro, por equilibrio de voltajes. Y el voltaje en ambos caminos siempre es el mismo porque forman mallas cerradas y independientes, con la fuente.

$
      V_A & = V_B = V \
  I_A R_1 & = I_B R_3
$

Entonces la corriente de cada rama es, por ley de Ohm:

$
  I_A & = V/(R_1 + R_2) \
  I_B & = V/(R_3 + R_X)
$

#pagebreak(weak: true)

Igualando y desarrollando:

$
  V/(R_1 + R_2) R_1 & = V/(R_3 + R_X) R_3 \
    R_1/(R_1 + R_2) & = R_3/(R_3 + R_X) \
    R_1 (R_3 + R_X) & = R_3 (R_1 + R_2) \
    R_1 (R_3 + R_X) & = R_3 R_1 + R_3 R_2 \
          R_3 + R_X & = R_3 + (R_3 R_2)/R_1 \
                R_X & = boxed((R_2 R_3)/R_1) \
$

Obteniendo así la ecuación para obtener la resistencia desconocida con las demás. Pero por supuesto, recordemos que esto implica variar $R_2$ para lograr ese equilibrio. ¿Cual es el valor de esa resistencia?

=== Resistencia de un alambre
Para la resistencia 2, vamos a usar un contacto deslizandose sobre un alambre, como se puede ver en la @figura_2_foto.

// ! Esta parte está pendiente
