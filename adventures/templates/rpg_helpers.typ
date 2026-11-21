#let make_roll_table(header, values, columns: (auto, 5fr)) = {
  let i = 1
  let row = 0
  let table_cells = {
    for value in values {
      i = i + 1
      ([#i], value)
    }.flatten()
  }
  table(
    columns: columns,
    table.header(
      [d#(values.len() + 1)], header
    ),
    table.hline(),
    ..table_cells,
    table.hline(),
  )
}
