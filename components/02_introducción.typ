#import "@preview/mannot:0.3.3": markrect
#let boxed = markrect.with(outset: 0.2em)

== Introducción

=== El puente de Wheatstone
El puente de Wheatstone es un circuito que nos permite determinar la resistencia de un componente cuando no lo conocemos. Fue inventado por Samuel Hunter Christie en 1833 y perfeccionado por Charles Wheatstone en 1843, por eso su nombre.

El circuito es el siguiente.

#figure(caption: "Circuito del puente de Wheatstone")[
  #image("/images/circuito.png", width: 50%)
] <figura_1_circuito>

La segunda resistencia ($R_2$) es variable, lo cual necesitaremos más tarde.

=== Fundamento teórico del sistema
El objetivo del puente de Wheatstone es calcular $R_X$. Sabemos que la corriente que sale de la fuente pasa por dos caminos:

+ Por las resistencias $R_1$ y $R_2$. Llamaremos a esta corriente $I_A$
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

#set math.equation(numbering: "(1)")

$
  cancel(V)/(R_1 + R_2) R_1 & = cancel(V)/(R_3 + R_X) R_3 \
            R_1/(R_1 + R_2) & = R_3/(R_3 + R_X) \
            R_1 (R_3 + R_X) & = R_3 (R_1 + R_2) \
            R_1 (R_3 + R_X) & = R_3 R_1 + R_3 R_2 \
          cancel(R_3) + R_X & = cancel(R_3) + (R_3 R_2)/R_1 \
                        R_X & = boxed((R_2 R_3)/R_1) \
$ <eq1_rx_using_r1_r2>

#set math.equation(numbering: none)

Obteniendo así la ecuación para obtener la resistencia desconocida dadas las demás. Pero por supuesto, recordemos que esto implica variar $R_2$ para lograr ese equilibrio. ¿Cual es el valor de esa resistencia?

=== Resistencia de un alambre
La resistencia 2, que es parte del puente de Wheatstone, usa un contacto deslizandose sobre un alambre, como se puede ver en la @figura_2_foto. Este alambre, separado por el contacto *cumple el rol de $R_1$ y $R_2$, de hecho*, y los valores de estos se basan en la longitud de longitud de los alambres. La resistencia de un alambre de longitud $L$ es:

$
  R = rho/A L
$

Donde $rho$ es la resistividad del alambre y $A$ es el área transversal de la misma. Asumiendo que la resistividad y el área transversal del alambre es uniforme tenemos:

$
  R_1 & = rho/A L_1, quad R_2 & = rho/A L_2
$

Y los sustituimos en la @eq1_rx_using_r1_r2 para calcular $R_X$:

#set math.equation(numbering: "(1)")

$
  R_X & = (R_2 R_3)/R_1 \
  R_X & = (cancel(display(rho/A)) L_2 R_3)/(cancel(display(rho/A)) L_1) \
  R_X & = boxed(L_2/L_1 R_3) \
$ <eq2_rx_using_l1-l2>

#set math.equation(numbering: none)

Por lo que atenderemos a esta fórmula para calcular $R_X$ de ahora en adelante.

Al final vemos que lo importante es cumplir un equilibrio de corrientes, independientemente de cuales resistencias son fijas y cuales son variables.
