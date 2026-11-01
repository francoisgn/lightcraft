# LightCraft open issues: proposed labels

Snapshot 2026-10-23, **522 open issues**. Proposed labels only (contributors cannot set labels): type, `priority:` per craft-contrib RFC-0007 (impact × reachability × evidence × workaround; unreproduced code-reading findings one level lower), `difficulty:` trivial / easy / medium / hard, one `area:` matching the `docs/gaps.md` kinds and ROADMAP areas, extras `beta blocker` (blocks a B gap), `crash`, `needs sample`, `already fixed` (fixing commit in the note), `duplicate` (keeper in the note).

**priority**: medium 227 · low 198 · high 89 · critical 8

**difficulty**: medium 219 · easy 155 · hard 121 · trivial 27

**area**: library 111 · platform 68 · ui 66 · colour 55 · develop 54 · raw 40 · masking-ai 40 · export-formats 22 · performance 21 · hdr 17 · lens 10 · localization 10 · classic-modules 6 · video 2

**extras**: multiple issues 85 · needs info 67 · beta blocker 34 · duplicate 30 · already fixed 26 · crash 24 · needs sample 9

## Quick wins for maintainers

### Already fixed on main (can close with the link)

| Issue | Title | Fix |
|---|---|---|
| #454 | Sony A7 (ILCE-7) ARWs render posterized with a cold colour c | posterized A7: quantile tone fit 24427912; cast may remain |
| #548 | Highlight recovery produces pink/magenta highlights in iPhon | pink highlights fixed ac931189/ec39ca1a; confirm on iPhone |
| #1001 | Lightroom presets don't work when they point to profiles | presets apply named profile d9cea140 (#1001) |
| #1337 | Crash on image export (0.6.0) | export crash: GPU lost → off b0b86aca; confirm |
| #1974 | SAM3 inference fails on Intel Mac with AMD Radeon Pro 5300M: | SAM3 CPU fallback 53f57b94 (PR #2067) |
| #275 | Apple ProRAW: JPEG XL–compressed DNGs are rejected | JXL DNG decodes: 1ed80c65 |
| #366 | [Bug] SAM 3 download unavailable: model dialog has no downlo | 60a98354 (Fix #366); mirror still missing (gap 5) |
| #654 | Photo view not loading in full image preview, viewport very | 1:1 sharpness: gap 4 closed 5bb43a51 (#323); retest |
| #730 | Kelvin white balance for raws whose camera has no colour mat | Kelvin WB for matrix-less raws 76e633c9/d9006c96 |
| #989 | main does not build or pass its tests on macOS (995d5ea4): a | macOS build/tests broke; fixes f0862221/ef3e50bb/76f12dca |
| #1523 | Reading a non-owner sidecar falls back to the sibling-owned | sibling stem sidecar not read 5bf0d45b (#1905) |
| #1794 | Crop tool acts funny | crop rotate with lock 053b7420 |
| #1800 | Masks don't always display preview | overlay shows again 360bf899 (PR #2451) |
| #1866 | Crop frame rotation key not working | X swaps aspect ee8eed1c (PR #1997) |
| #1947 | Photo Merge accepts duplicate ids and unbounded inputs (memo | duplicate ids dedup b5c7eddf (PR #1959); cap on inputs? |
| #2085 | Web build: automatic language ignores the browser's language | web Auto language follows browser 01495684 (PR #2181) |
| #197 | Support for LRCat files (lightroom catalogs) | LRCat import landed 4a427894 (#218); lens filters exist in metadata filter |
| #348 | You can render previews and thumbnails stored in RAWs EXIF w | embedded previews used: 30cdb4b1; verify thumbnails path |
| #795 | Feature Request: Smart previews all render into same folder | sharded storage e90d83ec; progress via activity stack |
| #1046 | UI decides on error message text (offer a model, cancelled v | typed error kinds e4c36749, b3fcb779 |
| #1172 | Clarify Error Message for NEF | HE NEF message explicit: 90a4088f, fa7ee6ee |
| #1520 | Brush interpolation caps each segment but still allocates an | dab budget d770c523, 4d8f9358 (PR #1892) |
| #1756 | Help File for Lightcraft not found for Windows Desktop | Remove tool help 8109deb5 (PR #1909) |
| #1890 | Improve error logging for unrecognised image formats to incl | render failure logs include path d989d973/b427378e |
| #2392 | Presets: applied preset highlight is lost after switching ph | preset highlight kept 61823b17, dad4d625 |
| #2437 | [Feature request][LightCraft] "Show in Folders" option in th | Photo ▸ Show in Folders 4ab5dcc3 (PR #2441) |

### Duplicates (keeper in the note)

| Issue | Title | Note |
|---|---|---|
| #2301 | Betreff: LightCraft 0.9.1 beta – Canon EOS 5D Mark IV not de | 5D IV not detected via USB (PTP, keeper #1005) + watched folder |
| #2504 | Dehaze creates black blotches, doesn't dehaze the image | dehaze black blotches; keeper #1237 |
| #2532 | Lightroom catalog import fails with "invalid: parent must be | "parent must be an existing folder"; keeper #2165 |
| #2680 | Window does not answer for up to 42 s at launch while the fi | launch hang during thumbnails; keeper #2678 |
| #878 | 简体中文支持不好 | Chinese tofu; keeper #682 |
| #1334 | [LightCraft] unsupported formats | probably HE NEF: keeper #2169 (per #2436) |
| #1689 | Native HDR Display and Ultra HDR Photo Support | HDR display in viewer; keeper #868 |
| #1702 | Automatic detection of 'missing' files on storage media with | auto-relocate drive-letter changes; keeper #1116 |
| #2028 | Kelvin white balance missing for DxO demosaiced DNGs | Kelvin WB for RAF; keeper #730; DxO DNG note separate |
| #2112 | Canon 5D Mark III CR2 colours look wrong on import | 5D III CR2 colours; keeper #1343 (unsure, file unexamined) |
| #2379 | Heal / Remove: weak results on large or complex areas | heal rings + weak fill; keeper #2359 |
| #2433 | Lens Correction doesn't | no lens data → lens DB; keeper #329 |
| #2472 | First launch: the main window opens larger than a 1366×768 s | first window larger than 1366×768; already labelled duplicate |
| #2602 | Library-relative photo paths and volume identity (portable l | relative paths/volume identity; keeper #1116 |
| #2609 | A6000 inconsistent colors | A6000 muted colours; keeper #190 |
| #2719 | No kelvin in temperature slider on Sony a1 | a1 no Kelvin; keeper #730 |
| #303 | Plugin system — in-app panel + community layer | plug-in panel; keeper #231 |
| #1118 | [To discuss] DAM accessible across multiple machines | multi-machine DAM; keeper #294 |
| #1615 | Proposal: New icons for the bottom navigation bar | bottom-bar icons; keeper #1591 |
| #1701 | Feature rq/Suggestion; a way to have 2 different lrcat's syn | catalog sync across devices; keeper #880 |
| #2000 | Version Indicator | update indicator; keeper #1553 |
| #2225 | would love to see the plugin: negative lab pro run on it. | Negative Lab Pro plug-in; keepers #231/#1346 |
| #2269 | 'Before' label flickers and can disappear when zooming | Before label flicker; keeper #2267 |
| #2331 | how to install sam3 model | how to install SAM3; answered pattern (#715) |
| #2339 | Add AI denoise model | AI denoise model missing; keeper #1760 |
| #2343 | [Feature request] Full-height 3:2 photo layout with panels o | full-height layout; keeper #2342 |
| #2411 | Lightcraft needs an option to expand photo | generative expand; already labelled duplicate |
| #2498 | Cloud Icon | Cloud icon; keeper #1875 |
| #2517 | Loupe/Magnififer Glass from Apple Aperture | Aperture loupe magnifier; keeper #2668 |
| #2586 | Export presets in Lightcraft | delete export preset; keeper #2510 |

## All open issues (beta blockers first, then priority)

