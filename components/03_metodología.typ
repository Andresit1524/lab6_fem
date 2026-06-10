== Metodología

=== Materiales
Para el desarrollo de la practica se usarán los siguientes materiales:

+ *Puente de Wheatstone*
+ Resistencia variable
+ Resistencias comunes, las que se van a medir
+ Fuente de voltaje
+ Galvanómetro

#figure(caption: "Fotografía del circuito de la práctica")[
  #image("/images/disposición.png", width: 75%)
] <figura_2_foto>

=== Procedimiento
De este circuito, y comparando con la disposición de la @figura_1_circuito, podemos ver que las resistencias son las siguientes:

- $R_1$ y $R_2$ son las dos partes del puente de Wheatstone y son variables
- $R_3$ es la de la caja de resistencias, es variable
- $R_x$ es la resistencia del juego de 4, y es la resistencia a medir

// TODO: foto del juego de resistencias

Dadas las 4 resistencias a medir, por evitar confusiones, las denotaremos de la $A$ a la $D$. Por cada una:

+ Conectamos cada resistencia en la posición de $R_X$
+ Colocamos la resistencia de la caja de resistencias en un valor, por ejemplo $5 space upright(Omega)$
+ Movemos el puente de Wheatstone hasta que el galvanómetro nos marque una corriente de $0 "mA"$
+ Medimos las longitudes de los dos segmentos de alambre, $L_1$ y $L_2$
+ Repetimos los pasos 2 a 4 con más valores de la resistencia variable
+ Hacemos el cálculo teórico para $R_X$ en cada caso y sacamos un promedio
