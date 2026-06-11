/// Enables dark mode on document. Use it with `#show: dark`
///
/// - content (content): Document content
/// -> content
#let dark(content) = {
  set text(fill: rgb(240, 240, 240))
  set page(fill: rgb(24, 24, 24))

  show link: set text(fill: aqua)
  show ref: set text(fill: teal)

  set table(stroke: white)

  content
}
