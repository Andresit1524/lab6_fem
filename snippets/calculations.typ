/// Calcula la resistencia usando puente de Wheatstone
///
/// - l1 (str)
/// - l2 (str)
/// - r3 (str)
/// -> float
#let rx(l1, l2, r3) = calc.round(
  float(l2) / float(l1) * float(r3),
  digits: 3,
)
