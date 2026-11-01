# LightCraft open PRs, ordered by roadmap

Snapshot 2026-10-23, upstream main @ 91fcaaac, **523 open PRs**. Ordered by intent only (no code review): `docs/gaps.md` rank with beta blockers (B) first, then ROADMAP lines without a gap, then the rest by linked-issue priority. PRs that say `Fixes #N` take the gap / area / priority of the issue (see the issue file in this gist).

**CodeRabbit state on the current head**: cleared = reviewed, no unresolved actionable thread; stale = last review on an older commit; read through review-thread resolution (MCP) and REST.

| State | PRs |
|---|---:|
| not-reviewed | 227 |
| stale | 151 |
| cleared | 77 |
| open-threads (1) | 37 |
| open-threads (2) | 8 |
| open-threads (3) | 6 |
| open-threads (5) | 6 |
| open-threads (7) | 4 |
| open-threads (4) | 4 |
| open-threads (6) | 2 |
| open-threads (9) | 1 |

`batched` = already carried by an open integration PR ([#2689](https://github.com/storytold/lightcraft/pull/2689) round 3a, [#1441](https://github.com/storytold/lightcraft/pull/1441) batch 34, open since mid-October, conflicted, never merged): they close if that batch merges.

## 1. Ready to look at: cleared by CodeRabbit, not batched, no conflict, not draft

50 PRs.

### Gap 1: Camera colour (B)

| Rank | PR | Intent | Issues | Priority |
|---:|---|---|---|---|
| 10 | [#807](https://github.com/storytold/lightcraft/pull/807) | Guard and refine DNG camera-preview fitting | - | - |
| 16 | [#2664](https://github.com/storytold/lightcraft/pull/2664) | Read Canon CR3/CR2 preview colour space from the maker note (#2654) | - | - |

### Gap 10: Per-model raw verification (B)

| Rank | PR | Intent | Issues | Priority |
|---:|---|---|---|---|
| 84 | [#2698](https://github.com/storytold/lightcraft/pull/2698) | AHD blends its candidates where noise alone would pick one, no maze in noisy raws (#2094) | #2094 | high |

### Gap 20: Long-tail raw formats

| Rank | PR | Intent | Issues | Priority |
|---:|---|---|---|---|
| 135 | [#1305](https://github.com/storytold/lightcraft/pull/1305) | DNG: decode 12-bit DCT JPEG tiles under compression 7 (Blackmagic) (#1278) | #1278 | low |

### Gap 21: Localization

| Rank | PR | Intent | Issues | Priority |
|---:|---|---|---|---|
| 143 | [#2110](https://github.com/storytold/lightcraft/pull/2110) | Hebrew file and folder names get glyphs (part of #1915) | #1915 | medium |
| 149 | [#2395](https://github.com/storytold/lightcraft/pull/2395) | Ship the craft-fonts faces beside the WASM so the web release can use craft-fonts | - | - |
| 154 | [#2703](https://github.com/storytold/lightcraft/pull/2703) | A UI string missing from a catalog fails the tests (today's gaps listed) | - | - |

### Gap 22: Pen pressure, monitor profiles

| Rank | PR | Intent | Issues | Priority |
|---:|---|---|---|---|
| 167 | [#2439](https://github.com/storytold/lightcraft/pull/2439) | On Windows, previews follow the monitor's colour profile | - | - |

### Gap 24: Brush preview and masking feel

| Rank | PR | Intent | Issues | Priority |
|---:|---|---|---|---|
| 168 | [#2639](https://github.com/storytold/lightcraft/pull/2639) | With the mask overlay hidden, the stroke being painted no longer tints the photo (#2549) | #2549 | low |

### Gap 26: Performance at scale

| Rank | PR | Intent | Issues | Priority |
|---:|---|---|---|---|
| 179 | [#2415](https://github.com/storytold/lightcraft/pull/2415) | Big views list from a kept sort order instead of sorting every photo | - | - |
| 194 | [#800](https://github.com/storytold/lightcraft/pull/800) | The log is compacted by the snapshot's size, not every 2000 records | - | - |

### Gap 28: Small Classic shortcuts

| Rank | PR | Intent | Issues | Priority |
|---:|---|---|---|---|
| 221 | [#2065](https://github.com/storytold/lightcraft/pull/2065) | Hold Space over a tool to pan and click-zoom, as in Lightroom (#1895) | #1895 | medium |
| 223 | [#2709](https://github.com/storytold/lightcraft/pull/2709) | Cmd+L / Ctrl+L (View > Enable Filters) switches the library filter off and on again as it… | - | - |

### ROADMAP: Stability

| Rank | PR | Intent | Issues | Priority |
|---:|---|---|---|---|
| 231 | [#2636](https://github.com/storytold/lightcraft/pull/2636) | A keyword nested thousands of levels deep keeps its top 64 levels (#2558) | #2558 | critical |
| 234 | [#2623](https://github.com/storytold/lightcraft/pull/2623) | Sidecar settings kept in range; a turned crop bounded to the photo (#2555) | #2555 | high |
| 235 | [#2634](https://github.com/storytold/lightcraft/pull/2634) | Mask.exportEffects refuses originals and writes atomically (#2564) | #2564 | high |
| 236 | [#2635](https://github.com/storytold/lightcraft/pull/2635) | Lossy-JPEG tiles and embedded previews are refused from their JPEG header (#2560) | #2560 | high |
| 237 | [#2637](https://github.com/storytold/lightcraft/pull/2637) | Library files are never read, cut or appended through a planted link (#2552) | #2552 | high |
| 238 | [#2659](https://github.com/storytold/lightcraft/pull/2659) | Place names always download into the settings folder (#2575) | #2551,#2575 | high |
| 249 | [#2648](https://github.com/storytold/lightcraft/pull/2648) | The work gate's byte count saturates instead of overflowing (#2576) | #2576 | low |
| 253 | [#777](https://github.com/storytold/lightcraft/pull/777) | A refused command says why | - | - |
| 265 | [#2597](https://github.com/storytold/lightcraft/pull/2597) | The folders test fixture waits for the Missing Photos row | - | - |
| 268 | [#2630](https://github.com/storytold/lightcraft/pull/2630) | Regression test for #49 | - | - |

### ROADMAP: Import and library

| Rank | PR | Intent | Issues | Priority |
|---:|---|---|---|---|
| 276 | [#2034](https://github.com/storytold/lightcraft/pull/2034) | Synchronize Folder can bring in files already in the library elsewhere, and remembers the… | #1401 | high |
| 282 | [#1575](https://github.com/storytold/lightcraft/pull/1575) | Do not read a sibling's shared stem sidecar for a non-owner photo (#1523) | #1523 | medium |
| 295 | [#2441](https://github.com/storytold/lightcraft/pull/2441) | Add "Show in Folders" to the photo menu (#2437) | #2437 | low |
| 297 | [#2651](https://github.com/storytold/lightcraft/pull/2651) | The filter bar's flag buttons combine, Picked + Unflagged hides only the rejects | #2588 | low |
| 301 | [#775](https://github.com/storytold/lightcraft/pull/775) | The view never shows an album that is gone | - | - |
| 302 | [#1095](https://github.com/storytold/lightcraft/pull/1095) | Import: what the photos themselves carry can be left in the files | - | - |
| 305 | [#1243](https://github.com/storytold/lightcraft/pull/1243) | Folders skips the folders that only lead to your photos, with Show Parent Folder to list … | - | - |
| 308 | [#1925](https://github.com/storytold/lightcraft/pull/1925) | Photos move to another folder in the background | - | - |
| 323 | [#2629](https://github.com/storytold/lightcraft/pull/2629) | Library.missing from the control channel checks the files off the UI thread | - | - |
| 326 | [#2697](https://github.com/storytold/lightcraft/pull/2697) | Local says where its listing stops, with a Go Deeper row | - | - |
| 327 | [#2699](https://github.com/storytold/lightcraft/pull/2699) | The label chip and filter bar show what label and labels let through together, not their … | - | - |

### ROADMAP: Global develop adjustments

| Rank | PR | Intent | Issues | Priority |
|---:|---|---|---|---|
| 370 | [#1350](https://github.com/storytold/lightcraft/pull/1350) | Detail: Remove Hot Pixels, on for newly imported raws (#1345) | #1345 | medium |
| 378 | [#1862](https://github.com/storytold/lightcraft/pull/1862) | Photo ▸ Auto Settings acts on every selected photo (#1752) | - | - |

### ROADMAP: Presets, profiles, versions, sync

| Rank | PR | Intent | Issues | Priority |
|---:|---|---|---|---|
| 389 | [#2017](https://github.com/storytold/lightcraft/pull/2017) | Favourite presets listed first in a Favorites group, as favourite profiles are | #1999 | low |

### ROADMAP: Export

| Rank | PR | Intent | Issues | Priority |
|---:|---|---|---|---|
| 394 | [#2638](https://github.com/storytold/lightcraft/pull/2638) | Edit In starts only the editor set in Settings (#2551) | #2551 | high |
| 398 | [#2641](https://github.com/storytold/lightcraft/pull/2641) | The Export dialog updates, renames, duplicates and deletes a loaded preset (#2510) | #2510 | low |

### ROADMAP: Optics, lens profiles, crop and geometry

| Rank | PR | Intent | Issues | Priority |
|---:|---|---|---|---|
| 407 | [#2688](https://github.com/storytold/lightcraft/pull/2688) | Auto straighten turns by at most 10° on at least 3 lines, and says when it finds nothing | #2686 | medium |

### ROADMAP: Platforms

| Rank | PR | Intent | Issues | Priority |
|---:|---|---|---|---|
| 457 | [#2618](https://github.com/storytold/lightcraft/pull/2618) | Find Missing Photos matches Windows paths by file name on macOS and Linux | #2617 | medium |

### ROADMAP: UI/UX fidelity

| Rank | PR | Intent | Issues | Priority |
|---:|---|---|---|---|
| 476 | [#1244](https://github.com/storytold/lightcraft/pull/1244) | Sidebar: the row of what is shown has a bar, and a folded section says what it holds | - | - |
| 477 | [#1245](https://github.com/storytold/lightcraft/pull/1245) | Sidebar: the left sidebar from the keyboard | - | - |
| 490 | [#1936](https://github.com/storytold/lightcraft/pull/1936) | Toasts stack instead of replacing one another, and a new state replaces the old one | - | - |
| 491 | [#2075](https://github.com/storytold/lightcraft/pull/2075) | Dialog confirm buttons name their action | - | - |
| 496 | [#2204](https://github.com/storytold/lightcraft/pull/2204) | Photo drags say what a drop will do, refuse what it can't, and Esc gives them up | - | - |
| 499 | [#2523](https://github.com/storytold/lightcraft/pull/2523) | Settings asks before Clear Cache, a model's Remove and deleting smart previews | - | - |
| 500 | [#2524](https://github.com/storytold/lightcraft/pull/2524) | The Settings tabs are grouped by what a person comes to do | - | - |
| 502 | [#2621](https://github.com/storytold/lightcraft/pull/2621) | The native menu really gives its keys up to a text field and to shortcut recording on mac… | - | - |
| 503 | [#2691](https://github.com/storytold/lightcraft/pull/2691) | Esc in a Settings text box gives the text back instead of closing Settings | - | - |

## 2. Everything else, in the same order

| Rank | PR | Gap | Intent | CodeRabbit | Batched | Draft | Conflict | Dup of | Note |
|---:|---|---|---|---|---|---|---|---|---|
| 1 | [#784](https://github.com/storytold/lightcraft/pull/784) | 1 | A partial look from the bright pairs for mostly-sky frames (#631, stacked on #699) | not-reviewed | - | - | yes | - | - |
| 2 | [#1206](https://github.com/storytold/lightcraft/pull/1206) | 1 | Dark, muted scenes learn their colour matrix (#865, stacked on #784) | not-reviewed | - | - | yes | - | - |
| 3 | [#1332](https://github.com/storytold/lightcraft/pull/1332) | 1 | Show RAW starting-colour provenance in Profile panels | not-reviewed | - | - | yes | - | - |
| 4 | [#1342](https://github.com/storytold/lightcraft/pull/1342) | 1 | Add a camera profile calibration wizard with validated named profiles | not-reviewed | - | - | yes | - | - |
| 5 | [#2222](https://github.com/storytold/lightcraft/pull/2222) | 1 | Calibrated camera colour, a per-photo choice of a raw's starting colour | not-reviewed | - | - | yes | - | - |
| 6 | [#2514](https://github.com/storytold/lightcraft/pull/2514) | 1 | Kelvin for Fujifilm X-Trans III bodies from the RAF's own neutral pair (#730) | open-threads (1) | - | - | - | - | - |
| 7 | [#2527](https://github.com/storytold/lightcraft/pull/2527) | 1 | Kelvin white balance for more raws without colour matrices (#730, depends on #2514) | not-reviewed | - | - | - | - | - |
| 8 | [#2656](https://github.com/storytold/lightcraft/pull/2656) | 1 | Limit tone-curve steps between pixel populations (#1904) | stale | - | - | - | - | - |
| 9 | [#732](https://github.com/storytold/lightcraft/pull/732) | 1 | Refine partial looks with measured colour | not-reviewed | - | - | yes | - | - |
| 11 | [#1891](https://github.com/storytold/lightcraft/pull/1891) | 1 | Sony: Kelvin WB, focus points and fallback colors across all bodies | not-reviewed | - | - | yes | - | - |
| 12 | [#2092](https://github.com/storytold/lightcraft/pull/2092) | 1 | Color and tone in pushed shadows | stale | - | - | yes | - | - |
| 13 | [#2188](https://github.com/storytold/lightcraft/pull/2188) | 1 | Smooth fitted tone curves; DRO lowering follows Sony's curve between knots | not-reviewed | - | - | yes | - | - |
| 14 | [#2278](https://github.com/storytold/lightcraft/pull/2278) | 1 | Raw decoding keeps negative channels | stale | - | - | yes | - | - |
| 15 | [#2587](https://github.com/storytold/lightcraft/pull/2587) | 1 | Prefer better accepted per-photo colour fits | not-reviewed | - | - | - | - | - |
| 17 | [#2675](https://github.com/storytold/lightcraft/pull/2675) | 1 | Align lens-corrected camera JPEG training pairs | not-reviewed | - | - | - | - | - |
| 18 | [#1319](https://github.com/storytold/lightcraft/pull/1319) | 1 | 1281: calibrate --pairs exports colour pairs, --from-pairs pools them into the fit | not-reviewed | - | - | yes | - | - |
| 19 | [#133](https://github.com/storytold/lightcraft/pull/133) | 1 | Calibrate Sony ARW starting colour on macOS and preserve RAW editing | not-reviewed | - | - | yes | - | - |
| 20 | [#758](https://github.com/storytold/lightcraft/pull/758) | 1 | Median Canon camera tone for CR3s without an embedded JPEG (HDR-PQ shots) | not-reviewed | - | - | - | - | - |
| 21 | [#924](https://github.com/storytold/lightcraft/pull/924) | 1 | Camera database (camdb): per-model colour data with provenance | stale | - | - | yes | - | - |
| 22 | [#1063](https://github.com/storytold/lightcraft/pull/1063) | 1 | Import the user's own DNG camera profiles (.dcp) | open-threads (3) | - | - | - | - | - |
| 23 | [#1073](https://github.com/storytold/lightcraft/pull/1073) | 1 | Include Canon CR2/CR3 in reproducible camera calibration | not-reviewed | #1441 | - | yes | - | - |
| 24 | [#2074](https://github.com/storytold/lightcraft/pull/2074) | 1 | Cobalt profiles | not-reviewed | - | - | yes | - | - |
| 25 | [#2093](https://github.com/storytold/lightcraft/pull/2093) | 1 | Bundled Nikon D780, D750 and D90 camera profiles | stale | - | - | yes | - | - |
| 26 | [#2160](https://github.com/storytold/lightcraft/pull/2160) | 1 | Bundled X20, X100T, X-T1, D700 and D70 profiles | not-reviewed | - | - | yes | - | - |
| 27 | [#2445](https://github.com/storytold/lightcraft/pull/2445) | 1 | Measured looks for the X-T4's film simulations | stale | - | - | - | - | - |
| 28 | [#2598](https://github.com/storytold/lightcraft/pull/2598) | 1 | Colour NR: luminance-weighted blur keeps channel means (part of #840) | open-threads (1) | - | yes | - | - | - |
| 29 | [#160](https://github.com/storytold/lightcraft/pull/160) | 1 | Fit every fallback-matrix raw to its own preview | not-reviewed | - | yes | yes | - | - |
| 30 | [#270](https://github.com/storytold/lightcraft/pull/270) | 1 | Add versioned Nikon base colour and chart calibration | not-reviewed | - | yes | yes | - | - |
| 31 | [#762](https://github.com/storytold/lightcraft/pull/762) | 3 | Radius and Detail work, and sharpening acts at pixel scale (#757) | open-threads (1) | - | - | yes | - | - |
| 32 | [#1283](https://github.com/storytold/lightcraft/pull/1283) | 3 | Dehaze: process V3 with a patch dark channel, eased response and no black halos | open-threads (1) | #1441 | - | - | - | - |
| 33 | [#1383](https://github.com/storytold/lightcraft/pull/1383) | 3 | Calibrated Contrast and Blacks in process V3 (#523) | not-reviewed | - | - | yes | - | #2436: V3 Blacks calibrated twice vs #2313 |
| 34 | [#2313](https://github.com/storytold/lightcraft/pull/2313) | 3 | Process V3 Highlights, Shadows, Whites and Blacks (#523) | not-reviewed | - | - | yes | - | #2436: overlaps #1383 |
| 35 | [#2550](https://github.com/storytold/lightcraft/pull/2550) | 3 | Dehaze no longer crushes dark pixels next to bright ones (#2504), split from #2174 | stale | #2689 | - | - | - | - |
| 36 | [#1259](https://github.com/storytold/lightcraft/pull/1259) | 3 | Honor luminance noise-reduction contrast. | not-reviewed | - | - | - | - | #2436: interim; decide with #1349/#1348 |
| 37 | [#1349](https://github.com/storytold/lightcraft/pull/1349) | 3 | Luminance noise reduction: wavelet on linear Y with line protection, Contrast and Detail,… | cleared | - | - | yes | - | #2436: decide with #1259 and #1348 |
| 38 | [#598](https://github.com/storytold/lightcraft/pull/598) | 3 | Vibrance and Saturation fitted to Lightroom, in linear ProPhoto | not-reviewed | - | - | yes | - | - |
| 39 | [#1953](https://github.com/storytold/lightcraft/pull/1953) | 3 | Process V3: bright saturated colours keep their saturation | open-threads (1) | - | - | yes | - | - |
| 40 | [#2332](https://github.com/storytold/lightcraft/pull/2332) | 3 | Process V3: sharpening at the original's pixels and a raw base look (LR-BEHAV-RENDER-FIDE… | cleared | - | - | yes | - | #2436: companion of #2340 |
| 41 | [#2340](https://github.com/storytold/lightcraft/pull/2340) | 3 | Process V3: a sharp resample, and a sharp fit-to-screen and zoomed view | open-threads (6) | - | - | yes | - | #2436: check after #2012 (merged) |
| 42 | [#1348](https://github.com/storytold/lightcraft/pull/1348) | 3 | Colour noise reduction: joint linear chroma filter with speck brake, CPU and GPU (#815) | stale | - | - | - | - | #2436: decides #1349 vs #1259 |
| 43 | [#1414](https://github.com/storytold/lightcraft/pull/1414) | 3 | Per-photo Auto tone | not-reviewed | - | - | - | - | - |
| 44 | [#1463](https://github.com/storytold/lightcraft/pull/1463) | 3 | Full-size raw demosaic on the white-balanced mosaic, with a clip mask (#1328, stacked on … | not-reviewed | - | - | yes | - | - |
| 45 | [#514](https://github.com/storytold/lightcraft/pull/514) | 3 | Match the default raw tone curve to Lightroom's | not-reviewed | - | - | yes | - | - |
| 46 | [#613](https://github.com/storytold/lightcraft/pull/613) | 3 | Lightroom's tone chain on Apple ProRAW, as fitted analytic operators | not-reviewed | - | - | yes | - | - |
| 47 | [#629](https://github.com/storytold/lightcraft/pull/629) | 3 | Calibration as Lightroom renders it; Shadows Tint on raws only | not-reviewed | - | - | yes | - | - |
| 48 | [#1181](https://github.com/storytold/lightcraft/pull/1181) | 3 | Tools/render_fidelity.py measures single-slider responses against your own Lightroom expo… | not-reviewed | - | - | yes | - | - |
| 49 | [#1226](https://github.com/storytold/lightcraft/pull/1226) | 3 | Preserve Lightroom edits and improve measured rendering fidelity | stale | - | - | yes | - | - |
| 50 | [#1286](https://github.com/storytold/lightcraft/pull/1286) | 3 | Dehaze: per-channel airlight and a soft veil for negative values (#1237) | stale | - | yes | yes | - | - |
| 51 | [#327](https://github.com/storytold/lightcraft/pull/327) | 3 | Apple ProRAW and XMP presets rendered like Lightroom Classic | not-reviewed | - | yes | yes | - | #2436: 4 of 10 commits re-landed differently |
| 52 | [#944](https://github.com/storytold/lightcraft/pull/944) | 3 | Improve RAW starting detail and Nikon tone with versioned processing | not-reviewed | - | yes | yes | - | - |
| 53 | [#1714](https://github.com/storytold/lightcraft/pull/1714) | 3 | Alternative conventional NR: Contrast and edge-aware chroma (process V3) | not-reviewed | - | yes | yes | - | #2436: close (comparison draft) |
| 54 | [#1322](https://github.com/storytold/lightcraft/pull/1322) | 5 | Sky / Subject / Background / Landscape masks from a whole-photo analysis, with a labelled… | stale | - | - | - | - | #2436: overlap #1219 #1227 |
| 55 | [#1219](https://github.com/storytold/lightcraft/pull/1219) | 5 | Use SAM 3 for new Sky selections | not-reviewed | - | - | yes | - | #2436: Sky/Subject overlap #1322 #1227 |
| 56 | [#2533](https://github.com/storytold/lightcraft/pull/2533) | 5 | SAM 3 accelerator plumbing (1/5 of #2167): backend choice, CPU fallback and the AI masks … | stale | - | - | - | - | - |
| 57 | [#2706](https://github.com/storytold/lightcraft/pull/2706) | 5 | AI masks on openly licensed models in pure Rust | open-threads (7) | - | - | yes | - | - |
| 58 | [#1958](https://github.com/storytold/lightcraft/pull/1958) | 5 | SAM 3 on the CPU ~3x faster: encode ~37 → ~11 s, a description ~6 → ~2 s | not-reviewed | - | - | - | - | - |
| 59 | [#2534](https://github.com/storytold/lightcraft/pull/2534) | 5 | SAM 3 image encoder on the GPU via wgpu (2/5 of #2167) | stale | - | - | yes | - | - |
| 60 | [#2535](https://github.com/storytold/lightcraft/pull/2535) | 5 | SAM 3 necks on the GPU (3/5 of #2167) | stale | - | - | yes | - | - |
| 61 | [#2536](https://github.com/storytold/lightcraft/pull/2536) | 5 | SAM 3 DETR encoder on the GPU (4/5 of #2167) | stale | - | - | yes | - | - |
| 62 | [#2537](https://github.com/storytold/lightcraft/pull/2537) | 5 | SAM 3 mask decoder on the GPU, and the docs (5/5 of #2167) | stale | - | - | yes | - | - |
| 63 | [#1079](https://github.com/storytold/lightcraft/pull/1079) | 5 | Reject stale mask results and disclose approximate selections | not-reviewed | #1441 | - | yes | - | - |
| 64 | [#2358](https://github.com/storytold/lightcraft/pull/2358) | 5 | People masks with SAM 3: pick a face, then Entire Person / Face Skin / Body Skin / Hair /… | not-reviewed | - | yes | - | - | - |
| 65 | [#1227](https://github.com/storytold/lightcraft/pull/1227) | 5 | Prototype local Subject and Background candidate selection | not-reviewed | - | yes | yes | - | #2436: overlap #1219 #1322 |
| 66 | [#1162](https://github.com/storytold/lightcraft/pull/1162) | 6 | Decode lossless Olympus and OM System ORF | stale | - | - | yes | - | #2436: ORF keeper pending ruling on LibRaw binary oracle |
| 67 | [#360](https://github.com/storytold/lightcraft/pull/360) | 6 | Decode measured compressed 12-bit Olympus ORFs with pinned corpus CI | not-reviewed | - | - | yes | #1162 | #2436: close (LibRaw provenance, conflict, author stepped back) |
| 68 | [#2068](https://github.com/storytold/lightcraft/pull/2068) | 6 | Decode lossless compressed Olympus ORF files | not-reviewed | - | - | - | #1162 | #2436: close (same provenance concern, no real-file test) |
| 69 | [#930](https://github.com/storytold/lightcraft/pull/930) | 8 | Lens profile corrections from a lensfun-format database | stale | - | - | yes | - | #2436: older head merged; 6 newer commits, review as follow-up |
| 70 | [#1384](https://github.com/storytold/lightcraft/pull/1384) | 8 | Enable Sony ILCE-7M3 (A7 III) embedded distortion correction | not-reviewed | #1441 | - | yes | - | - |
| 71 | [#2644](https://github.com/storytold/lightcraft/pull/2644) | 8 | Bundled Canon EF/RF lens profiles, monotone cubic camera tone curves, and filmstrip drag … | open-threads (5) | - | - | - | - | - |
| 72 | [#2676](https://github.com/storytold/lightcraft/pull/2676) | 8 | Preserve unknown crop factors in lens profiles | not-reviewed | - | - | - | - | - |
| 73 | [#1115](https://github.com/storytold/lightcraft/pull/1115) | 8 | Sony ILCE-7RM6 lateral CA corrected on the raw mosaic before demosaic | not-reviewed | - | yes | yes | - | - |
| 74 | [#1148](https://github.com/storytold/lightcraft/pull/1148) | 9 | #1050 run the tests on Linux, macOS and Windows, and the GPU equivalence tests on lavapip… | not-reviewed | #1441 | - | yes | - | #2436: rebase onto #2302 (macOS/Windows/GPU only) |
| 75 | [#2302](https://github.com/storytold/lightcraft/pull/2302) | 9 | Cargo xtask ci on every PR (Linux x64); ci --quick; one local ci at a time | stale | #2689 | - | yes | - | #2436: multi-OS CI keeper; batched in #2689 |
| 76 | [#2608](https://github.com/storytold/lightcraft/pull/2608) | 9 | Control port test: send the second request while the first reply is pending (#2538) | not-reviewed | - | - | yes | - | - |
| 77 | [#2048](https://github.com/storytold/lightcraft/pull/2048) | 9 | Trigger platform checks for application changes | not-reviewed | - | - | yes | - | #2436: contradicts #901, pick one |
| 78 | [#1159](https://github.com/storytold/lightcraft/pull/1159) | 9 | 既知のCI失敗を解消し3OS・GPUテストを統合する | not-reviewed | - | - | yes | #2302 | #2436: close (omnibus) |
| 79 | [#901](https://github.com/storytold/lightcraft/pull/901) | 9 | FreeBSD and Windows ARM64 nightly and on release, not per PR | not-reviewed | - | - | yes | - | #2436: contradicts #2048, pick one |
| 80 | [#2377](https://github.com/storytold/lightcraft/pull/2377) | 9 | Ci/cross platform tests | cleared | - | - | yes | #2302 | #2436: close or cut to unique parts |
| 81 | [#2547](https://github.com/storytold/lightcraft/pull/2547) | 9 | Discovery tests use the platform's path separator (Windows) | not-reviewed | - | - | - | - | - |
| 82 | [#2662](https://github.com/storytold/lightcraft/pull/2662) | 9 | Build expected paths part by part so they pass on Windows | not-reviewed | - | - | - | - | - |
| 83 | [#1424](https://github.com/storytold/lightcraft/pull/1424) | 9 | FreeBSD green again on main: the settings dialog test no longer misses a click | not-reviewed | - | yes | - | - | #2436: standalone FreeBSD flake fix |
| 85 | [#1069](https://github.com/storytold/lightcraft/pull/1069) | 10 | Normalize DNG black levels per plane with finite-range guards | not-reviewed | #1441 | - | yes | - | - |
| 86 | [#1284](https://github.com/storytold/lightcraft/pull/1284) | 10 | NEF: as-shot white balance from the ColorBalance block on the D2H, D70 and D70s (not the … | not-reviewed | - | - | yes | - | - |
| 87 | [#672](https://github.com/storytold/lightcraft/pull/672) | 10 | Decode two-field Coolpix NEFs (E5400, E5700 CYGM, E8400, E8800) | not-reviewed | - | - | yes | - | - |
| 88 | [#673](https://github.com/storytold/lightcraft/pull/673) | 10 | Decode Nikon small raw (sRAW) NEFs as 4:2:2 luma/chroma | not-reviewed | - | - | yes | - | - |
| 89 | [#2495](https://github.com/storytold/lightcraft/pull/2495) | 10 | Decode Sony ARW version 1 (DSLR-A200 to A390) | stale | - | yes | yes | - | - |
| 90 | [#159](https://github.com/storytold/lightcraft/pull/159) | 10 | Decode Sony M/S-size lossless ARWs | not-reviewed | - | yes | yes | - | - |
| 91 | [#896](https://github.com/storytold/lightcraft/pull/896) | 7 | Decode Nikon High Efficiency NEF sensor data | not-reviewed | - | - | yes | - | - |
| 92 | [#1812](https://github.com/storytold/lightcraft/pull/1812) | 11 | RawNIND weights under CC BY 4.0, offered by default (#1760) | stale | - | - | - | - | - |
| 93 | [#1828](https://github.com/storytold/lightcraft/pull/1828) | 11 | Denoise X-Trans raws through an RGGB re-mosaic | not-reviewed | - | - | yes | - | #2436: maintainer decision vs #2355 |
| 94 | [#2631](https://github.com/storytold/lightcraft/pull/2631) | 11 | GPU denoise doesn't hang when its tiles in flight fail (#2577) | not-reviewed | - | - | - | - | - |
| 95 | [#2355](https://github.com/storytold/lightcraft/pull/2355) | 11 | Fujifilm X-Trans support via LinearRgb contract with GPU acceleration | stale | - | - | yes | - | #2436: maintainer decision vs #1828 |
| 96 | [#2367](https://github.com/storytold/lightcraft/pull/2367) | 12 | Content-aware Fill keeps structure and grain, nothing ghosts through the feather | stale | - | - | - | - | - |
| 97 | [#2368](https://github.com/storytold/lightcraft/pull/2368) | 12 | Remove tool: one outline per brushed spot, strokes at a spacing, brush sized by the mouse | stale | - | - | - | - | - |
| 98 | [#2390](https://github.com/storytold/lightcraft/pull/2390) | 12 | Remove is content-aware, as in Lightroom (stacked on #2367) | stale | - | - | - | - | - |
| 99 | [#1220](https://github.com/storytold/lightcraft/pull/1220) | 12 | Add experimental local DSRNet reflection removal | not-reviewed | - | yes | yes | - | - |
| 100 | [#1232](https://github.com/storytold/lightcraft/pull/1232) | 13 | Lightroom catalog import: stream tables; develop settings never dropped silently (#1234, … | open-threads (1) | - | - | yes | - | #2436/aiongg: keep #1232 over #1247 |
| 101 | [#1247](https://github.com/storytold/lightcraft/pull/1247) | 13 | Lightroom catalog import: stream table rows instead of per-table size caps | open-threads (1) | - | - | yes | #1232 | #2436: aiongg prefers #1232 |
| 102 | [#1735](https://github.com/storytold/lightcraft/pull/1735) | 13 | Lightroom catalogs import in batches from the originals' headers (step 2 of #832) | stale | - | - | - | - | - |
| 103 | [#2246](https://github.com/storytold/lightcraft/pull/2246) | 13 | Lightroom catalog import: turn masks into the photo's upright frame | not-reviewed | - | - | - | - | - |
| 104 | [#2599](https://github.com/storytold/lightcraft/pull/2599) | 13 | Import Lightroom catalog backup zips directly (#2592) | open-threads (1) | - | - | - | - | - |
| 105 | [#2685](https://github.com/storytold/lightcraft/pull/2685) | 13 | Ask whether a Lightroom catalog merges into the open library or gets a new one (#2672) | cleared | #2689 | - | - | - | - |
| 106 | [#1122](https://github.com/storytold/lightcraft/pull/1122) | 13 | Catalog queries and streamed file hashing for locating a folder (part 1 of 3) | stale | - | - | - | - | - |
| 107 | [#1386](https://github.com/storytold/lightcraft/pull/1386) | 13 | Keep Lightroom's saved Upright geometry from XMP sidecars, and put sidecar crops in the p… | not-reviewed | #1441 | - | yes | - | - |
| 108 | [#1223](https://github.com/storytold/lightcraft/pull/1223) | 13 | The ARW6 plan keeps the probe's scattered strip reads | not-reviewed | #1441 | - | yes | - | - |
| 109 | [#1014](https://github.com/storytold/lightcraft/pull/1014) | 13 | Smart collections and folder stacks from .lrcat | not-reviewed | #1441 | - | yes | - | - |
| 110 | [#2021](https://github.com/storytold/lightcraft/pull/2021) | 13 | Fix Lightroom catalog video classification and filtering | not-reviewed | - | - | yes | - | - |
| 111 | [#2412](https://github.com/storytold/lightcraft/pull/2412) | 13 | Catalog import: resolve catalog paths with craft-docpath's resolve_absolute | stale | - | - | - | - | - |
| 112 | [#2168](https://github.com/storytold/lightcraft/pull/2168) | 13 | Import a creation saved inside a collection (#2165) | not-reviewed | - | yes | - | - | - |
| 113 | [#2051](https://github.com/storytold/lightcraft/pull/2051) | 13 | Header reads in fewer, larger reads (stacked on #1735) | open-threads (1) | - | yes | yes | - | - |
| 114 | [#1700](https://github.com/storytold/lightcraft/pull/1700) | 14 | HDR edits show in HDR on HDR displays (Windows, Wayland; macOS EDR untested) | stale | - | - | yes | - | #2436: keeper (vendored egui-wgpu question) |
| 115 | [#1460](https://github.com/storytold/lightcraft/pull/1460) | 14 | HDR: the histogram and HDR settings flow between SDR and HDR | not-reviewed | - | - | yes | - | - |
| 116 | [#1697](https://github.com/storytold/lightcraft/pull/1697) | 14 | HDR: the SDR rendition rolls highlights off instead of clipping | not-reviewed | - | - | yes | - | - |
| 117 | [#1221](https://github.com/storytold/lightcraft/pull/1221) | 14 | HDR display: show HDR edits in HDR on HDR displays (Linux; macOS EDR next) | stale | - | - | yes | #1700 | #2436: close, keeper #1700 |
| 118 | [#1978](https://github.com/storytold/lightcraft/pull/1978) | 14 | Add Apple gain-map reconstruction and reference probes | not-reviewed | - | - | - | - | - |
| 119 | [#1903](https://github.com/storytold/lightcraft/pull/1903) | 15 | Page Options print page numbers, page info and crop marks (gap 15) | open-threads (1) | - | - | - | - | #2436: merged via batch 42; 4 follow-up commits |
| 120 | [#2468](https://github.com/storytold/lightcraft/pull/2468) | 15 | Print: Japanese photo and postcard paper sizes (L判・2L・KG・はがき) | stale | #2689 | - | - | - | - |
| 121 | [#1962](https://github.com/storytold/lightcraft/pull/1962) | 15 | Print: network printers, Grayscale and queue paper through craft-libs | stale | - | - | - | - | - |
| 122 | [#797](https://github.com/storytold/lightcraft/pull/797) | 16 | Map view: OpenStreetMap tiles within the tile policy, photo pins and clusters (LRC-MAP-VI… | open-threads (2) | - | - | - | - | - |
| 123 | [#819](https://github.com/storytold/lightcraft/pull/819) | 16 | Map: Location Filter bar (Visible on Map, Tagged, Untagged) and a GPS Area rule (LRC-MAP-… | open-threads (4) | - | - | yes | - | - |
| 124 | [#804](https://github.com/storytold/lightcraft/pull/804) | 16 | Info panel map of the photo's location; click opens the Map view (LR-MAP-INFO, stacked on… | open-threads (5) | - | - | - | - | - |
| 125 | [#810](https://github.com/storytold/lightcraft/pull/810) | 16 | Map: drag photos onto the map to set their location; move pins, Lock Markers, Remove GPS … | open-threads (4) | - | - | yes | - | - |
| 126 | [#906](https://github.com/storytold/lightcraft/pull/906) | 16 | Map: saved locations (named circles, counts, private locations stripped on export) (LRC-M… | open-threads (3) | - | - | yes | - | - |
| 127 | [#916](https://github.com/storytold/lightcraft/pull/916) | 16 | Map: GPS track logs drawn on the map; auto-tag from the Map view (LRC-MAP-TRACKLOG, stack… | open-threads (5) | - | - | yes | - | - |
| 128 | [#921](https://github.com/storytold/lightcraft/pull/921) | 16 | Map: keys, View ▸ Map menu, Settings ▸ Map, Hide Pins, docs/map.md pass (map phase 8, sta… | open-threads (5) | - | - | yes | - | - |
| 129 | [#1120](https://github.com/storytold/lightcraft/pull/1120) | 16 | Share to Flickr (sign-in, uploads, albums) | open-threads (3) | - | - | yes | - | - |
| 130 | [#2529](https://github.com/storytold/lightcraft/pull/2529) | 16 | Decode XML character references in GPX | open-threads (1) | - | - | - | - | - |
| 131 | [#1169](https://github.com/storytold/lightcraft/pull/1169) | 17 | Import from cameras that don't mount as a disk (PTP/MTP) on Windows (#1005) | not-reviewed | - | - | yes | - | - |
| 132 | [#1635](https://github.com/storytold/lightcraft/pull/1635) | 17 | Import from PTP cameras on macOS through ImageCaptureCore (#1005, stacked on #1169) | not-reviewed | - | yes | yes | - | - |
| 133 | [#1241](https://github.com/storytold/lightcraft/pull/1241) | 18 | Timelapse video from photos (#497) | stale | - | - | yes | - | - |
| 134 | [#2316](https://github.com/storytold/lightcraft/pull/2316) | 20 | Decode pre-X FinePix and SuperCCD RAFs | stale | - | - | yes | - | - |
| 136 | [#2487](https://github.com/storytold/lightcraft/pull/2487) | 20 | Light LRI (L16): decode one camera module with its in-file calibration | stale | - | - | - | - | - |
| 137 | [#2512](https://github.com/storytold/lightcraft/pull/2512) | 20 | Decode Canon CRW (CIFF) files | open-threads (3) | - | yes | yes | - | - |
| 138 | [#2072](https://github.com/storytold/lightcraft/pull/2072) | 21 | Export: add Thai glyph fallback only (#2052, partial) | not-reviewed | #2689 | - | - | - | - |
| 139 | [#1846](https://github.com/storytold/lightcraft/pull/1846) | 21 | Finish the format messages, counts right for every number, test and notes | not-reviewed | #2689 | - | yes | - | #2436: rebase plural/date fix; batched in #2689 |
| 140 | [#2427](https://github.com/storytold/lightcraft/pull/2427) | 21 | Complete the Simplified Chinese (zh-hans) catalog (162 missing strings) | stale | - | - | - | - | - |
| 141 | [#2429](https://github.com/storytold/lightcraft/pull/2429) | 21 | Complete the Traditional Chinese (zh-hant) catalog (200 missing strings) | stale | - | - | - | - | - |
| 142 | [#2593](https://github.com/storytold/lightcraft/pull/2593) | 21 | Native-speaker review of key terms (gap 21) | not-reviewed | #2689 | - | - | - | - |
| 144 | [#2016](https://github.com/storytold/lightcraft/pull/2016) | 21 | Menu paths with →, not the ▸ no UI font has (#1950) | stale | - | - | - | - | #2436/aiongg: keep #2016 over #2031 |
| 145 | [#717](https://github.com/storytold/lightcraft/pull/717) | 21 | Wrap hardcoded UI strings for Chinese localization | not-reviewed | - | - | yes | - | - |
| 146 | [#1728](https://github.com/storytold/lightcraft/pull/1728) | 21 | Korean (ko) interface language | open-threads (3) | - | - | yes | - | #2436: Korean keeper, needs rebase |
| 147 | [#1739](https://github.com/storytold/lightcraft/pull/1739) | 21 | Arabic interface with RTL display order | not-reviewed | - | - | yes | - | #2436: Arabic keeper |
| 148 | [#1868](https://github.com/storytold/lightcraft/pull/1868) | 21 | Polish localisation: fill missing UI strings and add localization-pl.md | not-reviewed | - | - | yes | #1846 | aiongg: ~190 unique Polish strings; withdrawn from #2689 (conflicts #1846) |
| 150 | [#2582](https://github.com/storytold/lightcraft/pull/2582) | 21 | Georgian for 336 interface strings, 48 format messages and the 559 untranslated What's Ne… | stale | - | - | - | - | - |
| 151 | [#2584](https://github.com/storytold/lightcraft/pull/2584) | 21 | Translate 1074 new strings, use the agreed terms in 16 | not-reviewed | - | - | - | - | - |
| 152 | [#2624](https://github.com/storytold/lightcraft/pull/2624) | 21 | Translate the effect presets, slideshow, print, people and overlay strings | stale | - | - | - | - | - |
| 153 | [#2693](https://github.com/storytold/lightcraft/pull/2693) | 21 | "Favorite" and "Listing folders" in the catalogs that lack them | not-reviewed | - | - | - | - | - |
| 155 | [#1360](https://github.com/storytold/lightcraft/pull/1360) | 21 | Add Arabic (العربية) interface translation | not-reviewed | - | - | yes | #1739 | #2436: close, keeper #1739 |
| 156 | [#1673](https://github.com/storytold/lightcraft/pull/1673) | 21 | Add Korean UI | not-reviewed | - | - | yes | #1728 | #2436: close, keeper #1728 |
| 157 | [#1910](https://github.com/storytold/lightcraft/pull/1910) | 21 | Add Lao (lo) translation support | stale | - | - | yes | - | - |
| 158 | [#2520](https://github.com/storytold/lightcraft/pull/2520) | 21 | Add Vietnamese (vi) interface language | stale | - | - | yes | - | - |
| 159 | [#2435](https://github.com/storytold/lightcraft/pull/2435) | 21 | Add Korean support | not-reviewed | - | yes | yes | #1728 | #2436: close or fold into #1728 |
| 160 | [#2373](https://github.com/storytold/lightcraft/pull/2373) | 23 | Reduce motion stops zoom, scroll and spinner animations, and follows macOS until you choo… | cleared | - | - | yes | - | - |
| 161 | [#2522](https://github.com/storytold/lightcraft/pull/2522) | 23 | Settings tabs look like tabs, and the keyboard focus shows and moves in one short way | not-reviewed | - | - | - | - | - |
| 162 | [#1916](https://github.com/storytold/lightcraft/pull/1916) | 23 | Red-eye corrections by keyboard | not-reviewed | - | - | yes | - | - |
| 163 | [#2078](https://github.com/storytold/lightcraft/pull/2078) | 23 | One tick box, radio and toggle button for every choice | stale | - | - | yes | - | - |
| 164 | [#2079](https://github.com/storytold/lightcraft/pull/2079) | 23 | Action buttons share one Button component | not-reviewed | - | - | - | - | - |
| 165 | [#2704](https://github.com/storytold/lightcraft/pull/2704) | 23 | An unnamed control on a main screen fails the tests (today's gaps listed) | open-threads (1) | - | - | - | - | - |
| 166 | [#2715](https://github.com/storytold/lightcraft/pull/2715) | 23 | Every color pair the UI paints stands out in every theme (today's gaps listed) | not-reviewed | - | - | - | - | - |
| 169 | [#2210](https://github.com/storytold/lightcraft/pull/2210) | 24 | Masking: outline every visible mask when the all-masks overlay is on | stale | - | - | - | - | - |
| 170 | [#955](https://github.com/storytold/lightcraft/pull/955) | 24 | Refine masking workspace and component editing | stale | - | - | - | - | - |
| 171 | [#2328](https://github.com/storytold/lightcraft/pull/2328) | 24 | Linear and Radial Gradients are drawn by dragging on the photo | cleared | - | - | yes | - | - |
| 172 | [#1654](https://github.com/storytold/lightcraft/pull/1654) | 24 | Bound interpolation for extreme brush segments | not-reviewed | - | - | yes | - | #2436: aiongg: complements #1892 (merged), not a dup |
| 173 | [#1417](https://github.com/storytold/lightcraft/pull/1417) | 25 | Edit in PhotoCraft: say why it didn't open; find PhotoCraft on macOS and Linux | cleared | #2689 | - | - | - | - |
| 174 | [#2546](https://github.com/storytold/lightcraft/pull/2546) | 25 | Read embedded metadata from PSD and PSB files | stale | - | - | - | - | - |
| 175 | [#1067](https://github.com/storytold/lightcraft/pull/1067) | 25 | Photo > Render to DNG (stacked on #1047) | stale | #1441 | - | yes | - | - |
| 176 | [#1147](https://github.com/storytold/lightcraft/pull/1147) | 26 | #1145 keep mask alphas in the stage cache (Exposure drag with 3 masks: 176-332 ms to 32-6… | not-reviewed | #1441 | - | yes | - | - |
| 177 | [#1152](https://github.com/storytold/lightcraft/pull/1152) | 26 | #1057 slider ticks keep views that read no develop state (on #1660's change tracking) | not-reviewed | #1441 | - | yes | - | - |
| 178 | [#2414](https://github.com/storytold/lightcraft/pull/2414) | 26 | A big selection no longer slows every idle frame | stale | - | - | - | - | - |
| 180 | [#2418](https://github.com/storytold/lightcraft/pull/2418) | 26 | Typing in the library search keeps up on a large library | not-reviewed | - | - | - | - | - |
| 181 | [#2419](https://github.com/storytold/lightcraft/pull/2419) | 26 | Imports and moves answer sidecar lookups from the folder listing | stale | - | - | - | - | - |
| 182 | [#2422](https://github.com/storytold/lightcraft/pull/2422) | 26 | Count every smart album once per pass, not once per album that tests it | not-reviewed | #2689 | - | - | - | - |
| 183 | [#2423](https://github.com/storytold/lightcraft/pull/2423) | 26 | Test a smart album's rules cheapest first | stale | - | - | - | - | - |
| 184 | [#2477](https://github.com/storytold/lightcraft/pull/2477) | 26 | Local: read only a browsed raw's headers; hash it when it joins the library (1/4 of #2001) | open-threads (1) | - | - | - | - | - |
| 185 | [#2478](https://github.com/storytold/lightcraft/pull/2478) | 26 | Local: show a browsed folder's files as placeholders while they are read (3/4 of #2001) | open-threads (2) | - | - | yes | - | - |
| 186 | [#2479](https://github.com/storytold/lightcraft/pull/2479) | 26 | Local: work out added photos' content hashes on a worker thread (2/4 of #2001) | open-threads (1) | - | - | - | - | - |
| 187 | [#1240](https://github.com/storytold/lightcraft/pull/1240) | 26 | Zoom windows reach the screen as GPU textures, no CPU readback (#1228) | stale | - | - | yes | - | #2436: overlap #1065 |
| 188 | [#1418](https://github.com/storytold/lightcraft/pull/1418) | 26 | Keep Assisted Culling responsive and reuse unchanged source measurements | open-threads (1) | - | - | - | - | #2436: overlap #2388 |
| 189 | [#2153](https://github.com/storytold/lightcraft/pull/2153) | 26 | Make damaged journal suffix recovery linear | stale | - | - | yes | - | #2436/aiongg: keep #2153 over #2179 |
| 190 | [#2179](https://github.com/storytold/lightcraft/pull/2179) | 26 | Resync finds the retry record from the end, not every marker (#2124) | stale | - | - | - | #2153 | #2436: triage keeper but aiongg prefers #2153 |
| 191 | [#2649](https://github.com/storytold/lightcraft/pull/2649) | 26 | The catalog answers "which photos have a file in this folder / of this name" from an index | not-reviewed | - | - | - | - | - |
| 192 | [#1551](https://github.com/storytold/lightcraft/pull/1551) | 26 | Build smart previews several at a time (#1492, stacked on #1400) | open-threads (5) | - | - | yes | - | - |
| 193 | [#2047](https://github.com/storytold/lightcraft/pull/2047) | 26 | Importing into a large library keeps the window responsive | stale | - | - | - | - | - |
| 195 | [#1420](https://github.com/storytold/lightcraft/pull/1420) | 26 | The original of the photo you stop on is decoded in the background, so 1:1 doesn't wait f… | not-reviewed | - | - | yes | - | - |
| 196 | [#1638](https://github.com/storytold/lightcraft/pull/1638) | 26 | Avoid rescanning overlapping photo and preset import roots | not-reviewed | - | - | yes | - | - |
| 197 | [#1976](https://github.com/storytold/lightcraft/pull/1976) | 26 | Reduce guided-filter coefficient allocations | not-reviewed | #2689 | - | - | - | - |
| 198 | [#2020](https://github.com/storytold/lightcraft/pull/2020) | 26 | Creating or giving a keyword no longer freezes the window while albums are counted | not-reviewed | - | - | - | - | - |
| 199 | [#2459](https://github.com/storytold/lightcraft/pull/2459) | 26 | A folder walk on a network share lists up to eight folders at the same time | stale | - | - | - | - | - |
| 200 | [#2694](https://github.com/storytold/lightcraft/pull/2694) | 26 | Highlights/Shadows median about 2× faster on the CPU, bit for bit the same | not-reviewed | - | - | - | - | - |
| 201 | [#1026](https://github.com/storytold/lightcraft/pull/1026) | 26 | Colour NR at half resolution (CPU and GPU), 100k grid frame budget | stale | - | - | yes | - | - |
| 202 | [#1065](https://github.com/storytold/lightcraft/pull/1065) | 26 | More of the render on the GPU, loupe drafts from GPU textures | open-threads (5) | - | - | yes | - | #2436: overlap #1240 |
| 203 | [#814](https://github.com/storytold/lightcraft/pull/814) | 26 | The snapshot in segments of about 2 MB and at most 4096 photos (format 11, stacked on #80… | stale | - | yes | - | - | - |
| 204 | [#823](https://github.com/storytold/lightcraft/pull/823) | 26 | Equal develop settings are held once in memory (stacked on #814) | stale | - | yes | - | - | - |
| 205 | [#2211](https://github.com/storytold/lightcraft/pull/2211) | 26 | Speed up folder imports with header reads and on-demand hashing | not-reviewed | - | yes | yes | - | #2436: touches dup-hash code of #1425/#1552 |
| 206 | [#1644](https://github.com/storytold/lightcraft/pull/1644) | 27 | No popup when renderer falls back from DX12 at probe (#1624) | not-reviewed | #2689 | - | - | - | - |
| 207 | [#1848](https://github.com/storytold/lightcraft/pull/1848) | 27 | Renders queue for device memory; out of memory never retires the GPU (#1764) | not-reviewed | - | - | yes | - | - |
| 208 | [#931](https://github.com/storytold/lightcraft/pull/931) | 27 | Windows uninstall: opt-in data cleanup and a confirmation, also from Settings → Apps (#89… | not-reviewed | - | - | yes | - | - |
| 209 | [#2351](https://github.com/storytold/lightcraft/pull/2351) | 27 | Gpu, windows: fix DX12 readback polling on RTX Spark (Windows ARM64) and Windows test pat… | open-threads (1) | - | - | - | - | #2436: trim to DX12 readback fix |
| 210 | [#2421](https://github.com/storytold/lightcraft/pull/2421) | 27 | Add opt-in DirectComposition workaround for VRR flicker | stale | - | - | yes | - | - |
| 211 | [#1928](https://github.com/storytold/lightcraft/pull/1928) | 27 | Restore font-free GNOME Wayland window controls | not-reviewed | - | - | - | - | - |
| 212 | [#1973](https://github.com/storytold/lightcraft/pull/1973) | 27 | Recover safely after readback timeouts (#1948) | not-reviewed | - | yes | yes | - | - |
| 213 | [#1961](https://github.com/storytold/lightcraft/pull/1961) | 27 | Remember Windows window geometry through eframe (#1839) | not-reviewed | - | yes | - | - | - |
| 214 | [#2491](https://github.com/storytold/lightcraft/pull/2491) | 27 | Export the existing menubar to KDE Plasma Global Menu | cleared | - | yes | yes | - | - |
| 215 | [#2010](https://github.com/storytold/lightcraft/pull/2010) | 29 | Merge previews without the memory spike; option changes reuse decoded photos | cleared | - | - | yes | - | - |
| 216 | [#2482](https://github.com/storytold/lightcraft/pull/2482) | 29 | Full-size alignment refinement and local alignment (2/3 of #1887) | cleared | #2689 | - | - | - | - |
| 217 | [#2483](https://github.com/storytold/lightcraft/pull/2483) | 29 | Sharp handheld HDR merges — refined and local alignment, the reference's finest detail (3… | stale | - | - | - | #2482 | overlaps #2482 (2/3 of #1887, batched in #2689) |
| 218 | [#1878](https://github.com/storytold/lightcraft/pull/1878) | 29 | Click the merge preview to zoom in, drag to pan | not-reviewed | #2689 | - | yes | - | - |
| 219 | [#435](https://github.com/storytold/lightcraft/pull/435) | 29 | Reuse verified HDR merge results without changing existing edits | stale | - | - | yes | - | - |
| 220 | [#1822](https://github.com/storytold/lightcraft/pull/1822) | 28 | Shift+P picks and advances in every view (fixes #1707) | not-reviewed | - | - | yes | - | - |
| 222 | [#2513](https://github.com/storytold/lightcraft/pull/2513) | 28 | Show the cycle shortcut in the View menu (#2500) | cleared | #2689 | - | - | - | - |
| 224 | [#1195](https://github.com/storytold/lightcraft/pull/1195) | 28 | F8 toggles the right panel, Shift+Tab hides and restores all panels | not-reviewed | #1441 | - | yes | - | - |
| 225 | [#1458](https://github.com/storytold/lightcraft/pull/1458) | 28 | F1 opens the shortcut dialog; H toggles mask pins while masking | open-threads (2) | - | - | yes | - | - |
| 226 | [#2338](https://github.com/storytold/lightcraft/pull/2338) | 28 | Lightroom Classic keymap profile (opt-in, user bindings stay on top) | stale | - | - | - | - | - |
| 227 | [#2345](https://github.com/storytold/lightcraft/pull/2345) | 28 | Lock Aspect Ratio as a listed row on A | not-reviewed | #2689 | - | - | - | - |
| 228 | [#1954](https://github.com/storytold/lightcraft/pull/1954) | - | Export Keywords refuses an original or its sidecar (#1944) | stale | - | - | - | #2015 | #2436: aiongg: fails exporting_keywords test; #2015 batched instead |
| 229 | [#2015](https://github.com/storytold/lightcraft/pull/2015) | - | Keyword.export refuses library originals and writes durably | open-threads (1) | #2689 | - | - | - | #2436 said close, but aiongg found #1954 failing; batched in #2689 |
| 230 | [#2102](https://github.com/storytold/lightcraft/pull/2102) | - | Handle macOS native picker failures without aborting | not-reviewed | - | - | yes | - | - |
| 232 | [#2485](https://github.com/storytold/lightcraft/pull/2485) | - | Catalog.query / library.filter: an unknown filter key is an error, not a silent whole-lib… | not-reviewed | - | - | - | #2243 | - |
| 233 | [#2607](https://github.com/storytold/lightcraft/pull/2607) | - | GIF and BMP sizes from the header; a canvas the file can't fill is refused (#2553) | cleared | - | - | yes | - | - |
| 239 | [#2243](https://github.com/storytold/lightcraft/pull/2243) | - | Library: Refuse an unknown filter key in catalog.query and library.filter (#2241) | not-reviewed | - | yes | - | - | - |
| 240 | [#1409](https://github.com/storytold/lightcraft/pull/1409) | - | Library on an SMB share: the catalog files are written where macOS can't fully flush them | not-reviewed | #1441 | - | - | - | - |
| 241 | [#2073](https://github.com/storytold/lightcraft/pull/2073) | - | Refuse Photo Merge inputs beyond the memory budget | stale | - | - | - | - | - |
| 242 | [#2176](https://github.com/storytold/lightcraft/pull/2176) | - | Confine file access to configured roots | stale | - | - | yes | - | - |
| 243 | [#2628](https://github.com/storytold/lightcraft/pull/2628) | - | CR3 preview box scan checks 32-bit lengths for overflow (#2569) | not-reviewed | - | - | - | - | - |
| 244 | [#1938](https://github.com/storytold/lightcraft/pull/1938) | - | Files on an SMB share: imports, moves and sidecar backups use the fsync fallback too | not-reviewed | - | yes | - | - | - |
| 245 | [#2626](https://github.com/storytold/lightcraft/pull/2626) | - | View.maskOverlayColor refuses signed hex digits | not-reviewed | - | - | - | - | - |
| 246 | [#2627](https://github.com/storytold/lightcraft/pull/2627) | - | The idle-close MCP test reads blocking and waits for the close | not-reviewed | - | - | - | - | - |
| 247 | [#2632](https://github.com/storytold/lightcraft/pull/2632) | - | MCP: render and screenshot PNGs go through a private temp folder (#2573) | not-reviewed | - | - | - | - | - |
| 248 | [#2633](https://github.com/storytold/lightcraft/pull/2633) | - | Desktop: the panic log is kept in the settings folder, never the shared temp folder (#257… | not-reviewed | - | - | - | - | - |
| 250 | [#2712](https://github.com/storytold/lightcraft/pull/2712) | - | NaN in tone curves and an i16::MIN UTC offset (#2579 items 3 and 4) | stale | - | - | - | - | - |
| 251 | [#2714](https://github.com/storytold/lightcraft/pull/2714) | - | History is bounded on load and by every op that sets it (#2579 item 8) | not-reviewed | - | - | - | - | - |
| 252 | [#2717](https://github.com/storytold/lightcraft/pull/2717) | - | Rational tag lists show 16 values like every other list (#2579 item 7) | not-reviewed | - | - | - | - | - |
| 254 | [#1736](https://github.com/storytold/lightcraft/pull/1736) | - | Bound synthetic UI events and protect input queue | not-reviewed | - | - | - | - | - |
| 255 | [#1970](https://github.com/storytold/lightcraft/pull/1970) | - | Control port: require a per-run token before any request | not-reviewed | - | - | yes | - | - |
| 256 | [#2170](https://github.com/storytold/lightcraft/pull/2170) | - | Deny the panic lints in every crate root; GPU asserts become fail paths (#2137) | stale | - | - | yes | - | - |
| 257 | [#2455](https://github.com/storytold/lightcraft/pull/2455) | - | Lightcraft.command refuses params that aren't a JSON object | stale | #2689 | - | - | - | - |
| 258 | [#2464](https://github.com/storytold/lightcraft/pull/2464) | - | One rule for Missing Photos' files, and a folder listing that panics no longer stays runn… | stale | - | - | - | - | - |
| 259 | [#2521](https://github.com/storytold/lightcraft/pull/2521) | - | Test pinch display fitting with controlled completions | not-reviewed | - | - | - | - | - |
| 260 | [#2530](https://github.com/storytold/lightcraft/pull/2530) | - | Return None from shift_iso for impossible calendar dates | not-reviewed | - | - | - | - | - |
| 261 | [#2540](https://github.com/storytold/lightcraft/pull/2540) | - | Reject non-finite values when parsing .cube LUTs | open-threads (1) | - | - | - | - | - |
| 262 | [#2541](https://github.com/storytold/lightcraft/pull/2541) | - | Make control-server timeout tests independent of client rescheduling | not-reviewed | #2689 | - | yes | - | - |
| 263 | [#2545](https://github.com/storytold/lightcraft/pull/2545) | - | Applying the GPU setting never waits for the device on the UI thread | open-threads (1) | - | - | - | - | - |
| 264 | [#2596](https://github.com/storytold/lightcraft/pull/2596) | - | Library lock: Don't write through a link at the owner note's name | not-reviewed | - | - | - | - | - |
| 266 | [#2612](https://github.com/storytold/lightcraft/pull/2612) | - | The import-selection test holds the import until the photo is chosen | not-reviewed | - | - | - | - | - |
| 267 | [#2620](https://github.com/storytold/lightcraft/pull/2620) | - | Corpus tests: Z 8 / Z 6II profile tests pair through the lens warp; Hasselblad TIFF previ… | cleared | #2689 | - | yes | - | - |
| 269 | [#2658](https://github.com/storytold/lightcraft/pull/2658) | - | Refuse to create a library photo's XMP sidecar | not-reviewed | - | - | - | - | - |
| 270 | [#2670](https://github.com/storytold/lightcraft/pull/2670) | - | Colour-range mask: cap the number of samples from automation | open-threads (1) | - | - | - | - | - |
| 271 | [#2721](https://github.com/storytold/lightcraft/pull/2721) | - | A refused move to another folder says what is wrong in plain words; photo.checkMove and s… | open-threads (1) | - | - | - | - | - |
| 272 | [#2155](https://github.com/storytold/lightcraft/pull/2155) | - | Refuse an ERF or MEF whose raw strip runs past the file (#2119) | not-reviewed | - | yes | - | - | - |
| 273 | [#2161](https://github.com/storytold/lightcraft/pull/2161) | - | Cap the property names one XMP packet can produce (#2120) | not-reviewed | - | yes | - | - | - |
| 274 | [#1425](https://github.com/storytold/lightcraft/pull/1425) | - | Say what a duplicate matches and let content duplicates be imported anyway | open-threads (1) | - | - | - | - | #2436: maintainer UX decision vs #1552 |
| 275 | [#1552](https://github.com/storytold/lightcraft/pull/1552) | - | Import: Don't Import Suspected Duplicates option (refs #1401) | stale | - | - | yes | #1425 | #2436: maintainer UX decision vs #1425 |
| 277 | [#2381](https://github.com/storytold/lightcraft/pull/2381) | - | Date files and the session clock in the host's time zone | stale | - | - | yes | - | - |
| 278 | [#2506](https://github.com/storytold/lightcraft/pull/2506) | - | Edit Capture Time leaves a capture time it can't fully read as it was | open-threads (2) | #2689 | - | yes | - | - |
| 279 | [#1153](https://github.com/storytold/lightcraft/pull/1153) | - | Library: show several albums, folders, keywords or dates at once (`library.source {ids, p… | stale | - | - | - | - | - |
| 280 | [#1158](https://github.com/storytold/lightcraft/pull/1158) | - | The engine can move a file to the system Trash and put it back | stale | - | - | - | - | #2436: maintainer decision vs #1851 |
| 281 | [#1170](https://github.com/storytold/lightcraft/pull/1170) | - | Preserve reviewed import scope and consume scan caches once | open-threads (1) | - | - | - | - | - |
| 283 | [#1851](https://github.com/storytold/lightcraft/pull/1851) | - | Delete asks Delete from Disk / Cancel / Remove, as in Lightroom (fixes #1706) | open-threads (7) | - | - | yes | - | #2436: maintainer decision vs #1158 (trash backend) |
| 284 | [#1896](https://github.com/storytold/lightcraft/pull/1896) | - | Ignore unwanted unnamed faces | not-reviewed | - | - | yes | #2416 | #2436: close, keeper #2416 |
| 285 | [#2203](https://github.com/storytold/lightcraft/pull/2203) | - | History steps and versions share segmentation grids (#2154) | stale | - | - | - | - | - |
| 286 | [#2237](https://github.com/storytold/lightcraft/pull/2237) | - | Import: add a remembered thumbnail-size slider | not-reviewed | - | - | yes | - | - |
| 287 | [#2289](https://github.com/storytold/lightcraft/pull/2289) | - | Rate, flag and label every photo of a collapsed stack | not-reviewed | - | - | - | - | - |
| 288 | [#2416](https://github.com/storytold/lightcraft/pull/2416) | - | Persistently ignore and restore face detections (catalog format 10) | stale | - | - | - | - | #2436: keeper over #1896 |
| 289 | [#641](https://github.com/storytold/lightcraft/pull/641) | - | Random photo/album/stack ids (step 1 toward multi-machine catalogs, #294) | not-reviewed | - | - | yes | - | - |
| 290 | [#1002](https://github.com/storytold/lightcraft/pull/1002) | - | Choose the thumbnail cache folder per library, like smart previews (#903) | not-reviewed | #1441 | - | yes | - | - |
| 291 | [#1117](https://github.com/storytold/lightcraft/pull/1117) | - | Auto Import: option to include subfolders of the watched folder (#1109) | not-reviewed | #1441 | - | - | - | - |
| 292 | [#1231](https://github.com/storytold/lightcraft/pull/1231) | - | Pair RAW and JPEG files for optional culling | not-reviewed | - | - | yes | - | - |
| 293 | [#1400](https://github.com/storytold/lightcraft/pull/1400) | - | Opt-in lossless smart previews (#709) | not-reviewed | - | - | yes | - | - |
| 294 | [#1931](https://github.com/storytold/lightcraft/pull/1931) | - | Library: a cropped photo's thumbnail reads the source its crop needs, so tight crops stay… | not-reviewed | - | - | yes | - | - |
| 296 | [#2640](https://github.com/storytold/lightcraft/pull/2640) | - | The People view follows the folder or album shown in the sidebar (#2516) | open-threads (1) | - | - | - | - | - |
| 298 | [#2701](https://github.com/storytold/lightcraft/pull/2701) | - | Choose what opens at launch, the last library or a list of recent ones (#1290) | cleared | #2689 | - | - | - | - |
| 299 | [#587](https://github.com/storytold/lightcraft/pull/587) | - | Import photos from any self-hosted Immich server | not-reviewed | - | - | yes | - | #2436: Immich keeper |
| 300 | [#768](https://github.com/storytold/lightcraft/pull/768) | - | A folder of albums shows the photos of the albums inside it | stale | - | - | - | - | - |
| 303 | [#1124](https://github.com/storytold/lightcraft/pull/1124) | - | Synchronize Folder: the scan can continue in the background | cleared | #1441 | - | - | - | - |
| 304 | [#1155](https://github.com/storytold/lightcraft/pull/1155) | - | Custom Order — drag to reorder an album's photos | stale | - | - | yes | - | - |
| 306 | [#1603](https://github.com/storytold/lightcraft/pull/1603) | - | The Keyword List marks a keyword that has an applied keyword inside it | cleared | #2689 | - | - | - | - |
| 307 | [#1775](https://github.com/storytold/lightcraft/pull/1775) | - | Sync the copy's folder before removing the original (#1501) | stale | - | - | - | - | - |
| 309 | [#1995](https://github.com/storytold/lightcraft/pull/1995) | - | Import: preserve embedded rating, flag and label from file metadata | stale | - | - | - | - | - |
| 310 | [#2043](https://github.com/storytold/lightcraft/pull/2043) | - | A Same Content as Another Photo rule finds photos whose file is in the library twice | stale | - | - | - | - | - |
| 311 | [#2076](https://github.com/storytold/lightcraft/pull/2076) | - | One shared star rating for every rating on screen | stale | #2689 | - | - | - | - |
| 312 | [#2109](https://github.com/storytold/lightcraft/pull/2109) | - | Show an empty view when Find Similar has no matches | not-reviewed | - | - | - | - | - |
| 313 | [#2174](https://github.com/storytold/lightcraft/pull/2174) | - | Twenty-five small fixes: NEF bit depth, colour labels, planar TIFF, light-mode UI, masks,… | stale | - | - | yes | - | - |
| 314 | [#2205](https://github.com/storytold/lightcraft/pull/2205) | - | Files dragged over the window show what a drop will do, and a drop opens the import review | cleared | #2689 | - | - | - | - |
| 315 | [#2259](https://github.com/storytold/lightcraft/pull/2259) | - | Notifications under the bell, import warnings in a report (stacked on #1642, review only … | open-threads (1) | - | - | yes | - | - |
| 316 | [#2326](https://github.com/storytold/lightcraft/pull/2326) | - | Search embedded metadata using a rebuildable cache | cleared | - | - | yes | - | - |
| 317 | [#2329](https://github.com/storytold/lightcraft/pull/2329) | - | Fill missing GPS locations for the current view | open-threads (1) | - | - | yes | - | - |
| 318 | [#2378](https://github.com/storytold/lightcraft/pull/2378) | - | Detached readers for an import or scan (stall, skip, cap), tested and not used yet | stale | - | - | - | - | - |
| 319 | [#2424](https://github.com/storytold/lightcraft/pull/2424) | - | The move engine for reordering smart album rules | cleared | #2689 | - | - | - | - |
| 320 | [#2502](https://github.com/storytold/lightcraft/pull/2502) | - | Month names in date templates (%B January, %b Jan) | not-reviewed | #2689 | - | yes | - | - |
| 321 | [#2503](https://github.com/storytold/lightcraft/pull/2503) | - | The availability worker sweeps a list of files at low priority and gives way to file work | open-threads (1) | #2689 | - | - | - | - |
| 322 | [#2543](https://github.com/storytold/lightcraft/pull/2543) | - | Take photos removed by Synchronize Folder out of their stacks | open-threads (1) | - | - | - | - | - |
| 324 | [#2647](https://github.com/storytold/lightcraft/pull/2647) | - | Editing a smart album made from an album view keeps the album | not-reviewed | - | - | - | - | - |
| 325 | [#2696](https://github.com/storytold/lightcraft/pull/2696) | - | A count never covers a name in a narrow sidebar | not-reviewed | - | - | - | - | - |
| 328 | [#776](https://github.com/storytold/lightcraft/pull/776) | - | The catalog keeps smart albums off loops (stacked on #768) | stale | - | yes | - | - | - |
| 329 | [#841](https://github.com/storytold/lightcraft/pull/841) | - | Back up the library to a dated folder that shares unchanged files (stacked on #814) | stale | - | yes | - | - | - |
| 330 | [#856](https://github.com/storytold/lightcraft/pull/856) | - | Restore a library from a backup, and keep what it replaces (stacked on #841) | stale | - | yes | - | - | - |
| 331 | [#870](https://github.com/storytold/lightcraft/pull/870) | - | Restore from the File menu, with the backup copied in the background (stacked on #856) | stale | - | yes | - | - | - |
| 332 | [#1004](https://github.com/storytold/lightcraft/pull/1004) | - | The backup folder is shown and chosen in Settings (stacked on #870) | stale | - | yes | - | - | - |
| 333 | [#1025](https://github.com/storytold/lightcraft/pull/1025) | - | A library is backed up by itself while it is open, and when LightCraft quits (stacked on … | stale | - | yes | - | - | - |
| 334 | [#1034](https://github.com/storytold/lightcraft/pull/1034) | - | A library can keep its backups for a time, and old ones go after a new one is made (stack… | stale | - | yes | - | - | - |
| 335 | [#1043](https://github.com/storytold/lightcraft/pull/1043) | - | Restore Library from Backup lists the library's backups to choose from (stacked on #1034) | stale | - | yes | - | - | - |
| 336 | [#1054](https://github.com/storytold/lightcraft/pull/1054) | - | What restores replaced goes with the old backups of a library that keeps them for a time … | stale | - | yes | - | - | - |
| 337 | [#1075](https://github.com/storytold/lightcraft/pull/1075) | - | Backup and restore: the smaller items left on #870's list (stacked on #1054) | stale | - | yes | yes | - | - |
| 338 | [#1127](https://github.com/storytold/lightcraft/pull/1127) | - | Synchronize Folder: a Read row for the new photos, and dialogs remember theirs (stacked o… | not-reviewed | - | yes | - | - | - |
| 339 | [#1303](https://github.com/storytold/lightcraft/pull/1303) | - | Settings: Backups says where the library stands, with Back Up Now (stacked on #1075) | stale | - | yes | yes | - | - |
| 340 | [#1433](https://github.com/storytold/lightcraft/pull/1433) | - | Fix library duplicate matching for Local browse records | not-reviewed | - | yes | yes | - | - |
| 341 | [#1486](https://github.com/storytold/lightcraft/pull/1486) | - | Nextcloud as a photo source: browse an archive on the server, develop the shots you pick | not-reviewed | - | yes | yes | - | - |
| 342 | [#1649](https://github.com/storytold/lightcraft/pull/1649) | - | An export or import that ended stays in the list under the bell (stacked on #1642 and #17… | stale | - | yes | - | - | - |
| 343 | [#1933](https://github.com/storytold/lightcraft/pull/1933) | - | A second preview build waits in line for the first, and a task that did not go well can b… | stale | - | yes | - | - | - |
| 344 | [#1943](https://github.com/storytold/lightcraft/pull/1943) | - | Imports and Synchronize Folder wait for each other instead of refusing (stacked on #1933) | stale | - | yes | - | - | - |
| 345 | [#1955](https://github.com/storytold/lightcraft/pull/1955) | - | Synchronize several folders at once, one after another (stacked on #1943 and #1153) | stale | - | yes | - | - | - |
| 346 | [#2305](https://github.com/storytold/lightcraft/pull/2305) | - | Group unnamed faces for bulk review and assignment | stale | - | yes | - | - | #2436: stacked on #2416, not a dup |
| 347 | [#2283](https://github.com/storytold/lightcraft/pull/2283) | - | Assisted Culling measures focus on the subject — face regions, focus point (#2276, stacke… | stale | - | - | - | - | - |
| 348 | [#2327](https://github.com/storytold/lightcraft/pull/2327) | - | Culling goes on from a photo rated out of the view | not-reviewed | #2689 | - | yes | - | - |
| 349 | [#2645](https://github.com/storytold/lightcraft/pull/2645) | - | Detail view: zoom past 100% shows the photo's pixels instead of a bilinear blur (#2643) | not-reviewed | - | - | - | - | - |
| 350 | [#2279](https://github.com/storytold/lightcraft/pull/2279) | - | Adjustable burst gap and similarity in Assisted Culling (#2275) | stale | #2689 | - | - | - | - |
| 351 | [#2281](https://github.com/storytold/lightcraft/pull/2281) | - | Assisted Culling can stack each burst, best photo on top (#2277, stacked on #2279) | stale | - | - | - | - | - |
| 352 | [#2434](https://github.com/storytold/lightcraft/pull/2434) | - | Percentage and pixel limits for previews (#1897) | stale | - | - | - | - | - |
| 353 | [#2501](https://github.com/storytold/lightcraft/pull/2501) | - | The info overlay clears the macOS window controls and shows the rating and flag (#2460) | not-reviewed | #2689 | - | - | - | - |
| 354 | [#2653](https://github.com/storytold/lightcraft/pull/2653) | - | Detail view: zoom to 1600 % (#2652) | not-reviewed | - | - | - | - | - |
| 355 | [#2250](https://github.com/storytold/lightcraft/pull/2250) | - | Detail: The Before view waits for its own render instead of flashing the edits (#2248) | not-reviewed | - | yes | - | - | - |
| 356 | [#2384](https://github.com/storytold/lightcraft/pull/2384) | - | Grid: Outline the selection in dark on the light themes (#2382) | not-reviewed | - | yes | - | #2162 | #2436: close, keeper #2162 |
| 357 | [#1074](https://github.com/storytold/lightcraft/pull/1074) | - | Diagnostic overlays render zoom windows; soft proofing on the GPU (stacked on #1027) | stale | #2689 | - | yes | - | - |
| 358 | [#1156](https://github.com/storytold/lightcraft/pull/1156) | - | Reuse budgeted native RAW sources for Detail browsing | stale | - | - | - | - | - |
| 359 | [#1168](https://github.com/storytold/lightcraft/pull/1168) | - | Magnifier tool and anchored horizontal scrub zoom | stale | - | - | - | - | - |
| 360 | [#1390](https://github.com/storytold/lightcraft/pull/1390) | - | Native zoom windows match the full render (context per filter, the full render's airlight… | not-reviewed | - | - | yes | - | - |
| 361 | [#1639](https://github.com/storytold/lightcraft/pull/1639) | - | Preserve Survey groups and make photo removal reliably clickable | not-reviewed | - | - | yes | - | - |
| 362 | [#1922](https://github.com/storytold/lightcraft/pull/1922) | - | A middle-button drag pans the photo whatever tool is active | not-reviewed | #2689 | - | yes | - | - |
| 363 | [#2162](https://github.com/storytold/lightcraft/pull/2162) | - | The active photo's selection ring shows on light themes and differs from the other select… | stale | - | - | - | - | #2436: keeper over #2384 |
| 364 | [#2164](https://github.com/storytold/lightcraft/pull/2164) | - | Filmstrip and grid thumbnails share one overlay, and it degrades on narrow tiles | stale | - | - | - | - | - |
| 365 | [#2325](https://github.com/storytold/lightcraft/pull/2325) | - | The second window's own zoom | stale | - | - | yes | - | - |
| 366 | [#2350](https://github.com/storytold/lightcraft/pull/2350) | - | Arrange bursts by hand with drag and drop, the first photo is the pick (stacked on #2281) | stale | - | - | - | - | - |
| 367 | [#2463](https://github.com/storytold/lightcraft/pull/2463) | - | View ▸ High Quality Preview | cleared | - | - | yes | - | - |
| 368 | [#2722](https://github.com/storytold/lightcraft/pull/2722) | - | Photos drag from the filmstrip like from the grid | open-threads (1) | - | - | - | - | - |
| 369 | [#2388](https://github.com/storytold/lightcraft/pull/2388) | - | Assisted Culling measures photos on all cores (stacked on #2283) | not-reviewed | - | yes | - | - | #2436: overlap #1418 |
| 371 | [#2111](https://github.com/storytold/lightcraft/pull/2111) | - | A Curve in every mask (RGB / R / G / B, CPU + GPU, presets shared with the Tone Curve) | cleared | - | - | yes | - | - |
| 372 | [#980](https://github.com/storytold/lightcraft/pull/980) | - | Vignette: distinct styles join process V2 (#905) | not-reviewed | - | - | yes | - | #2436: paint-vignette keeper; needs new process |
| 373 | [#1059](https://github.com/storytold/lightcraft/pull/1059) | - | Paint vignette style no longer renders as Color (issue #905) | not-reviewed | - | - | - | #980 | #2436: close, keeper #980 |
| 374 | [#1261](https://github.com/storytold/lightcraft/pull/1261) | - | Make a positive paint vignette blend toward white. | not-reviewed | - | - | - | #980 | #2436: close, keeper #980 |
| 375 | [#1979](https://github.com/storytold/lightcraft/pull/1979) | - | A wheel drag holds the pointer and puts it back where it was pressed (#1899) | not-reviewed | #2689 | - | - | - | - |
| 376 | [#2531](https://github.com/storytold/lightcraft/pull/2531) | - | Show the selected Tone Curve's sampled input histogram (#987) | stale | - | - | yes | - | - |
| 377 | [#1060](https://github.com/storytold/lightcraft/pull/1060) | - | Particle film grain, resolution independent | stale | - | - | yes | - | #2436: maintainer decision vs #2330 |
| 379 | [#1956](https://github.com/storytold/lightcraft/pull/1956) | - | Tone Curve: draw the parametric curve from the renderer's own model, and let it be dragged | not-reviewed | - | - | - | - | - |
| 380 | [#2011](https://github.com/storytold/lightcraft/pull/2011) | - | Histogram: drag its tonal zones to adjust the Basic tones | not-reviewed | - | - | yes | - | - |
| 381 | [#2202](https://github.com/storytold/lightcraft/pull/2202) | - | Negative Craft: turn a scanned film negative into a normal photo | stale | - | - | yes | - | #2436: maintainer decision vs #2364 (film negative) |
| 382 | [#2330](https://github.com/storytold/lightcraft/pull/2330) | - | Replace grid noise with signed particle grain | not-reviewed | - | - | yes | - | #2436: maintainer decision vs #1060 |
| 383 | [#2490](https://github.com/storytold/lightcraft/pull/2490) | - | Convert Negative 1/4: lightcraft-film, the negative conversion maths | not-reviewed | - | - | - | - | - |
| 384 | [#644](https://github.com/storytold/lightcraft/pull/644) | - | Preserve section bypass in renders and sync | not-reviewed | - | yes | yes | - | - |
| 385 | [#2394](https://github.com/storytold/lightcraft/pull/2394) | - | Tone Curve: put a clicked new point on the curve | not-reviewed | - | yes | - | - | - |
| 386 | [#2207](https://github.com/storytold/lightcraft/pull/2207) | - | Presets change only the settings they name (fixes #2159) | stale | - | - | yes | - | #2436: preset application overlap #1641 |
| 387 | [#2583](https://github.com/storytold/lightcraft/pull/2583) | - | Reset the profile section to the default profile | open-threads (1) | - | - | - | - | - |
| 388 | [#2014](https://github.com/storytold/lightcraft/pull/2014) | - | Starred presets are listed first in a Favorites group, as profiles are (#1999) | not-reviewed | - | - | - | #2032 | #2436: Favorites dup; #2032 batched in #2689 |
| 390 | [#2032](https://github.com/storytold/lightcraft/pull/2032) | - | Starred presets in a Favorites section on top of the Presets panel | not-reviewed | #2689 | - | - | - | #2436: Favorites set (#2014/#2017) |
| 391 | [#1641](https://github.com/storytold/lightcraft/pull/1641) | - | Preserve manual edits when adjusting or removing presets | not-reviewed | - | - | yes | - | #2436: overlap #2207 |
| 392 | [#2660](https://github.com/storytold/lightcraft/pull/2660) | - | Export a look as a 3D LUT | stale | - | - | - | - | - |
| 393 | [#1415](https://github.com/storytold/lightcraft/pull/1415) | - | Fix conflict policies for explicit export paths | stale | - | - | - | - | - |
| 395 | [#1971](https://github.com/storytold/lightcraft/pull/1971) | - | Export EXIF Make and Model separately; camera label drops a repeated maker | not-reviewed | - | - | yes | #1718 | #2436: close, #1718 keeper |
| 396 | [#2600](https://github.com/storytold/lightcraft/pull/2600) | - | An export subfolder never leaves the destination folder (#2571) | not-reviewed | - | - | - | - | - |
| 397 | [#2209](https://github.com/storytold/lightcraft/pull/2209) | - | Export: built-in presets for Instagram Feed, Story / Reel, Web / Portfolio, Full Resoluti… | not-reviewed | - | - | yes | - | - |
| 399 | [#593](https://github.com/storytold/lightcraft/pull/593) | - | Exports render at twice their size, at most full size, then downsize | not-reviewed | - | - | yes | - | - |
| 400 | [#910](https://github.com/storytold/lightcraft/pull/910) | - | Edit in External Editor: Lightroom-style stacking, DerivedFrom links, and reloading saves… | stale | - | - | yes | - | - |
| 401 | [#1499](https://github.com/storytold/lightcraft/pull/1499) | - | Fix graphic watermark aspect/orientation and HDR JPEG file-size limits | stale | #2689 | - | yes | - | - |
| 402 | [#1704](https://github.com/storytold/lightcraft/pull/1704) | - | Export: Original and DNG follow the metadata setting (#1505) | open-threads (3) | - | - | - | - | - |
| 403 | [#2544](https://github.com/storytold/lightcraft/pull/2544) | - | Simplify preset bit-depth guard | not-reviewed | - | - | - | - | - |
| 404 | [#2650](https://github.com/storytold/lightcraft/pull/2650) | - | Export resampling filters | stale | - | - | - | - | - |
| 405 | [#1876](https://github.com/storytold/lightcraft/pull/1876) | - | Fix/Crop rotate follows the pointer and keeps the drawn crop. | stale | - | - | yes | - | #2436: crop rotate overlap #1699 / #2344 |
| 406 | [#2322](https://github.com/storytold/lightcraft/pull/2322) | - | A free crop corner on a straightened photo grows both sides (#2308) | stale | - | - | - | - | - |
| 408 | [#1699](https://github.com/storytold/lightcraft/pull/1699) | - | The crop box stays put while the photo turns and moves under it (#1643) | stale | - | - | yes | - | #2436: crop rotate overlap #1876 |
| 409 | [#1856](https://github.com/storytold/lightcraft/pull/1856) | - | Crop: save, name, reorder and delete your own aspect ratios, hide built-in ones (#1854) | open-threads (2) | - | - | yes | - | - |
| 410 | [#2287](https://github.com/storytold/lightcraft/pull/2287) | - | Adjustable crop-mask opacity | stale | - | - | yes | - | - |
| 411 | [#2344](https://github.com/storytold/lightcraft/pull/2344) | - | Lightroom-style canvas and straighten band (opt-in; Photoshop stays default) | stale | - | - | - | - | #2436: overlaps #1876/#1699 |
| 412 | [#1713](https://github.com/storytold/lightcraft/pull/1713) | - | Add CPU Lens Blur with focus modes and refinement brushes | not-reviewed | - | yes | yes | - | - |
| 413 | [#1888](https://github.com/storytold/lightcraft/pull/1888) | - | Focus stacks keep their texture (full-size alignment, Lanczos-3) — stacked on #2483 and #… | cleared | - | - | yes | - | - |
| 414 | [#2029](https://github.com/storytold/lightcraft/pull/2029) | - | Residual vignetting, flare offsets and seam leveling from the overlaps | stale | - | - | yes | - | - |
| 415 | [#2030](https://github.com/storytold/lightcraft/pull/2030) | - | Merged DNGs open with sliders at 0 and their auto crop as the DNG default crop | stale | - | - | - | - | - |
| 416 | [#2492](https://github.com/storytold/lightcraft/pull/2492) | - | Report omitted photos and pair verification outcomes | open-threads (1) | - | - | yes | - | - |
| 417 | [#1732](https://github.com/storytold/lightcraft/pull/1732) | - | Photo Merge ▸ Focus Stack merges photos focused at different distances into one sharp DNG | not-reviewed | - | yes | yes | - | - |
| 418 | [#2290](https://github.com/storytold/lightcraft/pull/2290) | - | Read the Exif and XMP items of HEIF files | not-reviewed | - | - | yes | #1208 | #2436: dup of #1208 (aiongg prefers #1208) |
| 419 | [#2465](https://github.com/storytold/lightcraft/pull/2465) | - | TIFF: Read every plane of a planar TIFF (#2462) | not-reviewed | - | yes | yes | - | - |
| 420 | [#1208](https://github.com/storytold/lightcraft/pull/1208) | - | HEIC, HEIF and AVIF files give their EXIF and XMP, read from the container | stale | #1441 | - | - | - | #2436: keeper vs #2290 (aiongg prefers #1208; needs rebase) |
| 421 | [#1692](https://github.com/storytold/lightcraft/pull/1692) | - | Preserve shutter precision through import and export (#1619) | not-reviewed | - | - | yes | - | - |
| 422 | [#1718](https://github.com/storytold/lightcraft/pull/1718) | - | Preserve camera Make and Model (#1618) | not-reviewed | - | - | yes | - | #2436: keeper over #1971; aiongg: changes import-defaults camera label |
| 423 | [#1031](https://github.com/storytold/lightcraft/pull/1031) | - | 写真名変更時にXMPの拡張子表記を保持する | not-reviewed | - | - | yes | - | - |
| 424 | [#1209](https://github.com/storytold/lightcraft/pull/1209) | - | Show Fujifilm film-simulation settings from the MakerNote | open-threads (1) | - | - | - | - | - |
| 425 | [#1684](https://github.com/storytold/lightcraft/pull/1684) | - | Detect spatial (stereo) HEIC photos, show and filter them (#446) | not-reviewed | - | yes | yes | - | - |
| 426 | [#1441](https://github.com/storytold/lightcraft/pull/1441) | - | Integration batch 34: CI on three platforms, HEIC/AVIF metadata, Dehaze V3, 35 reviewed c… | not-reviewed | - | - | yes | - | #2436: never merged; stale batch 34 |
| 427 | [#1907](https://github.com/storytold/lightcraft/pull/1907) | - | Write automatic XMP sidecars off the UI thread in the desktop app | stale | - | - | - | - | - |
| 428 | [#2086](https://github.com/storytold/lightcraft/pull/2086) | - | Hierarchical keywords saved as names and paths, never a \| in dc:subject | cleared | - | - | yes | - | - |
| 429 | [#2087](https://github.com/storytold/lightcraft/pull/2087) | - | A HEIC's EXIF is read, and a file-date guess never reaches a sidecar | not-reviewed | - | - | yes | - | #2436: keep only the sidecar-date fix, drop HEIF part |
| 430 | [#2088](https://github.com/storytold/lightcraft/pull/2088) | - | A sidecar's GPS wins over the camera's, and a save keeps it | not-reviewed | - | - | yes | - | - |
| 431 | [#2310](https://github.com/storytold/lightcraft/pull/2310) | - | Import JPE/JFIF JPEGs and preserve mixed-case XMP sidecars | cleared | - | - | yes | - | - |
| 432 | [#2526](https://github.com/storytold/lightcraft/pull/2526) | - | Preserve foreign namespace collisions | not-reviewed | - | - | - | - | - |
| 433 | [#2542](https://github.com/storytold/lightcraft/pull/2542) | - | Write exact 1/N EXIF ExposureTime for fast shutter speeds | open-threads (1) | #2689 | - | - | - | - |
| 434 | [#2581](https://github.com/storytold/lightcraft/pull/2581) | - | Read referenced JPEG Extended XMP | not-reviewed | - | - | yes | - | - |
| 435 | [#2605](https://github.com/storytold/lightcraft/pull/2605) | - | Write capture time UTC offset and sub-seconds in write_exif | open-threads (1) | - | - | - | - | - |
| 436 | [#2702](https://github.com/storytold/lightcraft/pull/2702) | - | The command sweep no longer starts a GeoNames download | not-reviewed | - | - | - | - | - |
| 437 | [#2705](https://github.com/storytold/lightcraft/pull/2705) | - | A JPEG cut short imports from the data present | stale | - | - | - | - | - |
| 438 | [#1325](https://github.com/storytold/lightcraft/pull/1325) | - | Open 4:2:2 HEIF (Canon/Sony HIF) | not-reviewed | - | yes | yes | - | - |
| 439 | [#1605](https://github.com/storytold/lightcraft/pull/1605) | - | Content search 1/8 — SigLIP 2 towers and tokenizer on candle (`crates/vision`) | not-reviewed | - | - | - | - | - |
| 440 | [#1606](https://github.com/storytold/lightcraft/pull/1606) | - | Content search 2/8 — content models, download and Settings → Search | open-threads (2) | - | - | yes | - | - |
| 441 | [#1607](https://github.com/storytold/lightcraft/pull/1607) | - | Content search 3/8 — content index and background indexing | open-threads (4) | - | - | yes | - | - |
| 442 | [#1608](https://github.com/storytold/lightcraft/pull/1608) | - | Content search 4/8 — search by contents, Relevance sort, Find Similar Contents | open-threads (4) | - | - | yes | - | - |
| 443 | [#1609](https://github.com/storytold/lightcraft/pull/1609) | - | Content search 5/8 — auto-tags, Contents filter, Keywording suggestions, Smart Collection… | open-threads (7) | - | - | yes | - | - |
| 444 | [#1610](https://github.com/storytold/lightcraft/pull/1610) | - | Content search 6/8 — CLIP ViT-B/32 as a second model family, per-model calibration | open-threads (7) | - | - | yes | - | - |
| 445 | [#1611](https://github.com/storytold/lightcraft/pull/1611) | - | Content search 7/8 — SigLIP 2 / CLIP towers on the GPU (wgpu compute kernels) | open-threads (6) | - | - | yes | - | - |
| 446 | [#1612](https://github.com/storytold/lightcraft/pull/1612) | - | Content indexing reads a raw's preview from its planned ranges | open-threads (9) | - | - | yes | - | - |
| 447 | [#1382](https://github.com/storytold/lightcraft/pull/1382) | - | Relight, lights placed on the photo with AI scene geometry (MoGe-2 in pure Rust) | not-reviewed | - | - | yes | - | - |
| 448 | [#1585](https://github.com/storytold/lightcraft/pull/1585) | - | Add an agent photo-editing workflow and scoped automatic corrections | cleared | - | - | yes | - | - |
| 449 | [#2661](https://github.com/storytold/lightcraft/pull/2661) | - | Camera-like Lens Blur with AI subject focus and per-mask bokeh | stale | - | - | yes | - | - |
| 450 | [#1830](https://github.com/storytold/lightcraft/pull/1830) | - | Add Craft AI: the family's built-in local assistant (Gemma 4 catalogue, loopback runtimes… | not-reviewed | - | yes | yes | - | - |
| 451 | [#1204](https://github.com/storytold/lightcraft/pull/1204) | - | Photos opened from Finder or other apps reach LightCraft on macOS (#506) | stale | - | - | yes | #1837 | #2436: close after the policy call |
| 452 | [#1229](https://github.com/storytold/lightcraft/pull/1229) | - | Open photos from Finder and the Dock on macOS | not-reviewed | - | - | yes | #1837 | #2436: policy call (in-repo unsafe crate) |
| 453 | [#1422](https://github.com/storytold/lightcraft/pull/1422) | - | Offer work-preserving recovery after browser WebGL context loss | stale | - | - | - | - | - |
| 454 | [#2227](https://github.com/storytold/lightcraft/pull/2227) | - | Build the Import picker's accept list from the engine's EXTENSIONS | not-reviewed | - | - | - | - | #2436: keeper; #2430 batched instead |
| 455 | [#2315](https://github.com/storytold/lightcraft/pull/2315) | - | A host bridge for pages framing the web build (?host=parent) | stale | - | - | - | - | - |
| 456 | [#2430](https://github.com/storytold/lightcraft/pull/2430) | - | Import picker accept list misses many raw formats | stale | #2689 | - | - | #2227 | #2436 said close (keeper #2227) but batched in #2689 |
| 458 | [#2214](https://github.com/storytold/lightcraft/pull/2214) | - | List every importable raw in the Import Photos picker (#2212) | not-reviewed | - | yes | - | #2227 | #2436: close, keeper #2227 |
| 459 | [#818](https://github.com/storytold/lightcraft/pull/818) | - | Mobile: LightCraft on iOS, iPadOS and Android (issue #707) | stale | - | - | - | - | #2436: mobile keeper |
| 460 | [#2453](https://github.com/storytold/lightcraft/pull/2453) | - | The page title names the open photo and unsaved changes (#2397) | stale | #2689 | - | - | - | - |
| 461 | [#1837](https://github.com/storytold/lightcraft/pull/1837) | - | MacOS: open photos from Finder, the Dock and Open With | not-reviewed | - | - | yes | - | #2436: policy call (lean keeper once web build fixed) |
| 462 | [#2060](https://github.com/storytold/lightcraft/pull/2060) | - | Wire LightCraft to CollabCraft for Open, Save, and Share | stale | - | - | - | - | - |
| 463 | [#2508](https://github.com/storytold/lightcraft/pull/2508) | - | Lightcraft-web: postMessage host bridge (`?host=parent`) | open-threads (1) | - | - | - | #2315 | - |
| 464 | [#2615](https://github.com/storytold/lightcraft/pull/2615) | - | FreeBSD: package the aarch64 cross build (craft-common-actions#39) | stale | - | - | yes | - | - |
| 465 | [#388](https://github.com/storytold/lightcraft/pull/388) | - | Android tablet port | not-reviewed | - | yes | yes | #818 | #2436: close (POC), keeper #818 |
| 466 | [#1137](https://github.com/storytold/lightcraft/pull/1137) | - | Recover editing sessions in Rust and deduplicate clipboard gestures | not-reviewed | - | yes | yes | - | - |
| 467 | [#1128](https://github.com/storytold/lightcraft/pull/1128) | - | Help ▸ Report a Bug… (#1015) | not-reviewed | #1441 | - | yes | - | - |
| 468 | [#1164](https://github.com/storytold/lightcraft/pull/1164) | - | Edit panel: icon buttons with tooltips in Crop, Geometry and Masks (#972, stacked on #110… | stale | - | - | yes | - | - |
| 469 | [#1568](https://github.com/storytold/lightcraft/pull/1568) | - | Help ▸ Check for Updates… (#1553) | not-reviewed | - | - | yes | - | - |
| 470 | [#1900](https://github.com/storytold/lightcraft/pull/1900) | - | Plain labels are no longer drag-selectable, as in Lightroom | not-reviewed | - | - | - | - | - |
| 471 | [#1926](https://github.com/storytold/lightcraft/pull/1926) | - | Sidebar and bottom bar icons from Tabler Icons | not-reviewed | - | - | yes | - | #2436: icons direction vs #1104 |
| 472 | [#894](https://github.com/storytold/lightcraft/pull/894) | - | Standardize custom titlebar and window decorations with VectorCraft | not-reviewed | - | yes | yes | - | - |
| 473 | [#999](https://github.com/storytold/lightcraft/pull/999) | - | Alt/Option-drag previews for clipping and sharpening (#937) | not-reviewed | #1441 | - | yes | - | #2436: close, keeper #995 |
| 474 | [#1104](https://github.com/storytold/lightcraft/pull/1104) | - | UI icons: redraw the weakest, one icon per tool and mask kind (Lucide, ISC) | not-reviewed | - | - | - | - | #2436: icons direction vs #1926 |
| 475 | [#1218](https://github.com/storytold/lightcraft/pull/1218) | - | Clarify masking icons, overlay spacing and rating-pill bounds | not-reviewed | - | - | yes | - | - |
| 478 | [#1287](https://github.com/storytold/lightcraft/pull/1287) | - | The Settings window is one size on every tab, and nothing in it runs off the side | cleared | #2689,#1441 | - | - | - | - |
| 479 | [#1313](https://github.com/storytold/lightcraft/pull/1313) | - | Help ▸ Debug ▸ Show Frame Rate: a frame-rate display for watching drags and zooms | not-reviewed | #2689,#1441 | - | - | - | - |
| 480 | [#1374](https://github.com/storytold/lightcraft/pull/1374) | - | Text sizes have names, the seven type roles of the theme | stale | - | - | - | - | - |
| 481 | [#1554](https://github.com/storytold/lightcraft/pull/1554) | - | Readable Edit panel (cards, edited marks, pinned section header) | stale | - | - | yes | - | - |
| 482 | [#1589](https://github.com/storytold/lightcraft/pull/1589) | - | Shrink LightCraft chrome to PhotoCraft control scale | not-reviewed | - | - | yes | - | - |
| 483 | [#1626](https://github.com/storytold/lightcraft/pull/1626) | - | The sidebar's trees open as they were left | stale | - | - | - | - | - |
| 484 | [#1642](https://github.com/storytold/lightcraft/pull/1642) | - | Running tasks live under the top bar's bell, not over the top-left corner | stale | - | - | - | - | - |
| 485 | [#1651](https://github.com/storytold/lightcraft/pull/1651) | - | Unify LightCraft Charcoal chrome with ArtCraft palette | not-reviewed | - | - | yes | - | - |
| 486 | [#1674](https://github.com/storytold/lightcraft/pull/1674) | - | Top bar and sidebar buttons show hover feedback and the pointing hand | not-reviewed | - | - | yes | - | - |
| 487 | [#1711](https://github.com/storytold/lightcraft/pull/1711) | - | Every job that ends says how it ended | open-threads (2) | - | - | - | - | - |
| 488 | [#1781](https://github.com/storytold/lightcraft/pull/1781) | - | Help ▸ Add Sample Photos and Remove Sample Photos | not-reviewed | - | - | - | - | #2436: overlap #2206 |
| 489 | [#1914](https://github.com/storytold/lightcraft/pull/1914) | - | Optionally close a dialog by clicking outside it | open-threads (1) | #2689 | - | - | - | - |
| 492 | [#2077](https://github.com/storytold/lightcraft/pull/2077) | - | One progress bar, spinner and busy button | stale | #2689 | - | - | - | - |
| 493 | [#2080](https://github.com/storytold/lightcraft/pull/2080) | - | One menu row and shortcut component for every menu | stale | - | - | - | - | - |
| 494 | [#2194](https://github.com/storytold/lightcraft/pull/2194) | - | Every command has a place in the menus, and View drops from 62 rows to 36 | not-reviewed | - | - | - | - | - |
| 495 | [#2195](https://github.com/storytold/lightcraft/pull/2195) | - | Menu switches are named for what they show, and no two commands share a name | stale | #2689 | - | - | - | - |
| 497 | [#2206](https://github.com/storytold/lightcraft/pull/2206) | - | First-run onboarding tour and What's New after an update | open-threads (1) | - | - | yes | - | #2436: first-run overlap #1781 |
| 498 | [#2370](https://github.com/storytold/lightcraft/pull/2370) | - | Toasts stay long enough to read, hold under the pointer, and errors stay 6 s | stale | - | - | - | - | - |
| 501 | [#2525](https://github.com/storytold/lightcraft/pull/2525) | - | What Settings says can be read in every theme, and in every language it has | stale | - | - | - | - | - |
| 504 | [#2707](https://github.com/storytold/lightcraft/pull/2707) | - | The model for choosing several sidebar rows with Cmd/Ctrl+click and Shift+click | not-reviewed | - | - | - | - | - |
| 505 | [#1631](https://github.com/storytold/lightcraft/pull/1631) | - | Option-click on a triangle opens or folds the whole branch (stacked on #1626) | stale | - | yes | - | - | - |
| 506 | [#2218](https://github.com/storytold/lightcraft/pull/2218) | - | Native menu: Send Cmd+A to the focused text field, not Select All | not-reviewed | - | yes | - | - | - |
| 507 | [#2143](https://github.com/storytold/lightcraft/pull/2143) | - | MIDI controller input: a TOML map from faders, knobs and buttons to Develop sliders and c… | stale | - | - | - | - | - |
| 508 | [#2665](https://github.com/storytold/lightcraft/pull/2665) | - | Lightcraft-cli commands: list commands sorted by id | not-reviewed | - | - | yes | - | - |
| 509 | [#1399](https://github.com/storytold/lightcraft/pull/1399) | - | Translate the README into Arabic (README.ar.md) | not-reviewed | #1441 | - | yes | - | - |
| 510 | [#1859](https://github.com/storytold/lightcraft/pull/1859) | - | Workspace rust-version is 1.95, what the workspace needs (#1841) | not-reviewed | #2689 | - | - | - | - |
| 511 | [#2018](https://github.com/storytold/lightcraft/pull/2018) | - | Workspace: rust-version 1.95 (jixel needs 1.94, ui-egui already declares 1.95) | not-reviewed | - | - | - | #1859 | - |
| 512 | [#1048](https://github.com/storytold/lightcraft/pull/1048) | - | 不具合・要望・性能問題のIssueフォームを追加する | not-reviewed | #1441 | - | yes | - | - |
| 513 | [#1072](https://github.com/storytold/lightcraft/pull/1072) | - | Show release versions and publication dates in What's New | not-reviewed | - | - | yes | - | - |
| 514 | [#1188](https://github.com/storytold/lightcraft/pull/1188) | - | CONTRIBUTING.md, and AGENTS.md is the one agent-instructions file | not-reviewed | - | - | yes | - | - |
| 515 | [#1385](https://github.com/storytold/lightcraft/pull/1385) | - | A pull request template | not-reviewed | #2689,#1441 | - | - | - | - |
| 516 | [#1566](https://github.com/storytold/lightcraft/pull/1566) | - | Packaging: submit winget manifests automatically for each release (fixes #487) | not-reviewed | - | - | yes | - | - |
| 517 | [#2689](https://github.com/storytold/lightcraft/pull/2689) | - | Round 3a integration: 42 PRs of #2580, built and tested locally | open-threads (2) | - | - | yes | - | batch round 3a: carries 48 open PRs |
| 518 | [#1464](https://github.com/storytold/lightcraft/pull/1464) | - | Bump quick-xml to 0.41 (RUSTSEC-2026-0194, RUSTSEC-2026-0195) | not-reviewed | #2689 | - | - | - | - |
| 519 | [#2255](https://github.com/storytold/lightcraft/pull/2255) | - | Contributors: add my name for the About window | not-reviewed | #2689 | - | - | - | - |
| 520 | [#2303](https://github.com/storytold/lightcraft/pull/2303) | - | Xtask warm: start a new worktree's target/ from a clone of the main checkout's | cleared | - | - | yes | - | - |
| 521 | [#2507](https://github.com/storytold/lightcraft/pull/2507) | - | Fix four dead links in README.zh-hans.md | not-reviewed | #2689 | - | - | - | - |
| 522 | [#2622](https://github.com/storytold/lightcraft/pull/2622) | - | Add gap 30 — multi-select metadata editing UI | stale | - | - | - | - | docs only: proposes new gap 30 |
| 523 | [#2642](https://github.com/storytold/lightcraft/pull/2642) | - | Bump the cargo-dependencies group across 1 directory with 18 updates | not-reviewed | - | - | - | - | - |

Machine-readable: `lightcraft-prs-by-roadmap.tsv`. Prepared by @francoisgn with Claude Code; corrections welcome.
