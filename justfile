build_examples:
  typst compile --root . examples/trifold_example.typ examples/out/trifold_example.pdf
  typst compile --root . examples/trifold_large_map.typ examples/out/trifold_large_map.pdf
  typst compile --root . --format png examples/trifold_large_map.typ examples/out/trifold_large_map_{p}.png