| Issue | Title | Type | Priority | Difficulty | Area | Extras | Gap | Conf. | Note |
|---|---|---|---|---|---|---|---|---|---|
| #315 | LightCraft (v0.2.1) crashes immediately on the second launch | bug | critical | hard | platform | crash,beta blocker | 27 | M | Intel iGPU Vulkan crash on 2nd launch (Windows) |
| #146 | Default raw tone curve is flatter than Lightroom's (shadows | roadmap | high | hard | colour | beta blocker | 3 | H | default tone curve vs LR; needs process version |
| #190 | Sony RAWs have wrong colors (Alpha 6000 Body (ILCE-6000)) | bug | high | medium | colour | beta blocker | 1 | M | A6000 green cast; check vs #515 sweep |
| #211 | Nikon Z 8 NEF rendering loses highlight detail and produces | bug | high | hard | colour | beta blocker | 1 | H | Z 8 highlights/muted vs camera JPEG; sample linked |
| #233 | Add canon raw and olympus raw format support | roadmap | high | hard | raw | beta blocker,multiple issues | 6 | M | generic Canon+Olympus; CR3 mostly done, compressed ORF left |
| #299 | [BUG] NEF RAW files open extremely flat/desaturated regardle | bug | high | hard | colour | beta blocker | 1 | M | NEF flat/desaturated; same family as #211 |
| #329 | Add support for lens profiles including profile generation | roadmap | high | hard | lens | beta blocker | 8 | H | lens profile database + generation |
| #377 | [Feature] Use AI segmentation for Subject, Background and Sk | roadmap | high | hard | masking-ai | beta blocker | 5 | H | model-backed Subject/Sky/Background |
| #454 | Sony A7 (ILCE-7) ARWs render posterized with a cold colour c | bug | high | medium | colour | already fixed,beta blocker | 1 | M | posterized A7: quantile tone fit 24427912; cast may remain |
| #455 | 5D Mark IV CR2 files render very dark and desaturated by def | bug | high | medium | colour | beta blocker | 1 | L | reported fixed on main 10-09 (#2436); reporter to confirm; no SHA found |
| #515 | Sony ARW: starting colour muted or flat (A7C, a6400, A7R II, | roadmap | high | hard | colour | beta blocker | 1 | H | Sony ARW muted start colour; partial fba436a9 |
| #523 | Same Light-panel values render brighter/darker than Lightroo | roadmap | high | hard | colour | beta blocker | 3 | H | Light sliders vs LR; partial fixes aa6dfe3b etc. |
| #840 | Canon EOS R6 CR3: JPEG-fitted colour matrix amplifies noise | bug | high | hard | colour | beta blocker | 1 | H | R6 CR3 fitted matrix amplifies noise ~5x |
| #860 | Raw files go dull | roadmap | high | hard | colour | beta blocker | 1 | M | dull raws (X-Pro1, A7 IV, M10) |
| #1021 | EOS R6 Mark II CR3 at ISO 500: coloured dots in dark areas, | bug | high | hard | colour | beta blocker | 1 | M | R6 II CR3 coloured dots, grey blacks; see #840 |
| #1050 | Tests don't run in CI on macOS, Windows or Linux, and the CP | roadmap | high | medium | platform | beta blocker | 9 | H | tests in CI on macOS/Windows/Linux (gap 9) |
| #1277 | DNGs render about 9 L* darker and 30% less colourful than th | bug | high | medium | colour | beta blocker | 1 | H | DNGs ~9 L* darker than same camera's native raw |
| #1300 | Color Profile differences in A7CR (LR side by Side | bug | high | hard | colour | beta blocker | 1 | H | A7CR profile off on underexposed/high-grain files |
| #1343 | .CR2 Raw files when imported look washed | bug | high | hard | colour | beta blocker | 1 | M | CR2 washed out vs JPEG |
| #1369 | LightCraft v0.7.1 - Sony A7IV - Raw - Colors washed out and | bug | high | hard | colour | beta blocker | 1 | M | A7 IV washed colours, posterized transitions |
| #1912 | GFX100S II RAF: unedited LightCraft render is over-saturated | bug | high | hard | colour | multiple issues,beta blocker | 1 | H | GFX100S II oversaturated, halos, posterized gradients |
| #2053 | CR3: highlights between Canon's stated white level and senso | bug | high | medium | raw | beta blocker | 2 | H | CR3 white level too low: clipped ring (RP, R100) |
| #2173 | Incompatible with Uncompressed NEF Files from D850 | bug | high | medium | raw | beta blocker | 10 | H | D850 uncompressed NEF refused "no linearization table" |
| #2428 | Add native support for Nikon Z5 II Lossless Compressed NEF | bug | high | medium | raw | beta blocker | 10 | H | Z5 II lossless NEF misdetected as HE |
| #378 | Sony ARW (ILCE-7C): raw render loses ~50% saturation under p | bug | medium | hard | colour | beta blocker | 1 | M | A7C saturation loss under coloured light |
| #461 | Can't decode sony a200 raw format | roadmap | medium | medium | raw | beta blocker | 10 | H | A200 packed ARW now preview-only (cfca2999); decode missing |
| #535 | Sony ARW: every raw.pixls.us body on main (100 bodies, 116 C | roadmap | medium | hard | raw | beta blocker,multiple issues | 10 | H | Sony sweep: per-body decode bugs; tracking issue |
| #653 | Distortion on ILCE-6700 sel1655g | roadmap | medium | medium | lens | beta blocker | 8 | M | ILCE-6700 in-file distortion; sample supplied |
| #865 | Camera-look fit is refused on dark, muted scenes: only a par | roadmap | medium | hard | colour | beta blocker | 1 | H | camera-look fit refused on dark muted scenes |
| #1157 | RAW Processing Issues - Canon Rebel T5 .CR2 | bug | medium | hard | colour | beta blocker | 1 | M | Rebel T5 CR2 noise/shadows/colour vs LR |
| #1937 | Title: Nikon D3200 uncompressed NEF files render with an exc | bug | medium | medium | colour | beta blocker | 1 | M | D3200 uncompressed NEF green cast |
| #2141 | Nikon D750: colours less saturated than Lightroom + ColorChe | bug | medium | hard | colour | multiple issues,beta blocker | 1 | H | D750 colour ΔE 3.3–5.6 vs chart DCP (feeds PR #2093) |
| #2484 | Sony DSLR-A390 ARW files only open as embedded preview – ful | roadmap | medium | medium | raw | beta blocker | 10 | H | DSLR-A390 12-bit ARW preview-only (#535); samples offered |
| #2646 | Nikon D5600: no colour model, so colour is uncalibrated and | bug | medium | medium | colour | beta blocker | 1 | H | D5600 no colour model, relative WB |
| #1476 | [LightCraft] Command injection / password leak | bug | critical | medium | platform | - | - | L | security report: command injection/password leak; no details |
| #1944 | keyword.export overwrites any file, including a library orig | bug | critical | easy | library | crash | - | H | keyword.export overwrites any file incl. originals (data loss) |
| #1996 | macOS: app aborts when NSOpenPanel returns nil (file dialog | bug | critical | easy | platform | crash | - | H | macOS abort when NSOpenPanel returns nil (objc2) |
| #2251 | Crash - Using SAM 3 - Masks - macOS Monterey | bug | critical | hard | masking-ai | crash | 5 | H | SAM 3 Describe crashes app on macOS Monterey |
| #2558 | Keywords: a hierarchical keyword thousands of levels deep ov | bug | critical | easy | library | crash | - | H | deep keyword hierarchy overflows stack, crash every launch (LC-08) |
| #2559 | XMP: nested struct property keys are copied per child, so a | bug | critical | medium | library | crash | - | H | XMP nested keys: 0.5 MB → 1.9 GB (LC-09), in progress |
| #2666 | lightcraft crashing #1858 still crashing | bug | critical | medium | hdr | crash,needs info | - | M | HDR merge crashes app on Linux Mint (#1858 regression); logs attached |
| #250 | LightCraft is not launching on MacBook Pro (Retina, 15-inch, | bug | high | hard | platform | crash,needs info | 27 | M | Intel Iris Mac launch; GPU fixes 0bd3f371/ba65d0c8, retest needed |
| #548 | Highlight recovery produces pink/magenta highlights in iPhon | bug | high | medium | develop | already fixed | - | M | pink highlights fixed ac931189/ec39ca1a; confirm on iPhone |
| #576 | Black image when importing NEF (Nikon Raw) into LightCraft | bug | high | medium | raw | needs info,needs sample | 10 | M | black NEF; camera model unknown |
| #638 | Issue with preview and auto masking | bug | high | medium | export-formats | multiple issues,needs info | - | L | preview vs export saturation + mask quality |
| #741 | Soft image with sony a6000 ARW | bug | high | medium | develop | - | - | M | soft A6000 ARW; tied to #757 sharpening |
| #757 | Sharpening: Radius and Detail have no effect, and Sharpening | bug | high | medium | develop | - | - | H | Sharpen Radius/Detail never read by pipeline (verified) |
| #802 | ratings in LightCraft. | bug | high | easy | ui | needs info | - | M | 1–5 rating keys on QWERTZ; retest on main |
| #832 | Lightroom catalog import: every original is read in full and | enhancement | high | medium | library | - | 13 | H | LRCat import hashes every original; slow, Cancel waits |
| #1001 | Lightroom presets don't work when they point to profiles | bug | high | medium | develop | already fixed | - | M | presets apply named profile d9cea140 (#1001) |
| #1134 | Fatal PCIE Error and repeated crashing | bug | high | hard | platform | crash,needs info | 27 | L | crash zooming/switching CR3 quickly; weak hardware |
| #1234 | Lightroom catalog import: per-table size caps drop all edits | bug | high | medium | library | - | 13 | H | LRCat import drops all edits over 256 MiB table cap |
| #1237 | Dehaze is far too strong: haze estimate treats ordinary tone | bug | high | medium | develop | - | 3 | H | Dehaze far too strong, halos (haze estimate) |
| #1323 | LightCraft Crash v.0.6.0 | bug | high | medium | platform | crash,needs info | - | L | crash log only (0.6.0); triage log |
| #1337 | Crash on image export (0.6.0) | bug | high | medium | export-formats | already fixed,crash | - | M | export crash: GPU lost → off b0b86aca; confirm |
| #1371 | Tone sliders don't have much effect | bug | high | medium | develop | - | 3 | H | tone sliders ~10–20% of LR strength |
| #1401 | Photos incorrectly detected as duplicate - unable to import | bug | high | medium | library | needs info | - | M | import marks 1600+ photos duplicate wrongly |
| #1405 | Export writes to any path and silently replaces existing fil | bug | high | medium | export-formats | - | - | H | export overwrites any path silently; no agent root |
| #1478 | Lightcraft stops responding when I open it | bug | high | medium | platform | crash,needs info | 27 | L | app not responding at launch; no OS/GPU info |
| #1584 | [LightCraft] Importing Lightroom Catalogs Not Working | bug | high | medium | library | needs info | 13 | M | LRCat import (28k) ends with nothing imported, no error |
| #1588 | Lightroom Catalogue Import Failure | bug | high | medium | library | - | 13 | M | LRCat import fails: "missing file record" on current LR catalog |
| #1632 | Rendering of Highlights | bug | high | hard | develop | - | 3 | M | highlight rendering vs LR on unclipped photo |
| #1659 | loading cr2 raw files from a canon rebel t100 washed out col | bug | high | medium | develop | - | - | M | old-version edits load washed out on T100 CR2 (migration) |
| #1676 | Canon 5D Mark 2 converted DNG's are pink | bug | high | medium | colour | needs info | 1 | M | 5D II Adobe-converted DNG pink; check vs #1177 CFA-offset fix |
| #1681 | Support for Fujifilm X-T5 40.2MP APS-C X-Trans CMOS 5 HR BSI | bug | high | medium | raw | needs info | 10 | M | X-T5 RAF preview-only; HR/compressed variant? sample needed |
| #1726 | Exporting multiple RAW files causes a complete system freeze | bug | high | hard | export-formats | crash,needs info | 27 | M | multi-raw export freezes whole Windows PC (GTX 750 Ti) |
| #1806 | Import Catalog from Lightroom crop issue | bug | high | medium | library | - | 13 | M | LRCat import: crop and masks wrong orientation |
| #1840 | Lightroom preset import: local grain dropped silently, Adobe | bug | high | medium | develop | multiple issues | 13 | H | LR preset import: grain, B&W base, lum ranges; part 1130bda4 |
| #1870 | App freezes when alt tabbed | bug | high | hard | platform | crash | 27 | M | Linux: hard freeze after Alt-Tab (all craft apps) |
| #1889 | Masks not working (sam3 installed) | bug | high | medium | masking-ai | needs info | - | M | masks have no effect (with SAM3 installed) |
| #1974 | SAM3 inference fails on Intel Mac with AMD Radeon Pro 5300M: | bug | high | medium | masking-ai | already fixed | 5 | H | SAM3 CPU fallback 53f57b94 (PR #2067) |
| #2025 | Windows: UI brightness flickers on mouse movement with G-SYN | bug | high | hard | platform | - | 27 | M | Windows G-SYNC/VRR brightness flicker on mouse move |
| #2094 | When previewing and exporting the image, strange patterns / | bug | high | medium | develop | needs info | - | M | blue-green streaks in high-frequency detail (demosaic?) |
| #2159 | Applying multiple presets edits the visible image, not the o | bug | high | medium | develop | - | - | M | presets stack on visible image; B&W not undone by colour preset |
| #2165 | Lightroom import fails during collection finalization: "pare | bug | high | medium | library | - | 13 | H | LR import: collections fail "parent must be an existing folder" |
| #2215 | Applying brush with exposure parameter is broken - unusable | bug | high | medium | masking-ai | - | 24 | H | brush exposure intensifies after mouse release |
| #2241 | `catalog.query` / `library.filter`: an unknown filter key is | bug | high | easy | library | - | - | H | unknown filter key ignored → whole library returned |
| #2284 | Photos imported from iPhone show UTC time in LightCraft and | bug | high | medium | library | - | - | H | iPhone HEIC capture time shown as UTC |
| #2293 | I am having an issue importing photos from a folder | bug | high | medium | library | needs info | - | M | 0.9.1 regression: Import folder says "no photos" |
| #2301 | Betreff: LightCraft 0.9.1 beta – Canon EOS 5D Mark IV not de | bug | high | hard | library | duplicate,multiple issues | - | M | 5D IV not detected via USB (PTP, keeper #1005) + watched folder |
| #2319 | Straighten Tool not displaying the final result. It rotates | bug | high | medium | ui | - | - | H | straighten view doesn't show result; PR #1699 open |
| #2337 | Export button does nothing and when i try exporting the whol | bug | high | medium | export-formats | multiple issues,needs info | - | L | export button does nothing; folder export no photos |
| #2356 | Feature request: Relink missing files when opening a project | enhancement | high | medium | library | multiple issues | - | H | relink after cross-OS move (Windows paths on Linux) |
| #2374 | Import photos failing selection not working | bug | high | medium | library | needs info | - | M | import review: can't tick photos (Flatpak launcher) |
| #2376 | COMPLAIN | bug | high | hard | library | needs info | - | L | "update deleted all the files"; no detail, maybe not LightCraft |
| #2446 | open a photo from “Bridge 2026” in Lightcraft, | bug | high | medium | platform | - | - | M | Open from Bridge: "cannot open JPEG/PSD format" (macOS open-doc) |
| #2462 | Planar TIFF (PlanarConfiguration 2) fails to render: "malfor | bug | high | easy | export-formats | - | - | H | planar TIFF (PlanarConfiguration 2) fails to render |
| #2471 | Compressed RAF: Highlights slider has no effect, and Shadows | bug | high | medium | develop | multiple issues,needs info | - | M | compressed RAF: Highlights no-op, banding on Shadows |
| #2504 | Dehaze creates black blotches, doesn't dehaze the image | bug | high | medium | develop | duplicate | 3 | H | dehaze black blotches; keeper #1237 |
| #2505 | Edit Capture Time writes garbage for a capture time it can't | bug | high | medium | library | multiple issues | - | H | Edit Capture Time corrupts partly readable times, skips silently |
| #2532 | Lightroom catalog import fails with "invalid: parent must be | bug | high | medium | library | duplicate | 13 | H | "parent must be an existing folder"; keeper #2165 |
| #2551 | Control channel / MCP: the `app` parameter of Edit In / Open | bug | high | easy | platform | - | - | H | security: Edit In `app` param spawns any executable (LC-01) |
| #2552 | Library folder: `catalog.log` and `catalog.lock.owner` are s | bug | high | medium | library | - | - | H | security: catalog.log/lock written through symlinks (LC-02) |
| #2553 | Import probe: a tiny GIF or BMP declaring a 1-gigapixel canv | bug | high | easy | library | crash | - | H | GIF/BMP 1-Gpx header → 4.3 GB alloc abort on import (LC-03) |
| #2554 | Tiled raw decode: tiles may be far larger than the image and | bug | high | medium | raw | crash,multiple issues | - | H | tiled raw: oversize tiles, no aggregate budget (LC-04) |
| #2555 | Develop settings: sidecar `lc:settings` skips range clamping | bug | high | easy | develop | crash | - | H | lc:settings not clamped → 10¹³ px export (LC-05) |
| #2556 | Develop settings: no caps on masks, strokes, brush size, spo | bug | high | medium | develop | crash | - | H | no caps on masks/strokes/spots from sidecars (LC-06) |
| #2557 | Lightroom `.lrcat` reader: rows padded to the declared colum | bug | high | medium | library | crash,multiple issues | 13 | H | lrcat reader amplifies small file to GiB–TiB (LC-07) |
| #2560 | Raw: lossy-JPEG tiles and embedded previews let zune-jpeg al | bug | high | easy | raw | crash | - | H | zune-jpeg allocates 65536² from header (LC-10) |
| #2561 | Raw vendor decoders (ERF, MEF, ORF, ARW) size the sensor buf | bug | high | medium | raw | crash,multiple issues | - | H | ERF/MEF/ORF/ARW buffers sized from declared counts (LC-11) |
| #2564 | `mask.exportEffects` writes anywhere, including over a catal | bug | high | easy | masking-ai | - | - | H | mask.exportEffects overwrites originals, no atomic write (LC-14) |
| #2589 | Lightroom Catalog Import Issues | bug | high | medium | library | multiple issues | 13 | H | LR import "complete" but many photos missing (45k) |
| #2678 | Window does not respond for ~37–42 s after launch, then bloc | bug | high | medium | performance | multiple issues | 26 | H | Windows: 37–42 s not responding at launch (28k photos) |
| #2680 | Window does not answer for up to 42 s at launch while the fi | bug | high | medium | performance | duplicate | 26 | H | launch hang during thumbnails; keeper #2678 |
| #2681 | Window does not answer for 17–31 % of the first two minutes | bug | high | medium | performance | - | 26 | H | UI unresponsive 17–31% of first 2 min, CPU pinned |
| #2683 | Library refused as "already open … (process 17760)", where 1 | bug | high | easy | library | multiple issues | - | H | library refused "already open" by own PID (Windows) |
| #2687 | Lightroom XMP sidecars: a straightened crop comes in turned | bug | high | easy | develop | - | 13 | H | XMP crs:CropAngle sign not negated (catalog path is) |
| #205 | XMP Upright import drops saved transforms and recalculates L | bug | medium | medium | develop | - | 13 | M | Upright: honour saved UprightTransform_* matrices on XMP import |
| #209 | original with light:auto + clarity:+80 have significantly di | roadmap | medium | hard | colour | - | 3 | M | Auto+clarity look vs LR; Auto recalibrated 8b9a0200 |
| #220 | Add Samsung NX RAW support | roadmap | medium | hard | raw | needs sample | 20 | M | compressed SRW (NX1 etc.); uncompressed SRW done; reporter offers files |
| #230 | [Bug] WebGL context loss blanks the editor while exports con | bug | medium | medium | platform | - | - | H | web: WebGL context loss blanks editor, no recovery |
| #253 | [BUG] Masking issues--brush, radial, color | bug | medium | medium | masking-ai | multiple issues,needs info | 24 | L | old build; brush/radial/colour picker; retest on main |
| #260 | Desktop app: when startup fails, nothing is written to disk | enhancement | medium | medium | platform | - | 27 | M | startup diagnostics; dialog + log folder landed (7fb24029), rest open |
| #271 | Feature Request: Option to show photos from sub-folders | enhancement | medium | easy | library | - | - | M | show subfolder photos in folder view |
| #274 | exposure controll on .CR2 | roadmap | medium | hard | colour | - | 3 | M | shadow/highlight recovery strength vs other editors |
| #275 | Apple ProRAW: JPEG XL–compressed DNGs are rejected | enhancement | medium | medium | raw | already fixed | - | H | JXL DNG decodes: 1ed80c65 |
| #318 | Lightcraft underexposes raw photos and won't do a proper aut | roadmap | medium | hard | colour | needs info | 3 | M | underexposed raws/Auto; Auto recalibrated 8b9a0200, retest |
| #332 | Add a way to avoid JPEG duplicates imported along the RAWs | enhancement | medium | easy | library | - | - | H | option: don't import subfolders / skip JPEG siblings |
| #343 | Thumbnail generation should continue for all imported images | bug | medium | medium | library | - | 26 | M | thumbnails only built when scrolled into view |
| #366 | [Bug] SAM 3 download unavailable: model dialog has no downlo | bug | medium | easy | masking-ai | already fixed | 5 | H | 60a98354 (Fix #366); mirror still missing (gap 5) |
| #380 | Fujifilm RAW profiles | enhancement | medium | hard | colour | - | 1 | M | Fujifilm film-simulation profiles; clean-room data needed |
| #400 | Sorting files - LightCraft | bug | medium | easy | library | needs info | - | M | sort by modified date order looks wrong |
| #410 | Show a window before the GPU device is created, so a driver | enhancement | medium | hard | platform | - | 27 | H | window before GPU device creation (#374 follow-up) |
| #430 | [Bug] Repeating an identical HDR merge writes an orphan DNG | bug | medium | easy | hdr | - | - | H | repeated identical merge leaves orphan DNG |
| #436 | Feature request: write develop/crop settings back to XMP sid | enhancement | medium | medium | library | - | - | H | write crs: develop to XMP (only lc:settings written) |
| #450 | M6: align masking components and interactions with Camera Ra | enhancement | medium | hard | masking-ai | multiple issues | 24 | H | masking UI/behaviour spec vs Camera Raw |
| #503 | Import on Hover not working | bug | medium | medium | library | - | - | M | macOS drag from Photo Mechanic onto app does nothing |
| #506 | Redirect from other apps gives error | bug | medium | medium | platform | - | - | M | Open With from other apps: "can't handle file" |
| #521 | Vibrance and saturation sliders too insensitive | bug | medium | medium | develop | - | - | M | vibrance/saturation response too weak |
| #565 | Local: list the folders photos were imported from | enhancement | medium | medium | library | multiple issues | - | M | delete part dup of #1706; keep "show import folder in Local" part |
| #639 | Drag-and-drop import does nothing on Linux under Wayland (wi | bug | medium | hard | platform | - | - | H | Wayland file drop missing in winit 0.30 |
| #654 | Photo view not loading in full image preview, viewport very | bug | medium | medium | ui | already fixed | - | M | 1:1 sharpness: gap 4 closed 5bb43a51 (#323); retest |
| #682 | [Bug] Simplified Chinese characters are rendered as boxes /t | bug | medium | easy | localization | needs info | 21 | M | tofu on 0.5.0 macOS; #627 same fixed (#361,#460); retest on release with craft-f |
| #730 | Kelvin white balance for raws whose camera has no colour mat | bug | medium | medium | colour | already fixed | 1 | M | Kelvin WB for matrix-less raws 76e633c9/d9006c96 |
| #763 | Sony A7R IVA: residual colour and tone differences after #73 | roadmap | medium | hard | colour | multiple issues | 1 | H | A7R IVA residuals; reset part fixed 9da719c6 |
| #783 | Linux Mint desktop session crashes when resizing LightCraft | bug | medium | hard | platform | crash | 27 | M | Nouveau: desktop session crash on resize |
| #811 | LightCraft/TF | bug | medium | medium | colour | needs info | - | L | file rendered differently from macOS Preview; format unknown |
| #815 | Color noise reduction barely acts at the raw default (25) an | bug | medium | medium | develop | - | 3 | H | colour NR weak at 25, fringes at 100 |
| #866 | Sony A7 II (ILCE-7M2): built-in camera colour profile | roadmap | medium | hard | colour | needs sample | 1 | H | ILCE-7M2 built-in profile needs owner files |
| #868 | Feature Request: HDR photo support | roadmap | medium | hard | hdr | multiple issues | 14 | M | HDR edit/display; HLG AVIF export done 0a6f8d3d |
| #878 | 简体中文支持不好 | bug | medium | easy | localization | duplicate | 21 | M | Chinese tofu; keeper #682 |
| #893 | Windows - Inconsistent folder expansion when mapped to both | bug | medium | easy | library | - | - | M | Windows: folder in Local and Home won't expand twice |
| #911 | i18n: many menus, tooltips and toasts stay in English becaus | bug | medium | easy | localization | - | 21 | M | labels without tr(): fa715c8c, 6a5158d4; verify remaining strings |
| #918 | Edit in Photocraft | enhancement | medium | medium | export-formats | - | 25 | M | Edit in PhotoCraft; PSD export landed (#953), check if open-in exists |
| #932 | Feature Request: Cross-platform GPU acceleration for SAM 3 ( | enhancement | medium | hard | masking-ai | - | 5 | H | SAM 3 GPU on all vendors (CPU fallback landed 53f57b94) |
| #934 | LRTimelapse round trip: write crs: back, honour custom WB, d | enhancement | medium | medium | library | - | - | H | LRTimelapse round trip: crs: write-back, custom WB, deflicker |
| #964 | Action History tab is very crude | bug | medium | easy | ui | - | - | H | History: clicking an entry adds "History: Toggle Mask" entries |
| #989 | main does not build or pass its tests on macOS (995d5ea4): a | bug | medium | easy | platform | already fixed | 9 | M | macOS build/tests broke; fixes f0862221/ef3e50bb/76f12dca |
| #1005 | Import from Device: cameras that only talk PTP (e.g. Leica M | enhancement | medium | hard | library | - | - | H | Import from Device: PTP-only cameras (Leica M11-P) |
| #1022 | Poor display of JPG files. | bug | medium | medium | ui | needs info | - | L | GFX 100 JPEG looks poor at 100% |
| #1030 | Default sharpening (Amount 40) looks much stronger than in L | bug | medium | medium | develop | - | 3 | M | default sharpening 40 stronger than LR; scale uncalibrated |
| #1035 | Zoom in Before/After View Comparison is broken | bug | medium | medium | ui | needs info | - | M | Before/After zoom offset/artefacts (0.6.0); retest after zoom windows |
| #1049 | Feature request: Add possibility to choose between lens corr | enhancement | medium | hard | lens | - | 8 | H | manual lens-profile choice when no lens metadata |
| #1057 | Develop edits invalidate every library-wide query and sideba | bug | medium | medium | performance | - | 26 | H | SetDevelop invalidates every library cache (30–130 ms/tick at 100k) |
| #1082 | onnyx | question | medium | easy | masking-ai | - | 11 | H | AI Denoise: where to get ONNX model; no shippable weights |
| #1110 | Severe Chroma Noise in Deep Shadows on Fuji X-T2 RAF with DR | bug | medium | hard | raw | - | 10 | M | X-T2 DR400 deep-shadow chroma noise, lifted blacks |
| #1112 | The [Synchronize Folder] dialog should provide an option to | enhancement | medium | easy | library | - | 13 | H | Synchronize Folder: locate a missing folder |
| #1116 | Library folders: photo paths relative to a root, and Update | enhancement | medium | medium | library | - | - | H | relative paths + Update Folder Location |
| #1129 | Luminance noise reduction barely acts in shadows, darkens th | bug | medium | medium | develop | - | 3 | H | luminance NR weak in shadows; Contrast slider no-op |
| #1133 | Per-command work on the UI thread: presets.json re-serializa | enhancement | medium | hard | performance | - | 26 | H | engine off UI thread; journal fsync per command |
| #1141 | macOS: LightCraft-generated panorama DNG cannot be opened di | bug | medium | medium | hdr | - | - | M | own panorama DNG won't open in GUI on macOS |
| #1145 | Masks are re-evaluated on every render: an Exposure drag wit | bug | medium | medium | performance | - | 26 | H | masks re-evaluated every render: 180–330 ms ticks |
| #1167 | "Auto" Develop settings | bug | medium | medium | develop | needs info | - | M | Auto applies same values to every photo; Auto reworked 8b9a0200 |
| #1207 | Explore calibration-first RAW colour, with optional camera-J | question | medium | hard | colour | - | 1 | H | calibration-first raw colour proposal |
| #1217 | Feature request: optional Lightroom Classic–style interface | enhancement | medium | hard | ui | - | - | H | optional Classic-style module layout |
| #1224 | Allow selection of more than one folders in My Photos -> Loc | enhancement | medium | medium | library | - | - | H | multi-select folders in Local |
| #1228 | Loupe: hand GPU renders to egui without a CPU readback (shar | enhancement | medium | hard | performance | - | 26 | H | share wgpu device; no CPU readback for loupe |
| #1233 | HEIC imports carry no EXIF (no capture date) | bug | medium | medium | library | - | - | H | HEIC imports carry no EXIF (no capture date) |
| #1251 | Assisted Culling blocks the UI thread on large selections an | bug | medium | medium | performance | - | - | H | Assisted Culling blocks UI thread, recomputes scores |
| #1279 | Sony zv-e10 Uneven preview | bug | medium | medium | raw | needs info | 10 | M | ZV-E10 uneven preview; ARW attached |
| #1281 | Color Science and Input Profiles (DCP/ICC) | question | medium | hard | colour | - | 1 | H | colour science / DCP-ICC input profiles discussion |
| #1310 | Profile panel: show where a raw's starting colour came from | enhancement | medium | easy | colour | - | 1 | H | Profile panel shows source of starting colour |
| #1315 | Camera profile wizard: build, check and choose per-model pro | enhancement | medium | medium | colour | - | 1 | H | GUI wizard for calibrate (per-model profiles) |
| #1318 | Windows 11: dragging the window across monitors with differe | bug | medium | medium | platform | - | 27 | M | Windows mixed-DPI drag balloons window (winit) |
| #1328 | Full-size demosaic runs before white balance: green/cyan fri | bug | medium | hard | raw | - | 3 | H | demosaic before WB: green fringes near clipped highlights |
| #1334 | [LightCraft] unsupported formats | bug | medium | hard | raw | duplicate,needs info | 7 | M | probably HE NEF: keeper #2169 (per #2436) |
| #1345 | High ISO: single outlier photosites survive noise reduction | bug | medium | medium | develop | - | - | H | hot photosites survive NR as coloured dots |
| #1346 | Feature Request: Native Film Negative Conversion Tool (simil | enhancement | medium | hard | develop | - | - | H | film negative conversion tool |
| #1354 | Display Monitor Profile Preview Issue(Mac) | bug | medium | medium | colour | - | 22 | M | monitor profile on: preview never loads full res (Mac) |
| #1364 | Temperature and Tint values don't match with Lightroom | bug | medium | medium | colour | - | 1 | M | Temp/Tint values differ from LR, non-linear scale |
| #1372 | Poor performance when looking at higher-quality previews | bug | medium | hard | performance | - | 26 | M | high-res preview stutters |
| #1380 | Photo Merge/HDR Error | bug | medium | medium | hdr | needs info | - | L | HDR merge turns red to green |
| #1407 | Library on an SMB share: "can't write the new library's snap | bug | medium | medium | library | - | - | H | library on SMB: snapshot write ENOTSUP |
| #1498 | Preview stalls for minutes after a slider drag on a large la | bug | medium | medium | performance | - | 26 | H | preview stalls minutes: layered TIFF on SMB |
| #1523 | Reading a non-owner sidecar falls back to the sibling-owned | bug | medium | easy | library | already fixed | - | M | sibling stem sidecar not read 5bf0d45b (#1905) |
| #1564 | AI denoise button not working | bug | medium | easy | masking-ai | needs info | 11 | M | AI Denoise model import gives no feedback |
| #1593 | Semantic search (M12): find photos by what they show, with a | enhancement | medium | hard | masking-ai | - | - | H | semantic search + auto-tags (SigLIP/CLIP), stack of PRs |
| #1618 | Export: EXIF Make is dropped and Model is written as "<Make> | bug | medium | easy | export-formats | - | - | H | export drops EXIF Make, Model "Canon Canon …" |
| #1619 | Metadata: shutter speeds above 1/4 s are rounded to whole st | bug | medium | easy | library | - | - | H | shutter > 1/4 s rounded; exports write rounded time |
| #1624 | Error displayed when starting the portable version of releas | bug | medium | medium | platform | - | 27 | M | DX12 pipeline error on portable start; falls back to Vulkan |
| #1630 | Request - Ability to manage presets | enhancement | medium | medium | develop | - | - | M | preset management: delete/hide/organise |
| #1633 | Make thumbnail rendering fully asynchronous and debounced | enhancement | medium | medium | performance | - | 26 | H | async debounced thumbnail rendering (PR #1412) |
| #1657 | Flatpak on GNOME Wayland: cursor disappears after Crop & Rot | bug | medium | easy | platform | - | - | H | Flatpak Wayland: cursor vanishes (no cursor theme in sandbox) |
| #1664 | People view does not correctly crop to face, and (double) cl | bug | medium | medium | library | multiple issues | - | M | People crops wrong; double-click part fixed 61b4007c |
| #1679 | Loving Lightcraft, but please find a way for no low res whil | enhancement | medium | medium | performance | - | 26 | M | no low-res draft while dragging sliders (option) |
| #1689 | Native HDR Display and Ultra HDR Photo Support | roadmap | medium | hard | hdr | duplicate | 14 | H | HDR display in viewer; keeper #868 |
| #1702 | Automatic detection of 'missing' files on storage media with | enhancement | medium | medium | library | duplicate | - | M | auto-relocate drive-letter changes; keeper #1116 |
| #1706 | Add a "Delete from catalog or disk?" dialog | enhancement | medium | medium | library | - | - | H | Delete from disk dialog; trash.rs not on main yet |
| #1707 | Add Shift-to-skip behavior during culling | enhancement | medium | easy | ui | - | 28 | H | Shift+P/X/U advances (Auto Advance exists 1e527367) |
| #1709 | Exposore slider works not correct (mask) + Preview has a lag | bug | medium | medium | masking-ai | multiple issues | - | M | mask exposure can't reach black; preview quality lag |
| #1723 | Feature Request: Support Exporting Edited Photos as HEIC | enhancement | medium | hard | export-formats | - | 25 | H | HEIC export (pure-Rust HEVC encoder needed) |
| #1724 | FILE HIF | bug | medium | medium | raw | needs info | - | L | .HIF import problem on Mac (HEIF from Canon/Fuji) |
| #1734 | raw developpement | bug | medium | hard | colour | needs info | 1 | M | RW2 G7 noise/colour vs LR |
| #1760 | Shipping AI denoising weights, X-Trans pictures handling | question | medium | easy | masking-ai | - | 11 | H | RawNIND weights CC-BY-4.0: shippable; X-Trans note |
| #1764 | GPU: concurrent large renders exhaust device memory, then a | bug | medium | medium | performance | - | 27 | H | concurrent GPU renders OOM, then GPU retired |
| #1785 | Contrast and saturation is wrong in raw developer | bug | medium | hard | colour | needs info | 1 | M | A7R contrast/saturation too strong; chrono commit unrelated |
| #1788 | mask layers | bug | medium | medium | masking-ai | needs info | 24 | L | brush on top of brush layer clunky |
| #1794 | Crop tool acts funny | bug | medium | easy | ui | already fixed | - | M | crop rotate with lock 053b7420 |
| #1800 | Masks don't always display preview | bug | medium | easy | masking-ai | already fixed | - | H | overlay shows again 360bf899 (PR #2451) |
| #1841 | Workspace rust-version (1.90) is below what the workspace ne | bug | medium | trivial | platform | - | - | H | rust-version 1.90 below needed 1.95 |
| #1849 | Delete from Disk on Windows: move to the Recycle Bin through | enhancement | medium | medium | platform | - | - | H | Delete from Disk on Windows (after #1706) |
| #1850 | Delete from Disk on macOS: move to the Trash through the sys | enhancement | medium | medium | platform | - | - | H | Delete from Disk on macOS, Put Back (after #1706) |
| #1866 | Crop frame rotation key not working | bug | medium | easy | ui | already fixed | - | H | X swaps aspect ee8eed1c (PR #1997) |
| #1873 | People view: permanently ignore unwanted faces in Unnamed fa | enhancement | medium | easy | library | - | - | H | ignore unwanted faces permanently |
| #1882 | raw image reset issue | bug | medium | medium | develop | multiple issues,needs info | - | M | Reset leaves muted colours on one raw |
| #1895 | Request ability to pan the photo while zoomed in with an edi | enhancement | medium | easy | ui | - | 28 | H | hold Space to pan while in a tool |
| #1904 | Posterization in NEF files. | bug | medium | medium | raw | - | - | M | D3400 NEF posterization vs JPEG; samples linked |
| #1906 | ACERTOS NA SELEÇÃO DE FOTOS | bug | medium | medium | ui | multiple issues | - | M | pt: rating reorders grid, colour label, straighten preview |
| #1908 | Difficult to select crop handles in Crop mode | bug | medium | easy | ui | - | - | H | crop corner handles hard to grab at photo edge |
| #1915 | Windows 0.8.0: Hebrew folder names render as square boxes (m | bug | medium | medium | localization | - | 21 | H | Hebrew folder names as boxes (glyph fallback) |
| #1920 | Face Recognition accuracy | enhancement | medium | hard | masking-ai | multiple issues,needs info | - | M | face recognition accuracy + GPU |
| #1932 | Feature Request: Add Tone Curves to Local Masks (Lightroom C | enhancement | medium | hard | masking-ai | - | - | H | tone curve per mask |
| #1939 | Older Macbook but with open core - sequoia | bug | medium | hard | platform | - | 27 | M | 2013 MacBook OpenCore Sequoia won't run; labelled critical |
| #1940 | Videos imported from Lightroom don't show up with filter "Vi | bug | medium | medium | library | multiple issues | 18 | M | imported LR videos: Videos filter empty, sync fails |
| #1947 | Photo Merge accepts duplicate ids and unbounded inputs (memo | bug | medium | easy | hdr | already fixed | - | H | duplicate ids dedup b5c7eddf (PR #1959); cap on inputs? |
| #1948 | A 60 s GPU readback timeout on a large image disables the GP | bug | medium | medium | performance | multiple issues | 27 | H | 60 s readback timeout disables GPU for session |
| #1957 | Nikon D5000 NEFs show a pink border on the right edge. | bug | medium | easy | raw | needs info | 10 | M | D5000 NEF pink right border (crop) |
| #1969 | colors seems to be off | bug | medium | hard | colour | needs info | 1 | L | LR preset looks dull in LightCraft |
| #2019 | Allow opening source photo and rejecting false detections fr | enhancement | medium | easy | library | multiple issues | - | H | Unnamed Faces: open source photo, reject false faces |
| #2028 | Kelvin white balance missing for DxO demosaiced DNGs | bug | medium | medium | colour | duplicate | 1 | M | Kelvin WB for RAF; keeper #730; DxO DNG note separate |
| #2050 | Timelapse module (v1): deflicker, keyframes, apply and image | enhancement | medium | hard | develop | - | - | H | timelapse module: deflicker, keyframes, sequence export |
| #2052 | Export watermark and contact-sheet captions draw Hebrew, Tha | bug | medium | easy | localization | multiple issues | 21 | H | watermark/contact sheet: Hebrew/Thai/Arabic boxes |
| #2056 | Title: Import dialog: open a photo large (loupe) before impo | enhancement | medium | medium | library | multiple issues | - | H | loupe in import review |
| #2063 | Older Fujifilm RAFs (no raw IFD, SuperCCD) fail: "RAF withou | bug | medium | hard | raw | multiple issues | 20 | H | old FinePix RAF without raw IFD (SuperCCD); labelled critical |
| #2064 | Photo low resolution rendering makes images look blurry | bug | medium | medium | ui | - | - | H | soft at Fit on 1080p; PR #2012 open |
| #2084 | `mcp --automation-read-root` / `--automation-write-root`, li | enhancement | medium | easy | platform | - | - | H | mcp --automation-read/write-root like other Craft apps |
| #2085 | Web build: automatic language ignores the browser's language | bug | medium | easy | localization | already fixed | 21 | H | web Auto language follows browser 01495684 (PR #2181) |
| #2112 | Canon 5D Mark III CR2 colours look wrong on import | bug | medium | hard | colour | duplicate | 1 | L | 5D III CR2 colours; keeper #1343 (unsure, file unexamined) |
| #2113 | A7C II raws | bug | medium | medium | raw | needs info | 10 | L | A7C II "add support": decode or colour? |
| #2114 | Sidebar > Local: can't remove folders I've used, and "Show h | enhancement | medium | easy | library | - | - | M | part 2 fixed e2ea6576 (PR #2314); part 1 remove-for-good open |
| #2124 | catalog.log: `resync` is quadratic in the line length, so a | bug | medium | easy | library | crash | - | H | journal resync quadratic: damaged log line hangs open |
| #2154 | History steps store a full copy of every segmentation mask ( | bug | medium | medium | library | - | - | H | history stores full segmentation masks (98% of snap) |
| #2169 | Raw Files from Nikon NEF (HE) | roadmap | medium | hard | raw | needs sample | 7 | H | HE NEF (keeper for HE requests; PR #896) |
| #2184 | Multiselect does not apply the auto edit / preset to all sel | bug | medium | easy | develop | - | - | H | Auto/preset on multi-select applies to one photo only |
| #2192 | Lens corrections for Canon EOS 5D RAW files | bug | medium | medium | lens | - | 8 | H | 5D CR2: lens from LensType when LensModel missing |
| #2197 | Profiles | bug | medium | medium | develop | needs info | - | M | imported profiles land in Presets |
| #2212 | NEF files can’t be picked in File ▸ Import Photos… on Window | bug | medium | easy | platform | multiple issues | - | H | web: NEF not pickable in file dialog unless All Files |
| #2219 | Feature request: Recompute AI masks when copying or syncing | enhancement | medium | hard | masking-ai | - | 5 | H | recompute AI masks on paste/sync |
| #2226 | its not letting me update light craft | bug | medium | medium | platform | needs info | 27 | M | Windows updater: installer stops with code |
| #2231 | HDR, Pano, Pano HDR automically on collapsed stacks and stac | enhancement | medium | medium | hdr | multiple issues | - | H | merge from collapsed stacks, batch |
| #2232 | Lightcraft Stack color label, rating | enhancement | medium | easy | library | - | - | H | rate/label whole collapsed stack |
| #2239 | Cropping errors when importing cropped photos | bug | medium | medium | develop | needs info | 13 | M | LR XMP crop errors / double crop on import |
| #2245 | Canon Raw CR2 File  Export to jpg photo information lost in | bug | medium | easy | export-formats | needs info | - | M | CR2 → JPEG export loses EXIF (PTGui) |
| #2252 | Lightcraft bug - Lens distortion | bug | medium | medium | lens | needs info | 8 | L | lens distortion bug (video only) |
| #2270 | Web build: a host bridge for embedding pages (?host=parent), | enhancement | medium | medium | platform | - | - | H | web ?host=parent bridge |
| #2276 | Assisted Culling: measure focus on the subject (face regions | enhancement | medium | medium | library | - | - | H | Assisted Culling: focus on subject/AF point |
| #2288 | Manually sort folders, please | enhancement | medium | medium | library | - | - | H | custom sort order within folder |
| #2297 | HDR display: render the HDR rendition on the GPU (so drags s | enhancement | medium | hard | hdr | - | 14 | H | HDR rendition on GPU for drags |
| #2307 | Panasonic DC-S5 RW2 shot in L.Monochrome renders severely de | bug | medium | medium | colour | - | 1 | H | S5 L.Monochrome RW2 desaturated with Color profile |
| #2308 | Crop: on a straightened photo, dragging a free crop's corner | bug | medium | easy | ui | - | - | H | crop corner on straightened photo grows one side only |
| #2311 | Masking | bug | medium | medium | masking-ai | - | 24 | H | linear/radial placed at default spot, not drawn |
| #2312 | Picture Rating (e.g. Stars) | bug | medium | easy | ui | - | - | H | unrating in filtered view jumps to first photo |
| #2320 | Panorama Function only create small Panorama photo | bug | medium | medium | hdr | - | - | H | regression: panorama output smaller than inputs |
| #2323 | Capture One–style sessions, DAM-safe XMP sidecars, and Fujif | enhancement | medium | hard | library | multiple issues | - | H | C1 sessions, DAM-safe sidecars, Fuji DR awareness |
| #2357 | [Feature] People masks: pick a person, then select parts (sk | roadmap | medium | hard | masking-ai | - | 5 | H | People masks with parts |
| #2359 | Remove tool: brushed spots draw a stack of white rings, and | bug | medium | medium | masking-ai | multiple issues | 12 | H | Remove: stacked rings overlay, Fill smears large holes |
| #2360 | Lightcraft produces images with significantly more chroma no | bug | medium | medium | develop | multiple issues,needs info | - | M | more chroma noise than Affinity; bigger exports |
| #2369 | Render fidelity data: per-slider ΔE00 against Lightroom Clas | roadmap | medium | hard | colour | multiple issues | 3 | H | per-slider ΔE vs LR data (input for gap 3) |
| #2379 | Heal / Remove: weak results on large or complex areas | bug | medium | medium | masking-ai | duplicate | 12 | H | heal rings + weak fill; keeper #2359 |
| #2387 | Dust Spot Removal not working properly | bug | medium | medium | masking-ai | needs info | 12 | M | dust spot removal partial |
| #2396 | Highlight recovery headroom (top priority), a Linear Respons | enhancement | medium | hard | develop | multiple issues | 3 | H | highlight headroom, linear base curve, resampling |
| #2398 | Can't assign color to photo when culling | bug | medium | easy | ui | - | - | M | cull Info label f16c6ef0; verify colour-label click |
| #2399 | Advanced Lens & Exposure Filters in Lightcraft | enhancement | medium | medium | library | multiple issues | - | H | filters by aperture/shutter/focal + stats |
| #2402 | Lag issue | bug | medium | hard | performance | needs info | 26 | L | lag on i5 4th gen |
| #2408 | Locate Missing Files ... issue | bug | medium | easy | library | needs info | - | M | Locate Missing fails beyond 3 subfolder levels |
| #2433 | Lens Correction doesn't | bug | medium | hard | lens | duplicate | 8 | H | no lens data → lens DB; keeper #329 |
| #2438 | Feature Request: Enhance › Super Resolution — AI 2× / 4× ups | roadmap | medium | hard | masking-ai | - | 11 | H | Super Resolution (Real-ESRGAN) |
| #2440 | open as layers | enhancement | medium | medium | export-formats | - | 25 | H | Open as Layers in PhotoCraft |
| #2443 | Image quality export | bug | medium | easy | export-formats | needs info | - | L | exports "low quality"; settings unknown |
| #2472 | First launch: the main window opens larger than a 1366×768 s | bug | medium | easy | ui | duplicate | - | H | first window larger than 1366×768; already labelled duplicate |
| #2475 | Lightroom Import Mask Issue | bug | medium | medium | library | multiple issues,needs info | 13 | M | LR import: inverted masks, wrong mask exposure |
| #2476 | Lighroom Import Colors Issue | bug | medium | hard | library | needs info | 13 | L | LR import: colours/effects differ (gap 3 fidelity) |
| #2488 | Feature request: Adjustable Feather for Radial Gradient mask | enhancement | medium | easy | masking-ai | - | 24 | H | Feather slider for Radial Gradient |
| #2489 | Lightcraft | bug | medium | medium | ui | multiple issues,needs info | - | L | low-res image, sharpening no effect (iMac 27) |
| #2511 | Lens Correction has some flaws | bug | medium | medium | lens | multiple issues | 8 | M | lens correction XML loading: no feedback/logging |
| #2519 | Bug: PSD from "Edit in PhotoCraft" sorted by file creation d | bug | medium | easy | library | - | 25 | H | Edit In PSD sorted by file date, not EXIF date |
| #2538 | FreeBSD CI: control_server idle-timeout test fails intermitt | bug | medium | easy | platform | - | 9 | H | flaky FreeBSD control_server idle-timeout test |
| #2539 | Lossy WebP export with a quality setting | bug | medium | easy | export-formats | multiple issues | 25 | H | WebP export ignores quality (lossless only) |
| #2562 | Codecs: default `max_pixels = 1 << 30` allows ~13 GB working | bug | medium | medium | export-formats | multiple issues | - | H | codec max_pixels 1 Gpx default → 13 GB buffers (LC-12) |
| #2563 | CI: code-signing secrets passed to a reusable workflow at `c | bug | medium | easy | platform | multiple issues | - | H | CI: signing secrets to @main reusable workflow (LC-13) |
| #2565 | prefs.json LUT profile paths are trusted: read unbounded on | bug | medium | easy | library | multiple issues | - | H | prefs LUT paths read unbounded; lexical path check (LC-15) |
| #2568 | Dependencies: rustls-webpki 0.103.15 and webpki-roots 1.0.9 | bug | medium | easy | platform | multiple issues | - | H | cargo audit: rustls-webpki etc. advisories, no audit in CI (LC-18) |
| #2569 | wasm32: CR3 preview box scan adds untrusted u32 lengths with | bug | medium | easy | platform | crash | - | H | wasm32 CR3 box scan overflow → abort on web (LC-19) |
| #2571 | Export: the preset `subfolder` keeps `/` and `..`, so export | bug | medium | trivial | export-formats | - | - | H | export subfolder keeps ../ (LC-21) |
| #2575 | Geocoding download: `dataset` and `base` command parameters | bug | medium | easy | library | multiple issues | - | H | geocode download writes anywhere; unpinned (LC-25) |
| #2585 | AI Remove: local generative Remove for LightCraft, and a pro | enhancement | medium | medium | masking-ai | - | 12 | M | external AI Remove companion; asks for local AI hook |
| #2591 | Lens profiles | enhancement | medium | hard | lens | multiple issues,needs info | 8 | M | lens profiles for RX100 VII etc. |
| #2592 | Import a Lightroom catalog backup (.zip) directly | enhancement | medium | easy | library | multiple issues | 13 | H | import LR backup .zip directly |
| #2594 | Panasonic DC-S5: no colour model, so white balance stays rel | bug | medium | medium | colour | - | 1 | H | DC-S5 no colour model: relative WB, Kelvin kept as shot |
| #2595 | DNG from a Panasonic DC-S5 renders darker and bluer than Lig | bug | medium | medium | colour | - | 1 | H | DC-S5 DNG darker/bluer than LR with same settings |
| #2601 | Per-folder stores with a central index: portable folders and | enhancement | medium | hard | library | multiple issues | - | H | per-folder stores + central index (umbrella) |
| #2602 | Library-relative photo paths and volume identity (portable l | enhancement | medium | medium | library | duplicate | - | H | relative paths/volume identity; keeper #1116 |
| #2603 | Detect sidecar changes made outside LightCraft and resolve c | enhancement | medium | medium | library | - | - | H | detect external sidecar changes, conflict policy |
| #2606 | Re-importing a moved or backed-up Lightroom catalog adds eve | bug | medium | easy | library | - | 13 | H | re-import moved LR catalog duplicates collections |
| #2609 | A6000 inconsistent colors | bug | medium | hard | colour | duplicate,needs info | 1 | M | A6000 muted colours; keeper #190 |
| #2611 | Feature request: import a library from the cloud-based Light | enhancement | medium | hard | library | - | 13 | H | import from cloud Lightroom (Desktop) |
| #2613 | Lightroom catalog import: show Lightroom's previews for phot | enhancement | medium | medium | library | multiple issues | 13 | H | LR import: use LR previews for offline originals |
| #2614 | Lightroom catalog import: reuse Lightroom's Smart Previews, | enhancement | medium | medium | library | - | 13 | H | LR import: reuse LR Smart Previews |
| #2616 | Consistent exposure baseline for DR100 / DR200 / DR400 and D | bug | medium | medium | raw | multiple issues | - | H | DR100/200/400 exposure baseline (Fujifilm), in progress |
| #2617 | Find Missing Photos can't match the files of a library made | bug | medium | medium | library | - | - | H | Find Missing can't match Windows-made library on macOS/Linux |
| #2643 | Detail view: zoom above 100% blurs pixels (linear magnificat | bug | medium | trivial | ui | - | - | H | zoom >100% uses LINEAR filtering, blurs pixels |
| #2669 | Preset change so weird at 50 percent | bug | medium | easy | develop | - | - | M | preset Amount: weak below 50%, jump at 50 |
| #2672 | Import Lightroom Catalog: ask whether to merge into the open | enhancement | medium | easy | library | multiple issues | 13 | H | LR import: ask merge vs new library |
| #2674 | Face Regions on Portrait oriented pictures are drawn wrong | bug | medium | easy | library | - | - | H | MWG face regions wrong on portrait orientation |
| #2677 | Adding or subtracting to a mask that was duplicated & invert | bug | medium | easy | masking-ai | - | - | H | duplicated+inverted mask: +/- flipped |
| #2679 | histogram scrolling out of view with sliders | enhancement | medium | easy | ui | multiple issues | - | H | histogram scrolls away; vectorscope request |
| #2682 | Six undecodable files are re-rendered 37 times each in 154 s | bug | medium | easy | performance | multiple issues | - | H | undecodable files re-rendered 37× while idle |
| #2684 | Color science on lightcraft look different from lightroom | bug | medium | hard | colour | needs info | 1 | L | duller than LR with same adjustments |
| #2686 | Auto straighten turns straight photos (texture taken for the | bug | medium | medium | develop | multiple issues | - | H | Auto straighten rotates straight photos; silent when no lines |
| #2708 | [Bug] Photo merge auto-select doesn't select | bug | medium | easy | hdr | - | - | H | panorama Auto projection silent/does nothing |
| #2711 | [Bug] Merging images need a "whole image" approach | enhancement | medium | hard | hdr | - | - | H | panorama exposure/colour blending across seams |
| #2716 | Auto wb gives strange colors Sony a1 | bug | medium | hard | colour | - | 1 | M | a1 Auto WB cast from tungsten-set shot |
| #2719 | No kelvin in temperature slider on Sony a1 | bug | medium | medium | colour | duplicate | 1 | H | a1 no Kelvin; keeper #730 |
| #2720 | Image gets imported with a border on Sony a1 | bug | medium | medium | raw | - | 10 | H | a1 ARW border lines visible with clipping (crop) |
| #74 | Tablet editing | enhancement | low | hard | platform | - | - | H | tablet companion app; out of current scope |
| #154 | Bracket-aware auto-stacking and batch HDR merge | enhancement | low | medium | hdr | - | - | M | bracket detection for stacks + batch merge |
| #186 | calibration sliders are too subtle | bug | low | easy | develop | needs info | - | M | empty body; calibration slider strength |
| #197 | Support for LRCat files (lightroom catalogs) | enhancement | low | medium | library | already fixed | 13 | M | LRCat import landed 4a427894 (#218); lens filters exist in metadata filter |
| #231 | Feature Request: Plugins, especially for exporting photos to | roadmap | low | hard | classic-modules | - | 19 | H | export plug-ins (Piwigo) |
| #251 | [Feature Request] API support for external devices (eg. MIDI | enhancement | low | medium | ui | - | - | H | MIDI controller input via API |
| #276 | Suggestion for update | enhancement | low | trivial | library | needs info | - | L | import by folder likely already exists; confirm |
| #294 | [Feature Request] Networked Catalogs and Multi-User Support | enhancement | low | hard | library | - | - | H | networked multi-user catalogs |
| #301 | Hold on, I’ve spent the last year working through these same | question | low | trivial | develop | - | - | H | AGPL project offer; clean-room forbids reuse |
| #303 | Plugin system — in-app panel + community layer | roadmap | low | hard | classic-modules | duplicate | 19 | M | plug-in panel; keeper #231 |
| #348 | You can render previews and thumbnails stored in RAWs EXIF w | enhancement | low | medium | library | already fixed | - | M | embedded previews used: 30cdb4b1; verify thumbnails path |
| #438 | Prompt user to add shortcut to desktop | enhancement | low | easy | platform | - | 27 | H | installer desktop-shortcut option |
| #446 | Feature request: Detect spatial (stereo) HEIC photos: metada | enhancement | low | medium | library | - | - | H | spatial HEIC detection + filter |
| #463 | Can't decode LYTRO ILLUM raw LFR format | enhancement | low | hard | raw | needs sample | - | H | Lytro LFR light-field |
| #487 | [FR] Add lightcraft to WinGet community repository | enhancement | low | easy | platform | - | - | H | WinGet manifest + release automation |
| #490 | Allow Blacks/Whites adjustments beyond ±100 and clarify the | enhancement | low | easy | develop | - | - | M | Blacks/Whites range > ±100 for scans |
| #497 | Export photos as a timelapse video | enhancement | low | hard | video | - | 18 | H | timelapse video export |
| #579 | Persistent-library MCP unavailable in Codex Desktop when ano | bug | low | medium | platform | - | - | M | MCP library lock held by another Codex connection |
| #648 | Implement GitHub Issue Templates to Standardize Reporting | documentation | low | easy | platform | - | - | H | GitHub issue templates |
| #649 | Add version number in Changelog | enhancement | low | easy | ui | - | - | H | What's New shows version + date |
| #650 | Implement auto-detection for missing camera support (RAW, NE | enhancement | low | easy | raw | - | 10 | H | unsupported camera → link to raw.pixls.us |
| #707 | Mobile support | question | low | hard | platform | - | - | H | mobile port fork: how to upstream |
| #709 | Smart previews render visibly different from the original (8 | enhancement | low | medium | library | - | - | M | smart preview q97 a10bc04b; residual ΔE may remain |
| #740 | Window controls misaligned on macOS | bug | low | easy | ui | - | - | M | macOS window controls misaligned (wordcraft#225) |
| #795 | Feature Request: Smart previews all render into same folder | enhancement | low | medium | library | already fixed | - | M | sharded storage e90d83ec; progress via activity stack |
| #801 | Grain effect looks artificial and pixelated | bug | low | medium | develop | - | 3 | M | grain looks pixelated vs film grain |
| #835 | feat(automation): guide desktop users through agent setup | enhancement | low | medium | platform | - | - | H | desktop guide for MCP/agent setup |
| #836 | feat(distribution): provide supported CLI access from deskto | enhancement | low | medium | platform | - | - | H | stable CLI path from desktop installs |
| #839 | i18n: Add Norwegian interface translation | enhancement | low | medium | localization | - | 21 | H | Norwegian translation (machine-made file) |
| #859 | No support for P1 IIQ Raw format. | roadmap | low | hard | raw | needs sample | 20 | H | Phase One IIQ |
| #861 | Feature request: Sky replacement | enhancement | low | hard | masking-ai | - | 12 | H | sky replacement |
| #862 | Rpi 5 Videocore VII support | bug | low | medium | platform | - | 27 | H | RPi 5: wgpu limit max_inter_stage_shader_variables |
| #864 | 2 LightCraft feature requests. | enhancement | low | easy | ui | multiple issues | - | M | wheel/arrow nudges 78901971; overlay-hide left |
| #867 | Sony DRO on: pooled DRO-off tone curve leaves the A7 II dark | roadmap | low | medium | colour | - | 1 | H | DRO-on tone curve too bright on dark scene |
| #880 | Feature request: multi-device library sync over storage you | enhancement | low | hard | library | - | - | H | multi-device sync via op log |
| #881 | Window decorations and title bar inconsistent with VectorCra | enhancement | low | medium | ui | - | - | H | title bar / decorations like Vector/PhotoCraft |
| #895 | Windows - Add "Clean Uninstall" option to remove all user da | enhancement | low | easy | platform | - | 27 | H | uninstaller "remove all data" |
| #903 | Choose the thumbnail cache folder per library, like smart pr | enhancement | low | easy | library | - | - | H | thumbnail cache folder per library |
| #905 | Vignette: Paint style renders the same as Color, so the styl | bug | low | easy | develop | - | - | H | Vignette Paint style identical to Color (finish.rs) |
| #958 | Suggestion: Reorganize Effekts and Filters | enhancement | low | medium | ui | - | - | H | reorganise Effects/filters panels |
| #972 | LightCraft Crop and straighten icons | enhancement | low | medium | ui | - | - | H | crop/straighten icons like PhotoCraft |
| #973 | Support for Googlebooks | bug | low | medium | platform | needs info | 27 | M | Googlebook ARM: GUI never shows (software rasterizer) |
| #987 | Tone Curve: show the histogram going into the curve | enhancement | low | easy | develop | - | - | H | still open (aiongg on #2436): wants the INPUT histogram; b01902bb shows output only |
| #988 | Feature request: Advanced film simulation via spektrafilm | enhancement | low | hard | develop | - | - | M | spektrafilm film simulation; check licence first |
| #1006 | Rename Photos: on a case-insensitive volume the sidecar a.xm | bug | low | easy | library | - | - | H | Rename on case-insensitive volume: a.xmp → Trip.XMP |
| #1015 | Help ▸ Report a Bug… next to Send Feedback…: version, system | enhancement | low | easy | ui | - | - | H | Help ▸ Report a Bug with version/system/log |
| #1016 | Face recognition for stylised characters or animals | enhancement | low | medium | masking-ai | - | - | M | face detection for stylised/anime faces (custom ONNX) |
| #1042 | Renderer sizing: give the pipeline one exact output size, wo | enhancement | low | medium | develop | - | - | H | single exact output size in renderer (structural) |
| #1046 | UI decides on error message text (offer a model, cancelled v | bug | low | medium | ui | already fixed | - | H | typed error kinds e4c36749, b3fcb779 |
| #1058 | Proposal: per-component render cache versions instead of one | enhancement | low | medium | performance | - | - | H | per-component render cache versions (design) |
| #1109 | Auto Import: option to include subfolders of the watched fol | enhancement | low | easy | library | - | - | H | Auto Import: include subfolders |
| #1118 | [To discuss] DAM accessible across multiple machines | question | low | hard | library | duplicate | - | M | multi-machine DAM; keeper #294 |
| #1130 | populate a gallery live during import | enhancement | low | medium | library | - | - | M | grid fills live during import |
| #1131 | adjusting levels by dragging over a hystogram | enhancement | low | medium | develop | needs info | - | L | drag on histogram to adjust levels; body "needs research" |
| #1172 | Clarify Error Message for NEF | enhancement | low | trivial | raw | already fixed | 7 | H | HE NEF message explicit: 90a4088f, fa7ee6ee |
| #1183 | Docs: craftrules standards and the gitignored plan/ are unre | documentation | low | easy | platform | - | - | H | craftrules and plan/ unreachable for contributors |
| #1184 | Docs: no written contribution workflow, and AGENTS.md / CLAU | documentation | low | easy | platform | - | - | H | no CONTRIBUTING; AGENTS.md vs CLAUDE.md drift |
| #1201 | Feature Request – Focus Stacking and Astrophotography Stacki | enhancement | low | hard | hdr | - | - | H | focus stacking + astro stacking |
| #1203 | Fujifilm recipe inspector: show MakerNote film settings | enhancement | low | easy | library | - | - | H | Fujifilm MakerNote recipe inspector (read-only) |
| #1230 | Optional RAW+JPEG paired culling | enhancement | low | medium | library | - | - | H | RAW+JPEG paired culling |
| #1269 | Ticket to close tickets: already done, duplicates, or off-to | question | low | trivial | library | multiple issues | - | H | meta: list of issues to close; maintainer audit ongoing |
| #1273 | As-shot white balance not read on six older bodies: Nikon D2 | bug | low | medium | raw | - | 10 | M | WB for 6 old bodies: c07035c4, 5eee65ed (parts); verify all six |
| #1274 | Nikon: the D1X renders squashed to 3:1 (non-square pixels), | bug | low | medium | raw | multiple issues | 10 | H | D1X aspect, E8800 fields, P330/P7xxx NRW |
| #1278 | Blackmagic lossy CinemaDNG (12-bit DCT tiles under compressi | bug | low | hard | raw | needs sample | 20 | H | Blackmagic lossy CinemaDNG DCT: import fails |
| #1290 | Feature Request: Better Library open options. | enhancement | low | medium | library | - | - | H | library open options: recent list, file association |
| #1339 | Clean room implemenmtations are not so clean | question | low | trivial | raw | - | - | H | clean-room process challenge (CRX provenance) |
| #1347 | Feature request: optional macOS system RAW decoder (Core Ima | enhancement | low | medium | raw | - | - | H | opt-in macOS CIRAWFilter fallback (not pure Rust) |
| #1352 | Progress Bar for AI Mask Selections | enhancement | low | easy | masking-ai | - | 5 | M | progress for AI mask selection |
| #1393 | Settings - Ability to "disconnect" from the Smart previews f | enhancement | low | easy | library | - | - | M | Settings: disconnect smart previews folder |
| #1395 | Right-to-left languages: what the interface needs before Ara | roadmap | low | hard | localization | - | 21 | H | RTL: bidi + mirroring before Arabic/Hebrew |
| #1396 | Windows - v.0.7.1 - Lrcat importing progress bar hangs "Impo | bug | low | easy | library | - | 13 | H | LRCat progress stuck at "14 of N" |
| #1403 | macOS - entire disk access | question | low | easy | platform | - | - | M | macOS full-disk access; sandboxing/permissions |
| #1437 | Open tool panels as tabs by dragging the panel icon | enhancement | low | medium | ui | - | - | H | drag panel icon to open as tab |
| #1449 | Library: search and filter named people like keywords | enhancement | low | medium | library | - | - | M | steps 1–2 landed 70c5cdc2; rest pending |
| #1488 | Experimental Nikon Picture Control support for NEF files | enhancement | low | hard | colour | - | 1 | M | Nikon Picture Control (experimental contributor work) |
| #1492 | Build Smart Previews in parallel instead of one photo at a t | enhancement | low | easy | performance | - | 26 | H | build smart previews in parallel |
| #1520 | Brush interpolation caps each segment but still allocates an | bug | low | easy | develop | already fixed | 24 | H | dab budget d770c523, 4d8f9358 (PR #1892) |
| #1553 | Help ▸ Check for Updates… (notify only, no auto-install) | enhancement | low | easy | platform | - | - | H | Help ▸ Check for Updates (MENU-APP-UPDATES ⬜) |
| #1591 | Proposal: New SVG icons for the sidebar | enhancement | low | easy | ui | - | - | M | contributed sidebar SVG icons; check licence/attribution |
| #1594 | DXO export function | enhancement | low | medium | export-formats | - | - | H | round trip to DxO (Edit In external app) |
| #1596 | File › Save All: save every open document in one go | enhancement | low | easy | export-formats | - | 25 | M | Save All for Edit In documents (likely PhotoCraft side) |
| #1615 | Proposal: New icons for the bottom navigation bar | enhancement | low | easy | ui | duplicate | - | M | bottom-bar icons; keeper #1591 |
| #1621 | Request: Capture One Integration | enhancement | low | hard | library | - | - | H | Capture One sessions/integration |
| #1622 | Request: Integration with Apple Photos | enhancement | low | hard | library | - | - | H | Apple Photos sync |
| #1629 | Request - Enable MCP server through settings | enhancement | low | easy | platform | - | - | H | enable/disable MCP server in Settings |
| #1636 | Request: Implement pixel shift merging | enhancement | low | hard | hdr | - | - | M | pixel-shift merge / NEFX |
| #1643 | Laggy cursor when using the crop & rotate tool | bug | low | medium | ui | - | - | M | laggy cursor in crop rotate mode |
| #1650 | Suggestion : create a wiki for camera data | documentation | low | easy | raw | - | 10 | M | public camera compatibility wiki/page |
| #1675 | LRC-LIB-PUBLISH: Export and Share to Google Photos (OAuth 2. | enhancement | low | hard | classic-modules | - | 16 | H | publish to Google Photos (OAuth) |
| #1677 | LR-IMP-GPHOTOS: Import photos and RAWs via Google Photos Pic | enhancement | low | hard | library | - | - | H | import via Google Photos Picker API |
| #1701 | Feature rq/Suggestion; a way to have 2 different lrcat's syn | enhancement | low | hard | library | duplicate | - | M | catalog sync across devices; keeper #880 |
| #1717 | Lensfun profiles not recognized | bug | low | easy | lens | needs info | 8 | M | LIGHTCRAFT_LENSFUN_DIR ignored; lensfun data CC-BY-SA, check policy |
| #1725 | Print: send to a printer (Page Setup, printer driver), not o | roadmap | low | hard | classic-modules | - | 15 | H | print to printer driver, not only PDF |
| #1727 | Security Proposal: Enforce 2FA and Commit Signature Verifica | question | low | easy | platform | - | - | H | enforce 2FA + signed commits (repo policy) |
| #1737 | Contribution offer: review-first sensor dust, external RGB d | enhancement | low | medium | develop | multiple issues | - | M | fork contributions: dust, denoise bridge, French |
| #1756 | Help File for Lightcraft not found for Windows Desktop | documentation | low | easy | ui | already fixed | - | H | Remove tool help 8109deb5 (PR #1909) |
| #1765 | Panorama: real pairs rejected by match verification in scene | bug | low | medium | hdr | - | - | H | panorama drops moving-water pairs silently |
| #1766 | Proposal: ColorChecker chart calibration and per-picture-sty | enhancement | low | hard | colour | - | 1 | H | ColorChecker chart calibration for Sony |
| #1768 | Right-clicking a panel when only one is open errenously show | bug | low | trivial | ui | - | - | H | "Move to Group" shown with no group |
| #1774 | App Icon doesn't support the new MacOS clear option when ope | bug | low | easy | platform | - | - | M | macOS clear icon style when running |
| #1801 | Report: a real-world corpus run of 600 photos and 85 CC0 raw | bug | low | medium | platform | multiple issues | 27 | H | Windows corpus run report; overview of split issues |
| #1833 | Package format preference is ignored (apps still install as | bug | low | easy | platform | multiple issues | - | M | launcher package format ignored; ONNX only with RPM |
| #1839 | Windows build does not remember window size and position bet | bug | low | easy | ui | - | - | H | Windows: window size/position not remembered |
| #1842 | Color Mixer UI | enhancement | low | easy | ui | - | - | M | Color Mixer layout like LR |
| #1847 | Adwaita support and window-controls (including left/right sy | enhancement | low | medium | ui | - | - | H | Adwaita decorations + button side on Linux |
| #1854 | Crop: save, name, reorder and delete your own aspect ratios, | enhancement | low | medium | develop | - | - | H | custom crop aspect ratios |
| #1875 | Is the cloud button needed in the top right? | enhancement | low | trivial | ui | - | - | H | remove inert Cloud button |
| #1885 | Some labels can be highlighted | bug | low | easy | ui | - | - | H | static labels selectable |
| #1890 | Improve error logging for unrecognised image formats to incl | enhancement | low | trivial | ui | already fixed | - | H | render failure logs include path d989d973/b427378e |
| #1897 | Feature Request: Alter Performance->Preview Size changes for | enhancement | low | easy | performance | - | - | H | preview size as % slider |
| #1899 | Colour Grading wheel should capture mouse as in LR | enhancement | low | medium | ui | - | - | H | colour wheel captures mouse cursor |
| #1918 | After edit, Library thumbnail is blurry | bug | low | easy | library | - | - | H | thumbnail blurry after strong crop |
| #1941 | Implement raw format readers as loadable plugins | question | low | hard | raw | multiple issues | - | H | raw readers as plug-ins; clean-room conflict |
| #1949 | pt-BR UI: HDR button covered by Reset, filter bar overflows, | bug | low | easy | localization | multiple issues | 21 | H | pt-BR layout + strings; part d999e382 |
| #1950 | U+25B8 "▸" has no glyph in Inter and renders as a box in UI | bug | low | easy | localization | - | 21 | H | ▸ missing in Inter; 11 strings left |
| #1952 | Small findings from a 0.8.0 test pass: zero-area crop, PNG a | bug | low | easy | develop | multiple issues | - | H | small findings; parts fixed be342839, 04e20de3 |
| #1981 | Feature Request: Multi-Watermark system. | enhancement | low | medium | export-formats | multiple issues | - | H | multiple watermark presets |
| #1999 | Adding a favourite preset doesn't match the profile behaviou | enhancement | low | easy | develop | - | - | H | favourite presets grouped like profiles |
| #2000 | Version Indicator | enhancement | low | easy | platform | duplicate | - | H | update indicator; keeper #1553 |
| #2002 | Video support | roadmap | low | hard | video | needs info | 18 | H | video support + video dehaze |
| #2007 | Feature Request: Multiple Histogram & Scope Views (Affinity | enhancement | low | medium | develop | - | - | H | multiple histogram/scope views |
| #2022 | Nikon Z9: Offering NEF reference files for RAW quality testi | enhancement | low | medium | raw | needs info | 10 | M | Z9 reference NEFs offered for testing |
| #2037 | Feature request: Create new folder from context menu and mov | enhancement | low | easy | library | multiple issues | - | H | new folder from context menu + move photos |
| #2058 | Dragging image on app icon in MacOS dock doesn't do anything | enhancement | low | easy | platform | - | - | H | drop image on Dock icon (macOS open documents) |
| #2082 | Shift + left-click to draw straight lines with the brush too | enhancement | low | easy | masking-ai | - | 24 | H | Shift-click straight brush line |
| #2103 | Feature request: Add Windows on ARM and Linux on ARM support | enhancement | low | hard | platform | multiple issues | 27 | M | Windows/Linux ARM builds (windows-arm64 job exists) |
| #2104 | LR-EXP-PRESETS: Named export presets (Instagram, Web, Full-R | enhancement | low | medium | export-formats | - | - | H | named export presets |
| #2107 | Panasonic RW2: absolute colour temperature and in-camera LUT | enhancement | low | medium | colour | multiple issues | 1 | H | RW2 Kelvin + PhotoStyle/LUT metadata ignored |
| #2142 | Feedback: the built-in presets are great, would love more va | enhancement | low | medium | develop | - | - | H | more varied built-in presets |
| #2156 | captura conectada a la camara en lightroom | roadmap | low | hard | classic-modules | - | 17 | H | tethered capture (Spanish) |
| #2158 | No Color Channel Mixer? | enhancement | low | medium | develop | - | - | H | channel mixer (infrared swap) |
| #2187 | Feature proposals: one-click AI models download, Lightroom m | enhancement | low | hard | ui | multiple issues | - | M | bundle of fork features (model download, module bar, lrplugin…) |
| #2225 | would love to see the plugin: negative lab pro run on it. | roadmap | low | hard | classic-modules | duplicate | 19 | M | Negative Lab Pro plug-in; keepers #231/#1346 |
| #2234 | Lightcraft HDR, Pano, Pano HDR prefixes changeable and image | enhancement | low | easy | hdr | multiple issues | - | H | merge filename suffixes configurable |
| #2248 | 'Before' changes flicker when switching photos | bug | low | easy | ui | - | - | H | Before flashes edits when switching (draft PR #2250) |
| #2254 | Contributors: the About window's list is stale since 2026-10 | bug | low | easy | platform | - | - | H | About contributors list stale |
| #2268 | Overlapping window buttons with new fullscreen behaviour | bug | low | easy | ui | - | - | H | window buttons overlap after fullscreen exit |
| #2269 | 'Before' label flickers and can disappear when zooming | bug | low | easy | ui | duplicate | - | H | Before label flicker; keeper #2267 |
| #2275 | Assisted Culling: adjustable burst gap and similarity | enhancement | low | easy | library | multiple issues | - | H | Assisted Culling thresholds adjustable |
| #2277 | Assisted Culling: stack each burst with its best photo on to | enhancement | low | medium | library | - | - | H | Assisted Culling: stack bursts, best on top |
| #2318 | Missing calibrated camera colour for Sony a1 | roadmap | low | hard | colour | needs sample | 1 | H | Sony a1 calibrated profile |
| #2324 | Improve Documentation and Guidance for Denoise and SAM3 | documentation | low | easy | masking-ai | multiple issues | 11 | H | docs for Denoise + SAM3 setup in UI |
| #2331 | how to install sam3 model | question | low | trivial | masking-ai | duplicate | 5 | H | how to install SAM3; answered pattern (#715) |
| #2339 | Add AI denoise model | question | low | trivial | masking-ai | duplicate | 11 | H | AI denoise model missing; keeper #1760 |
| #2342 | [Feature request] Vertical filmstrip | enhancement | low | medium | ui | - | - | H | vertical filmstrip |
| #2343 | [Feature request] Full-height 3:2 photo layout with panels o | enhancement | low | medium | ui | duplicate | - | M | full-height layout; keeper #2342 |
| #2361 | [Feature request] Add a button to automatically crop the ima | enhancement | low | easy | lens | - | - | H | Constrain crop after manual distortion |
| #2372 | Grain Effect Minimum Scale Far Too Large | bug | low | easy | develop | - | - | H | grain minimum size too large |
| #2382 | In Light Mode: border around selected photo not visible | bug | low | trivial | ui | - | - | H | light mode: selected border invisible |
| #2383 | Nikon Raw Support | roadmap | low | hard | raw | needs info | 7 | L | "Nikon raw support" vague; ask camera/NEF type |
| #2389 | [Feature Request] Add speed edit keys like in Capture One | enhancement | low | medium | ui | - | - | H | C1 speed-edit keys (hold key + wheel) |
| #2391 | [Feature Request] Add retouch functionality for people like | enhancement | low | hard | masking-ai | - | 12 | H | skin retouch tab |
| #2392 | Presets: applied preset highlight is lost after switching ph | bug | low | easy | develop | already fixed | - | H | preset highlight kept 61823b17, dad4d625 |
| #2397 | Web build: report the open document in the viewport title | enhancement | low | easy | platform | - | - | H | web: viewport Title with document |
| #2405 | windows | bug | low | easy | ui | - | - | M | presets panel fills full top area (French) |
| #2411 | Lightcraft needs an option to expand photo | enhancement | low | hard | masking-ai | duplicate | 12 | M | generative expand; already labelled duplicate |
| #2436 | Backlog triage: duplicate PRs and issues, safe-to-close list | question | low | trivial | platform | multiple issues | - | H | backlog triage report (no action) |
| #2437 | [Feature request][LightCraft] "Show in Folders" option in th | enhancement | low | easy | library | already fixed | - | H | Photo ▸ Show in Folders 4ab5dcc3 (PR #2441) |
| #2442 | Support for CRW file format | roadmap | low | hard | raw | needs sample | 20 | H | Canon CRW |
| #2458 | the preference button does not open a window so that i can a | question | low | trivial | ui | needs info | - | L | VST folder preference: likely wrong app (SoundCraft) |
| #2460 | macOS fullscreen: improve filename and image info display | enhancement | low | easy | ui | multiple issues | - | H | macOS fullscreen: filename overlaps controls; show flag/stars |
| #2461 | filtration mot clé | enhancement | low | easy | library | - | - | H | keyword filter "no keywords" (French) |
| #2466 | Masks panel: add "Delete All Masks" to the mask right-click | enhancement | low | trivial | masking-ai | - | - | H | "Delete All Masks" in mask context menu |
| #2467 | Presets panel: Expand All / Collapse All Groups, and groups | enhancement | low | easy | develop | - | - | H | presets: expand/collapse all, closed by default |
| #2469 | Distribute lightcraft-cli via Homebrew | enhancement | low | easy | platform | - | - | H | Homebrew formula for lightcraft-cli |
| #2474 | Filetype Labels black in Light mode Square grid view | bug | low | trivial | ui | - | - | H | light mode: file-type labels black in square grid |
| #2496 | People view: option to sort named people A–Z / by name / by | enhancement | low | easy | library | - | - | H | People view sort A–Z / count |
| #2497 | Feature turned into unexpected behavior. | enhancement | low | trivial | ui | - | - | H | make wheel-on-slider opt-in (#1355 follow-up) |
| #2498 | Cloud Icon | enhancement | low | trivial | ui | duplicate | - | H | Cloud icon; keeper #1875 |
| #2500 | [UI Feature Request] Display shortcut key to cycle between P | enhancement | low | trivial | ui | - | 28 | H | show G shortcut on grid menu items |
| #2510 | Export presets: update, rename and delete without retyping t | enhancement | low | easy | export-formats | - | - | H | export presets: update/rename/delete |
| #2516 | [Feature Request] People view: option to limit it to the sel | enhancement | low | easy | library | - | - | H | People view scoped to folder/selection |
| #2517 | Loupe/Magnififer Glass from Apple Aperture | enhancement | low | medium | ui | duplicate | - | M | Aperture loupe magnifier; keeper #2668 |
| #2518 | Lighttable in Lightcraft | enhancement | low | hard | ui | - | - | H | virtual light table |
| #2549 | Dodge / Burn \| Brush stroke preview OFF option | enhancement | low | easy | masking-ai | - | 24 | H | option to hide brush overlay (dodge/burn) |
| #2566 | Quadratic work on file-derived input: IPTC keyword dedup, XM | bug | low | medium | library | multiple issues | - | H | quadratic parsing on file input (LC-16) |
| #2567 | Lightroom `.lrcat` reader: schema parsing is quadratic with | bug | low | medium | library | multiple issues | 13 | H | lrcat schema parse quadratic, WAL held twice (LC-17) |
| #2570 | Unbounded reads of command- and folder-supplied files; `meta | bug | low | medium | library | multiple issues | - | H | unbounded reads of command/folder files, FIFOs (LC-20) |
| #2572 | Desktop: the panic log defaults to a fixed shared path (`/tm | bug | low | trivial | platform | - | - | H | panic log fixed /tmp path (LC-22) |
| #2573 | MCP: render and screenshot PNGs are written to predictable, | bug | low | easy | platform | - | - | H | MCP temp PNGs world-readable (LC-23) |
| #2574 | Network listeners: per-read timeouts let slow clients hold e | bug | low | medium | platform | multiple issues | - | H | slow clients hold listener slots (LC-24) |
| #2576 | Memory gate: `acquire` / `acquire_urgent` add byte counts wi | bug | low | trivial | performance | - | - | H | memory gate add without overflow check (LC-27) |
| #2577 | GPU denoise workspace pool: `forget()` notifies without the | bug | low | easy | performance | - | 11 | M | GPU denoise pool missed wakeup (LC-28, plausible) |
| #2578 | `engine` and `meta` crate roots still lack the mandated `den | bug | low | easy | platform | - | - | H | engine/meta roots lack deny(clippy::unwrap_used…) (verified) |
| #2579 | Small robustness findings from the 31ee2643 audit (preview c | bug | low | easy | platform | multiple issues | - | H | grouped minor audit findings |
| #2580 | Round 3 integration plan (440 open PRs) | question | low | trivial | platform | - | - | H | PR integration plan round 3 (meta) |
| #2586 | Export presets in Lightcraft | question | low | trivial | export-formats | duplicate | - | H | delete export preset; keeper #2510 |
| #2588 | Unable to select more than one filter option from picked/rej | enhancement | low | easy | library | - | - | H | filter on several flag states at once |
| #2604 | Sidecar location (none / next to originals / subfolder) and | enhancement | low | medium | library | multiple issues | - | H | sidecar location options, sparse sidecars |
| #2625 | view.maskOverlayColor accepts "#+f+f+f" as a colour (parse_r | bug | low | trivial | ui | - | - | H | parse_rgb accepts "#+f+f+f" |
| #2652 | Detail view: zoom stops at 800 %; allow 1600 % | enhancement | low | easy | ui | - | - | H | zoom to 1600% |
| #2657 | AVIF support | enhancement | low | medium | export-formats | - | 25 | M | AVIF import (export exists) |
| #2663 | lightcraft-cli commands: list commands sorted by id | enhancement | low | trivial | platform | - | - | H | CLI commands list sorted by id |
| #2668 | Capture One–Style Image Loupe | enhancement | low | medium | ui | - | - | H | cursor-following magnifier loupe |
| #2673 | LightCraft window behaviour | bug | low | easy | ui | needs info | - | M | maximised window doesn't cover screen |
| #2690 | Recently Deleted keeps no date, so the view is ordered by im | enhancement | low | medium | library | multiple issues | - | H | Recently Deleted: dates, per-item delete |
| #2695 | Lightcraft Compare View - side by side/stack toggle feature | enhancement | low | easy | ui | - | - | H | Compare view stacked layout toggle |
| #2718 | Opening Larger Libraries from "Open Recent Library" menu han | bug | low | easy | ui | - | 26 | H | Open Recent large library: menu stays open, no feedback |

Machine-readable: `lightcraft-issues-labels.tsv`. Prepared by @francoisgn with Claude Code; corrections welcome.
