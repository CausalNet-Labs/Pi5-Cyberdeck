# Manual Index

The full manual is split into 15 chapters, converted from the integrated
engineering manual PDF. Each chapter opens with its corresponding blueprint
plate (see `assets/diagrams/`).

| # | Chapter | Coverage |
|---|---------|----------|
| 1 | [Planning & Scope](chapters/01-planning-and-scope.md) | Objectives, constraints, tradeoffs, milestones, risk register |
| 2 | [Tools & Bill of Materials](chapters/02-tools-and-bill-of-materials.md) | Complete toolkit, locked BOM, substitution matrix, procurement tiers |
| 3 | [Raspberry Pi 5 Platform](chapters/03-raspberry-pi-5-platform.md) | Architecture, power, thermals, PCIe/NVMe theory, bench validation |
| 4 | [Enclosure Engineering](chapters/04-enclosure-engineering.md) | Measurement methodology, tolerance stack-up, paper templates |
| 5 | [Fabrication](chapters/05-fabrication.md) | Cut sequencing, relief holes, finishing, mistake recovery |
| 6 | [Mechanical Assembly](chapters/06-mechanical-assembly.md) | Display, Pi stack, keyboard mounting; fastener protocol |
| 7 | [Electrical Integration](chapters/07-electrical-integration.md) | Power topology, wiring zones, battery-ready routing |
| 8 | [Cooling & Thermal Management](chapters/08-cooling-and-thermal-management.md) | Airflow mapping, assembled thermal testing, diagnostics |
| 9 | [Software Installation](chapters/09-software-installation.md) | OS imaging, NVMe boot, SSH, security baseline |
| 10 | [Development Environment](chapters/10-development-environment.md) | Git, Python, Docker, VS Code, OpenAELM workflow |
| 11 | [Field Testing & Validation](chapters/11-field-testing-and-validation.md) | Acceptance criteria, transport and stress testing |
| 12 | [Maintenance & Repair](chapters/12-maintenance-and-repair.md) | Inspection schedule, SSD health, repair procedures |
| 13 | [Upgrade Paths](chapters/13-upgrade-paths.md) | Battery, panel I/O, GPIO, AI accelerator constraints, roadmap |
| 14 | [Troubleshooting Reference](chapters/14-troubleshooting-reference.md) | Symptom-first decision trees for boot, power, thermal faults |
| 15 | [Appendices](chapters/15-appendices.md) | Command reference, worksheets, glossary, build log templates |

## About this conversion

These chapters were auto-converted from `Pi5_Cyberdeck_Engineering_Manual_V2_Integrated.pdf`
(text extraction + heuristic reflow of headings, tables, bullet lists, and
shell command blocks). Most content converted cleanly, but a few large,
multi-line tables — notably the fault table in
[Chapter 14](chapters/14-troubleshooting-reference.md#142-common-failures-table) —
have minor row-alignment artifacts inherited from the PDF's layout. The text
itself is complete and unaltered; only some table row grouping may need a
manual touch-up. Cross-check against the source PDF if a table looks off.

Printable worksheets referenced in Chapter 15 are also available standalone
in [`templates/`](../templates/) for anyone who just wants the checklists
without the full manual.
