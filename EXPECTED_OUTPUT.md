# Expected output

Running:

```bash
rv scan bom/bom.csv --out .architon/architon-report.json
```

Should produce a JSON report with:

- `summary.source = "kicad_bom_csv"`
- `summary.parse_errors_count = 0`
- `design_ir.parts` populated
- optional parse warnings if some recommended BOM fields are missing

If CI fails, it’s usually one of:
- Architon module install path changed
- CLI name changed
- report schema/version changed incompatibly
