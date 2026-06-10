/// Get a column from a previously read CSV file and return it as a float array. If the CSV has
/// headers, you can omit those with `trim_header`.
///
/// - file (array): Content to read (use `csv` before)
/// - col (int): Column to extract (0-based)
/// - trim_header (bool): Trim the header element, assuming it is the first value
///
/// -> array
#let get_csv_float_col(file, col, trim_header: false) = {
  // Filter header
  let content = if trim_header { file.slice(1) } else { file }

  content.map(it => {
    // Verify that the value exists and is not empty
    let val = if it.at(col) != none { str(it.at(col)).trim() } else { "" }

    if val != "" { float(val) } else { 0 }
  })
}
