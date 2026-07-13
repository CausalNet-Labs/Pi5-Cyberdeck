# Pi 5 Cyberdeck — Engineering Manual

A general-purpose portable Linux workstation built into an Apache 2800 case: Raspberry Pi 5,
8″ capacitive touch display, and a 60% mechanical keyboard. Not limited to coding — see Chapter
1.9 for the full capabilities and potential list.

## Chapters

| Ch. | Title | Coverage |
|---|---|---|
| 1 | [Planning & Scope](chapters/01-planning-and-scope.md) | Objectives, constraints, milestones, risk register, capabilities & potential |
| 2 | [Tools & Bill of Materials](chapters/02-tools-and-bill-of-materials.md) | Toolkit, locked BOM, substitution matrix, procurement tiers |
| 3 | [Raspberry Pi 5 Platform](chapters/03-raspberry-pi-5-platform.md) | Architecture, power, thermals, PCIe/NVMe theory, bench validation |
| 4 | [Enclosure Engineering](chapters/04-enclosure-engineering.md) | Measurement methodology, tolerance stack-up, paper templates |
| 5 | [Fabrication](chapters/05-fabrication.md) | Cut sequencing, relief holes, finishing, mistake recovery |
| 6 | [Mechanical Assembly](chapters/06-mechanical-assembly.md) | Display, Pi stack, keyboard mounting, fastener protocol |
| 7 | [Electrical Integration](chapters/07-electrical-integration.md) | Power topology, wiring zones, battery-ready routing |
| 8 | [Cooling & Thermal Management](chapters/08-cooling-and-thermal-management.md) | Airflow mapping, assembled thermal testing, diagnostics |
| 9 | [Software Installation](chapters/09-software-installation.md) | OS imaging, NVMe boot, SSH, security baseline |
| 10 | [Development Environment](chapters/10-development-environment.md) | Git, Python, Docker, VS Code, general-purpose project workflow |
| 11 | [Field Testing & Validation](chapters/11-field-testing-and-validation.md) | Acceptance criteria, transport and stress testing |
| 12 | [Maintenance & Repair](chapters/12-maintenance-and-repair.md) | Inspection schedule, SSD health, repair procedures |
| 13 | [Upgrade Paths](chapters/13-upgrade-paths.md) | Battery, panel I/O, GPIO, AI accelerator constraints, roadmap |
| 14 | [Troubleshooting Reference](chapters/14-troubleshooting-reference.md) | Symptom-first decision trees for boot, power, thermal faults |
| 15 | [Appendices](chapters/15-appendices.md) | Command reference, worksheets, glossary, build log templates |
| 16 | [Finished Product](chapters/16-finished-product.md) | Assembled overview, layout schematic, interactive 3D model |

## Assets

- `assets/diagrams/assembled-layout-schematic.svg` — labeled containment diagram of the finished device (referenced in Chapter 16.2)
- `assets/models/Pi5_Cyberdeck_3D_Model.html` — standalone, rotatable 3D model (referenced in Chapter 16.3); open directly in any browser, no install needed

## Build philosophy

Measure your own parts, test on the bench before you test in the case, and never make a cut you
haven't rehearsed with a paper template. No fixed case-interior or display-bezel dimensions
appear anywhere in this manual as printed fact — those come from your own calipers against your
own physical parts (see Chapter 4.2).
