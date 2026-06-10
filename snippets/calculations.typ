/// Calcula la resistencia usando puente de Wheatstone. La fórmula es $display(R_X = L_2/L_1 R_3)$
///
/// - l1 (str):
/// - l2 (str):
/// - r3 (str):
/// -> float
#let rx(l1, l2, r3) = calc.round(
  float(l2) / float(l1) * float(r3),
  digits: 3,
)
