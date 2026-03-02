# Architon KiCad BOM Demo

This repository is a minimal, reproducible demo of **Architon** scanning a **KiCad BOM CSV** and producing a deterministic JSON report.

What this demo proves (today):
- KiCad BOM CSV ingestion works
- A deterministic **DesignIR** JSON report is produced
- The workflow is automation-friendly (CI can run it)

What this demo does **not** claim (yet):
- Full schematic/netlist verification
- `rv scan .` project auto-discovery
- KiCad plugin integration

## Quickstart (local)

Prereqs:
- macOS / Linux
- Go installed (for `go install`), or install Architon via releases if you prefer

Install Architon CLI:

```bash
go install github.com/badimirzai/architon-cli@latest
```

Run scan:

```bash
rv scan bom/bom.csv --out .architon/architon-report.json
```

Inspect the report:

```bash
cat .architon/architon-report.json
```

## What’s in this repo

- `bom/bom.csv`  
  Exported from KiCad (Schematic Editor → Symbol Fields Table → Export CSV)

- `.architon/architon-report.json`  
  A reference report produced by running `rv scan` on the BOM

- `.github/workflows/architon.yml`  
  Runs `rv scan` on every push/PR

## Notes on “warnings”

If your BOM is missing optional/recommended fields (like Footprint for passives), Architon may emit parse warnings.
That’s fine for a demo, but if you want a “clean” demo output, assign footprints in KiCad before exporting the BOM.

## License

This demo repo is intended as an example project. Use any license you prefer for the repository itself.
Architon CLI is licensed separately in its own repository.
