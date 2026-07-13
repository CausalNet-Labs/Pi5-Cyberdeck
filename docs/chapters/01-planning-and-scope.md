# Chapter 1: Planning & Scope

**Learning objectives:** Define what this machine is for, translate that into concrete design constraints, and set up a project-tracking system that survives the whole build.  
**Tools & materials:** Notebook or note-taking app; nothing physical required yet.  
**Estimated time:** 1–2 hours

![Plate 2 — Chapter 1](../../assets/diagrams/plate-001.png)
*Plate 2, Chapter 1: Planning & Scope*

## 1.1 Project Objectives

The stated purpose of this build is a portable Linux development workstation centered on the OpenAELM framework, general software development, Docker-based workflows, Git, SSH, and lightweight local AI experimentation. Every design decision in this manual is weighed against that purpose — this is why the manual consistently favors keyboard quality, thermal headroom, and serviceability over thinness or minimum weight.

## 1.2 Use Cases

- Primary: a self-contained coding station usable at a desk or on the road without a laptop
- Secondary: a portable SSH/administration terminal for managing remote servers or homelab equipment
- Tertiary: a lightweight local AI experimentation rig, bounded by the Pi 5's compute envelope — not a substitute for GPU-class inference, but sufficient for small models and framework development against OpenAELM

## 1.3 Design Constraints

| Constraint | Driven by | Implication for the build |
|---|---|---|
| Fixed enclosure volume | Apache 2800 interior | Every component placement is a packing problem — plan airflow and cable paths before cutting |
| Fixed compute thermal | Pi 5 + Active Cooler | Fan intake/exhaust paths are non-negotiable design constraints, not |
| envelope |  | afterthoughts |
| No battery in baseline build | Locked hardware spec | Mains/USB-C power only for V1; battery is a Chapter 13 upgrade path |
| Reversibility of software, | NVMe boot design | Software mistakes are recoverable by reflashing; case cuts are not — |
| not hardware |  | this asymmetry drives the chapter order |

## 1.4 Tradeoff Analysis

The two tradeoffs worth naming explicitly before you start: keyboard feel versus footprint (the Huntsman Mini's 60% layout trades away a numpad and function row for a compact chassis that fits inside a rugged case), and cooling versus sealing (any enclosure that fully seals against dust also restricts airflow — this build accepts some open venting as the better tradeoff for a device that will run sustained development workloads).

## 1.5 Success Criteria

- Boots reliably from NVMe with no external storage
- Sustains a full development session (editor, containers, terminal multiplexer) without thermal throttling
- Survives normal transport (closed lid, bag carry) without cable stress or component shift
- Can be opened for maintenance without destructive disassembly

## 1.6 Project Milestones

| Milestone | Chapters | Gate before proceeding |
|---|---|---|
| Bench-validated compute core | 2–3 | Boots from NVMe, passes stress test, no throttling |
| Confirmed-fit enclosure plan | 4 | Paper templates close cleanly in the case |
| Cut and finished enclosure | 5 | Display test-fits the opening with no pinching |
| Fully assembled hardware | 6–8 | Passes the one-hour operational test |
| Working software environment | 9–10 | Full dev workflow verified end-to-end |
| Field-ready device | 11 | Passes acceptance criteria under real use |

## 1.7 Build Journal Template

Use this structure for every entry in your build journal (paper or digital):

- Date and chapter/section reference
- What you measured (with the actual number, tool used, and which part revision)
- What you changed from the plan, and why
- Photo reference (filename or description)
- Open questions / things to verify before the next irreversible step

## 1.8 Risk Register

| Risk | Likelihood | Mitigation |
|---|---|---|
| Cut opening too large for display | Medium | Paper template dry-fit in Ch.4 before any plastic is cut |
| Insufficient airflow causes throttling | Medium | Bench stress-test in Ch.2, re-test assembled in Ch.8/11 |
| Cable fatigue at hinge over time | Medium–High with heavy use | Deliberate service loop, inspected on the maintenance schedule (Ch.12) |
| NVMe SSD physical size mismatch | Low if checked | Confirm SSD form factor against HAT+ documentation before Ch.3 |
| with HAT+ tray | early |  |
| Case batch dimensions differ from | Medium | This manual never prints case dimensions as fact — always measure |
| expectation |  | your unit |

Chapter Summary

- The build's purpose (OpenAELM/dev workstation) should drive every design decision that follows.
- Design constraints and tradeoffs are fixed by the locked hardware spec and the Apache 2800's finite volume.
- A milestone gate system prevents moving to irreversible steps before validation.

Cross-references: See Chapter 4 for enclosure measurement methodology, Chapter 11 for acceptance testing against these success criteria.
