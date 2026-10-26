# Labels: what upstream has, what RFC-0007 adds, what LightCraft needs

Fork-only working note (2026-10-23). Sources: the labels page of storytold/lightcraft (24 labels, read 2026-10-23),
craft-contrib RFC-0007 "Triage, labels and priority" (open PR #8, not merged), upstream `docs/gaps.md` (updated
2026-10-21) and `ROADMAP.md`. We are Contributors: we cannot create or set labels upstream. This file (1) tells our
sessions how to read and use labels, (2) holds the proposal to the maintainers, which is posted only after the
owner's go.

## 1. Labels upstream already has (24)
| Group | Labels | Meaning (RFC-0007 where it defines one) |
|---|---|---|
| Type | `bug`, `enhancement`, `roadmap`, `documentation`, `question` | `roadmap` = "something we want to build" |
| Priority | `priority: critical` / `high` / `medium` / `low` | RFC-0007 §3 (below) |
| Triage | `duplicate`, `regression`, `needs info`, `multiple issues`, `shared`, `support`, `no action needed`, `invalid`, `wontfix` | `duplicate` links the earlier issue; `needs info` = missing steps / version / OS / sample file; `multiple issues` = split it; `shared` = several apps |
| Work state | `in progress`, `good first issue`, `help wanted` | |
| Bots | `dependencies`, `github_actions`, `rust` | Dependabot |

**Priority (RFC-0007 §3)**: impact (lost work > crash/hang > broken tool > wrong output > cosmetic) × reachability
(normal workflow > unusual file; a file someone can send you still counts) × evidence (code-reading findings start one
level lower until reproduced) × workaround (easy one → one level lower).
critical = lost work / crash in a normal workflow, core-tool regression, reproduced crash from a sendable file ·
high = core tool broken, corruption with unusual files · medium = workaround exists, layout, one-language bug ·
low = cosmetic, internal, test-only.

## 2. Missing upstream (RFC-0007 adds them; tier 1, ask for these first)
| Label | Meaning |
|---|---|
| `already fixed` | no longer happens on `main`; the fixing commit / PR is linked |
| `difficulty: trivial` | a line or two, cause obvious |
| `difficulty: easy` | clear cause found in the code, fix in one place, plus a test |
| `difficulty: medium` | several files or one subsystem; cause needs investigation |
| `difficulty: hard` | design work, a new subsystem, real data / hardware needed, or a format with no public sample |

`good first issue` stays as the GitHub convention; `difficulty: easy` is its triage form.

## 3. LightCraft-specific (tier 2, from `docs/gaps.md` and `ROADMAP.md`)
Today an issue can't be tied to a gap or to the beta from the issue list: `docs/gaps.md` ranks 29 gaps and marks 8 as
beta blockers (`B`), `ROADMAP.md` splits work into dimensions and feature areas, but none of it shows on issues.

| Label | Covers (gaps.md #) | ROADMAP line |
|---|---|---|
| `beta blocker` | 1, 2, 3, 5, 6, 8, 9, 10 (every `B` gap) and any bug that blocks them | Upcoming 1–9 |
| `area: raw` | 2 CR3, 6 ORF, 7 HE NEF, 10 per-model, 20 long tail | RAW decoding and camera coverage |
| `area: colour` | 1 camera colour, 3 render fidelity | Colour, camera profiles, render fidelity |
| `area: lens` | 8 lens profiles | Optics, lens profiles, crop and geometry |
| `area: develop` | (no gap; global sliders, presets, sync) | Global develop adjustments; Presets… |
| `area: masking-ai` | 5 AI masks, 11 Enhance / denoise, 12 remove, 24 brush feel | Masking; Remove, heal, Enhance; AI features |
| `area: library` | 13 Lightroom catalog migration, import, collections | Import and library |
| `area: export-formats` | 25 file writes, export, DNG | Export; File formats (non-raw) |
| `area: hdr` | 14 HDR display, 29 HDR merge | Merge and HDR |
| `area: classic-modules` | 15 Print, 16 Map / Book / Slideshow / publish, 17 tethering, 19 plug-ins | Classic output modules; Ecosystem |
| `area: video` | 18 | Video |
| `area: ui` | 23 accessibility, 28 shortcuts, views / compare / culling | UI/UX fidelity; Views… |
| `area: localization` | 21 | Localization / Languages |
| `area: platform` | 9 CI on macOS / Windows / Linux, 22 tablets / monitors, 27 Windows / Linux runtime, web | Platforms; Hardware |
| `area: performance` | 26 | Performance |

Two more that LightCraft's own rules make worth a label:
- `crash` — any panic, hang or lost edit. `CLAUDE.md` says "Never crash" outranks feature work; the label lets
  anyone list them in one click (priority alone mixes them with broken tools).
- `needs sample` — a raw / format issue that can't move without a file (most of gaps 2, 6, 7, 10, 20). Narrower than
  `needs info`: the report is complete, the file is missing. Tells camera owners where they can help.

Rejected: one label per gap number (29 labels, renumbered when gaps close: put `gap N` in the issue body instead);
one label per camera maker (title and body carry it; `area: raw` is enough to filter).

## 4. How our sessions use them (now, without upstream labels)
- Each ledger line in `.fork/TODO.md` for upstream work carries a tag block:
  `{bug|feature · difficulty · area · priority · B?}`, e.g. `{bug · easy · ui · medium}` or
  `{feature · hard · raw · high · B}`. Use the definitions above; priority follows RFC-0007 §3.
- When picking work: free issues first by `beta blocker`, then priority, then the difficulty that fits the session
  (cloud: no real data, so `needs sample` and Mac-only checks go to `MAC-HANDOFF.md`).
- In reviews and triage tables (`.fork/*.md`), use the same words so a later proposal maps one-to-one.

## 5. Draft for the maintainers (EN, post only after the owner's go)
Where: a comment on the "Round 3 integration plan" issue or Discord to @aiongg; not a new issue (RFC-0007 is still
open in craft-contrib and may change the names).

> Following craft-contrib RFC-0007 (#8 there), could LightCraft add the labels the RFC introduces — `already fixed`
> and `difficulty: trivial / easy / medium / hard` — plus a few tied to `docs/gaps.md`: `beta blocker` (the gaps
> marked B), `crash`, `needs sample` (raw / format issues blocked on a file), and `area: …` labels matching the gap
> kinds and ROADMAP areas (raw, colour, lens, develop, masking-ai, library, export-formats, hdr, classic-modules,
> video, ui, localization, platform, performance). Contributors could then pick free beta work from the issue list
> instead of cross-reading gaps.md. Happy to do a first pass of suggestions on open issues if useful.
