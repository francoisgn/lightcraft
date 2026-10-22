# Round 3 integration plan

Draft for a triage issue, prepared by @francoisgn after rounds 1 (#2470, 43 PRs) and 2 (#2515, 85 PRs). Main = `31ee2643c`. Every open PR (440 at dump time, 2026-10-22) is in exactly one bucket; the row-by-row table is `round3-final.tsv`.

## TL;DR

| Bucket | PRs | What it is |
|---|---|---|
| **3a fast lane** | 44 | Green or CI-less-but-safe, clean or docs-only conflicts, tests present, reviewed diffs. Four tracks with disjoint code files. |
| **3b standard** | 134 | Worth merging; each needs a rebase, a CI re-run, or one integrator look. Grouped by area in merge order. |
| **C decision docket** | 130 | Blocked on one ruling (catalog format, Process V3, unsafe, provenance, licence, dependencies, CI policy) or a product call. |
| **D close** | 39 | Duplicate (keeper named), proven on main (commit or file:line), or unreviewable. |
| **E author action** | 93 | One concrete ask each; nothing for the integrator yet. |

Issues that close with 3a: #1624 #1841 #1899 #1944 #2212 #2275 #2312 #2460 #2500 #2505. With 3b: 42 more (list below).

Three rulings unblock the most PRs: **catalog format numbering** (5 in 3b + ~12 elsewhere), **Process V3** (17), **camera-colour / provenance** (27).

## 3a — fast lane (44)

Conflicts listed as `mech-conflict` are only in `docs/parity-checklist.md`, `docs/whats-new.md`, `docs/gaps.md`, `ROADMAP.md`, locales, `assets/ATTRIBUTION.md` or `contributors/people.toml`; keep both sides. Tracks share no other file (checked against each PR's changed-file list); within a track the order is the merge order. Suggested `next` tracks: r3-t01..t04, `cargo xtask ci` after each track.

### Track 1 — UI (ui-egui lib.rs / menus.rs / detail.rs / dialogs.rs chain), 22 PRs, sequential
| PR | author | CI | conflict | closes | note |
|---|---|---|---|---|---|
| #1287 | nledford | success | clean |  | Settings window one size; base for #2522/#2524/#2525 |
| #2076 | nledford | success | clean |  | One star-rating widget; before #2078/#2164 |
| #2077 | nledford | success | clean |  | One progress bar/spinner; before #2079/#2373 |
| #2195 | nledford | success | clean |  | Menu toggles named for the thing; labels change (user-visible) |
| #1313 | mattsivak | none | clean |  | Help ▸ Debug ▸ Show Frame Rate; approved, 4 tests |
| #1914 | Ketbome | success | clean |  | Opt-in close dialog on backdrop click, default off |
| #1979 | marcoarnulfo | success | clean | 1899 | Colour-grading wheel locks pointer; approved |
| #1922 | Ketbome | none | mech | | Middle-button pan; #2065/#1168 rebase after |
| #1074 | emmertex | success | mech | | Zoom-window overlays + GPU soft proof; #1027 base is merged |
| #2501 | chordpli | success | clean | 2460 | Info overlay clears macOS controls; approved |
| #2327 | alvarogonjim | success | mech | 2312 | Rating out of view continues in place; approved |
| #2345 | mahmatias | success | mech | | Lock Aspect Ratio as its own A row; no reviewer yet |
| #2513 | tylerphotos | success | mech | 2500 | Grid cycle shortcut hint; keeper over #2174 part |
| #2279 | helgehelge123 | pending | clean | 2275 | Burst gap/similarity params; base of #2281/#2283; confirm CI first |
| #1417 | emmertex | success | clean | | Edit in PhotoCraft reports failures, finds the app |
| #2468 | midasdf | success | mech | | Japanese paper sizes; approved |
| #2430 | joblonfk001 | success | clean | 2212 | Web picker accept list from EXTENSIONS; keeper over #2214/#2227 |
| #2455 | Bruno-Alumn | success | clean | | Web command refuses non-object params |
| #2453 | Bruno-Alumn | success | clean | | Web page title names the photo; keeper over #2174 part |
| #2506 | clydecbrown | success | mech | 2505 | Strict shift_iso tail parser; #2530 rebases after |
| #1846 | lewandowskit | pending | mech | | Polish format messages + i18n test |
| #2205 | nledford | success | clean | | Drag-over overlay, drop opens import review; 47 files, last |

### Track 2 — engine/catalog/merge, 8 PRs
| PR | author | CI | conflict | closes | note |
|---|---|---|---|---|---|
| #2015 | G6bill | success | clean | 1944 | keyword.export write_atomic + check_write_target; keeper over #1954 |
| #2422 | nledford | success | clean | | Smart albums counted once per pass; approved |
| #2424 | nledford | success | clean | | Rule-reorder move engine, 13 tests, no UI yet |
| #2503 | nledford | success | clean | | Low-priority availability sweep; approved |
| #2502 | bdebyl | success | mech | | %B/%b month names, bounds-checked |
| #2482 | mattsivak | success | clean | | Merge refine/flow (2/3 of #1887); approved |
| #2542 | Silvertree2010 | pending | clean | | Exact 1/N ExposureTime; 18 lines + round-trip test |
| #1878 | mattsivak | none | mech | | HDR merge preview zoom/pan; 4 tests |

### Track 3 — tooling, deps, docs, 9 PRs
| PR | author | CI | conflict | closes | note |
|---|---|---|---|---|---|
| #2302 | mattsivak | success | CLAUDE.md+docs | | Linux CI on every PR, `ci --quick`, CI lock; deep-reviewed |
| #2494 | dylanmtaylor | success | clean | | Python tool path validation, sonar excludes |
| #2541 | AlexChambers | success | clean | | Control-server timeout tests made deterministic (may cure flakes) |
| #1385 | nledford | none | clean | | PR template |
| #2507 | IgnatAi401 | success | clean | | Four dead README.zh-hans links |
| #2255 | valenfys | success | people.toml | | Contributor entry |
| #1859 | wstock | success | clean | 1841 | rust-version 1.95 (jixel 0.3.4 on main needs 1.94); keeper over #2018 |
| #1976 | ternarybits | success | clean | | Guided-filter coefficient sampling, bit-exact test |
| #1464 | natocool2 | none | clean | | quick-xml 0.38→0.41 (RUSTSEC-2026-0194/0195); last; re-run #2529 CI after |

### Track 4 — export, gpu notice, text, keywords, locale, 5 PRs
| PR | author | CI | conflict | closes | note |
|---|---|---|---|---|---|
| #1499 | nevicia2010-hub | success | mech | | Watermark aspect/orientation, gain-map size limit; 4 tests |
| #1644 | mjohnson7cd | none | clean | 1624 | No pop-up on silent DX12 probe fallback; test |
| #2072 | AlexChambers | success | mech | | Arabic/Thai export text fallbacks; #2395 after |
| #1603 | nledford | none | mech | | Keyword List dot for applied child; 2 tests |
| #1868 | noigit01 | pending | mech | | Polish locale fill; pl.json conflicts with #1846 (keep both) |

Not promoted although green and clean: #2079/#2080 (49/52 files), #2203 (catalog VERSION), #2034 (30 files in import core), #1848 (GPU core), #1907, #2459 (680-line concurrency rewrite), #1415 (semantics change). They lead 3b.

## 3b — standard (134), by area, in merge order

- **settings** (after #1287): #2524 (approved, green; *not* stacked on #1287, needs rebase) → #2522 → #2523 → #2525 (shares `Tokens::legible` with #1374; agree `>` vs `→` with #2016).
- **ui-components** (after #2076/#2077): #2078 → #2079 (approved, green, clean, 49 files: alone + ci) → #2080 (52 files, before #2194) → #2164 → #2162 → #2373 → #2016 (after #2195) → #1900 (global `selectable_labels=false`: audit copyable texts first) → #2370 (toasts; keeper over #1936) → #2237, #2287, #2325, #1639, #1674, #1218, #1243 → #1244, #1245 (after #2513), #1626, #1195, #2011, #1956 → #2531, #2109, #1916, #2204 (after #2205), #1822 (takes Presets' Shift+P), #999, #2102 (new direct dep `dispatch2`).
- **culling** (after #2279): #2281 (stacked) → #1418 (rebase onto both). #2283 is in catalog-format.
- **import-dup** (#1401, three complementary approaches): #2034 (sync folder; approved, clean) → #1552 (import option) → #1425 (explain matches; CI red) → #1117, #1095, #1170, #2021, #1931, #1638.
- **walk-sidecars**: #2459 (keeper walker; approved, clean) → #2478 (not stacked on #2477) → #2480 (drop its `files_in_parallel`, use #2459) → #1575 → #2310 → #2419 (rebase on #2459).
- **lrcat**: #1232 (keeper over #1247; main still caps tables at `lightroom_sqlite.rs:88`) → #1735 → #2051 (stacked) → #1014, #2246, #1386, #2412 (maintainer PR; nix step moves to shared workflow).
- **heif-meta**: #1208 (keeper over #2290; HEIF container Exif; closes #1233) → #1718 (keeper over #1971; closes #1618) → #2529 (after #1464) → #2530 (trivial rebase after #2506).
- **catalog-format** (after ruling C1): #2203 → #2087 → #2088 → #2111 → #2283. Each currently sets `VERSION = 10`; renumber sequentially at merge.
- **perf** (after #2422): #2423 → #2418 → #2415 → #2043 → #2047 → #2414 → #2464 → #1147, #1156, #1420, #2463, #1168 / #2065 (coordinate Space zoom, after #1922), #1400 → #1551 (dedicated pass, 5k lines).
- **gpu**: #1848 (alone, bench before/after) → #2351 → #2170 (deny lints: last in the round, then clippy everything) → #1240 (needs a GPU machine).
- **bg-tasks**: #1711 → #1907, #1925, #1124, #1862, #2329; #2259 waits for the #1642 ruling.
- **export-merge**: #1415 (explicit paths now honour conflict policy) → #435 → #2010 → #2030 → #2029 → #2492 → #1067 (regenerate locales) → #910.
- **library**: #768 → #775 → #1153, #1002, #1122, #1128, #1568, #1781, #1072, #2153 (keeper over #2179), #2176, #1856, #2207, #2328 (UX change: ack), #2367, #2368, #2322, #2032 (presets Favorites; keeper over #2014/#2017; author = @francoisgn, needs a mechanical rebase; #2017 merges clean today if preferred), #1903.
- **raw**: #673, #1384, #2316, #2540 (1 line; re-run CI), #1209.
- **i18n**: #1728 (Korean; keeper over #1673/#2435) → #1399 → #2395 (after #2072).
- **web**: #1422, #2315 (@francoisgn; strict params + open-size cap added in `2115f8eeb`, re-review). **tooling**: #2303 (after #2302), #2413, #1736 (document the new control limits). **ai**: #1958 → #2533.

## C — decision docket (130)

### C1 Catalog format numbering (unblocks 5 in 3b, 3 in C, ~9 in E)
Main is v9 (`crates/catalog/src/journal.rs:79`). Open PRs that set VERSION: v10 = #1155 #2073 #2087 #2088 #2111 #2203 #2283 #2305 #2350 #2358 #2388 #2416; v11 = #2202; v13/14 = #722/#1226; stale v3/v8/v9 = #160 #1231 #1641 #1684. #800 replaces the constant with a FORMATS table. #1896/#1718/#1971 add stored fields with no bump.
**Default:** numbers are assigned at merge time, +1 per merged PR in merge order; a PR carries "bumps format" in its description and a migration arm, not a number. #800's redesign is a separate architecture decision; until taken, it blocks its 13-PR backup stack (E).

### C2 Process V3 contents (17 PRs)
Each of #762 #1060 #1283(+#1286 V4) #1348 #1349(+V4) #1383 #1953 #2313 #2332 #2340 (and drafts #944 #1714) defines its own `Process::V3`; #980 and #514 change the shipped V2 in place; #1026 #2390 #1697 #1350 change the look with no process.
**Default:** one `Process::V3` variant lands first as a tiny maintainer PR; V3 is a defined bundle (tone: #2313+#1383 reconciled on Blacks; sharpening: one of #2332/#762/#2340; NR: #1348→#1349; dehaze: #1283; grain: #1060; gamut: #1953), each rebased as an arm behind it. V2 stays frozen, so #980 retargets to V3 (then #1059/#1261 close). Stopgap for #2504: `7025d7dd2` from #2174 applies cleanly.

### C3 `unsafe` outside `crates/sysmem` (8 PRs)
#1700 hdrmeta (7 blocks), #1169/#1635 cameras (COM/objc), #1229 macos-open, #2439 wincolor, #2491 vendored winit fork; #1409/#1938 add a second FFI call to sysmem; #1221 and #1837 use external crates with no in-repo unsafe.
**Default:** accept #1409 (fsync fallback for SMB, #1407; tiny, tested, approved) as a named exception line in CLAUDE.md; prefer the #1837 pattern (audited sibling crate) for platform glue; the rest wait for an "isolated unsafe helper crate" policy.

### C4 Clean-room provenance (5 + camera colour 22)
#2495 ARW v1: the code table and scan order look very close to dcraw's (incl. 17/16-bit codes that cannot occur in 12-bit data), a reviewer's reading for the maintainer to check; #2068 ORF: the carry/bias structure looks close to dcraw's (same caveat); #1162 ORF uses the LibRaw binary as oracle, #1284 offsets from ExifTool's Nikon.pm, #930 lensfun (CC-BY-SA) at runtime; profiles: #2160 (63k lines from unidentified photos), #2093, #1063/#2074 DCP import, #2222/#1342/#924/#133 calibrated colour, plus #732 #758 #784 #807 #1069 #1073 #1206 #1319 #1463 #1891 #2092 #2188 #2445 #2514 #2527 (render-look changes).
**Default:** every decoder PR carries a black-box provenance note (as #2316/#2487/#2512 do); tables that reproduce GPL source structure are not accepted; a black-box oracle for *output comparison* is fine; fitted profiles need the source photo list with licences. Camera-colour look changes wait for the calibration roadmap owner.

### C5 RawNIND licence (3)
#1812 relabels the weights CC BY 4.0 (dual licence per the rawnind_jddc README) and enables the download by default; #2355 ships them as GPL-3.0; #1828 vs #2355 are two X-Trans approaches. **Default:** confirm the README's dual licence (not verifiable offline here); if confirmed, CC BY terms are fine but the download stays opt-in; pick one X-Trans approach.

### C6 Dependency policy (10)
#2381 adds `jiff` (main standardised on chrono in `bfb23db2c`; the bug #2284 is real: `files.rs:1130` dates files in UTC) → redo with chrono's `clock` feature; #1486 path dep `../craft-libs`; #2060 personal forks + `[patch]`; #1962 `refs/pull/*/head` pins; #1325 heic-rs fork; #896 oxideav-jpegxs 0.0.8; #2086 unicode-normalization; #1374 unicode-segmentation; #2143 midir; icons #1104/#1164/#1926 (Lucide/Tabler vs code-drawn); #1928 sctk-adwaita + 600 KB screenshots. **Default:** crates.io versions only; no path/git/PR-ref deps; young crates behind a feature.

### C7 CI policy (6)
#2302 (3a) is the base. #901 (FreeBSD/ARM64 nightly) vs #2048 (more PR triggers); #1159 (3-OS ci.yml, contains #1148); #777 (refusals gate + CLAUDE.md rule); #1188 (AGENTS.md as the one file + CONTRIBUTING.md); #1181 (4k-line fidelity tool).

### C8 Crop model (2): #1699 (LrC: photo turns, box stays; fixes #2319) vs #1876 (fix inversion on current box-rotates model) vs #2344 (opt-in LrC canvas, in C-product). One model, then the other PRs rebase.

### C9 Product calls (19 + new subsystems 35)
Behaviour: #1704 (Original/DNG export refuses files whose metadata exceeds policy: most camera files fail unless policy=All), #2289 (stack writes to hidden members), #2328-class UX, #1822 keymap, #2338 LrC keymap profile, #2194 menu reorganisation, #1642 activity bell (CLAUDE.md-cited standard moves), #1554/#1589/#1651 visual redesigns, #1739/#1360 Arabic RTL, #1158 vs #1851 trash, #955 masking workspace, #1065/#1152/#1390/#1226 architecture-size changes, #593 2× export.
New subsystems (accept the direction before review): Map stack #797→#810→#819 (+#804 #906 #916), content search #1605–#1612, SAM 3 GPU #2534–#2537, Immich #587, Flickr #1120, mobile #818, timelapse #1241, reflection removal #1220, Relight #1382, AI assistant #1830, negative conversion #2202 vs #2490, metadata search #2326, uninstaller #931, winget #1566, MCP auto_develop #1585, focus stacking #1888, #1219, #1322, #1978.

## D — close (39)

Proven on main: #159 (`arw.rs:415` YCBCR_OFFSET), #1654 (`masks.rs:523` MAX_STROKE_DABS), #2441 (`2fc56a537`; 9 lines left), #2520 (`i18n.rs:136` Vi), #717 (`faces.rs:172,183` already `tr()`; rest loads OS fonts against policy).
Contained in another PR (verified ancestor/identical hunks): #1954→#2015, #1732→#1888, #2278→#2092, #1148→#1159, #2427→#2429, #2018→#1859, #2214/#2227→#2430.
Duplicates, keeper named: #2290→#1208, #1896→#2416, #1971→#1718, #2014/#2017→#2032 (#2017 is the clean-merging fallback), #2485→#2243, #2508→#2315 (its open-size cap and strict params are ported in `2115f8eeb`), #2179→#2153, #1247→#1232, #1259→#1349, #1059/#1261→#980, #2330→#1060, #1204→#1837, #1673/#2435→#1728, #2074→#1063, #2265→#1464.
Bundles/umbrellas whose parts are open separately: #1441 (62 commits, ~22 PRs), #2211 (→ #2477–#2480, #2155), #327 (→ #593 #598 #613 #629), #388→#818.
Too large to review, or stale drafts (reopen if revived): #722 (1768 files), #160, #270, #894.

## E — author action (93), one ask each

- **Un-draft (content looks right):** #2243 (keeper for #2241), #2155, #2161, #2168 (#2165/#2532 LrC blocker), #2394, #2465, #2250, #2218, #2384.
- **Split:** #2174 (25 fixes; `7025d7dd2` #2504 is now #2550; `9dae15ebc` #2312 applies cleanly), #1048 (issue forms from CI), #1031, #1223.
- **Fix a found bug, then fast lane:** #1692 (1/3 s shows 0.3333…), #2020 (no `TaskGuard` for a multi-second job), #1775 (strict dir fsync keeps originals), #1458 (F1 remap), #1936 (rebase onto #2370 or close), #2521 (its extra tests fail).
- **Rebase (stale / conflicts) and answer CHANGES_REQUESTED:** #2377 (onto #2302), #2416 (+ format bump per C1), #2429, #2209, #2210, #2206, #2073, #2075, #2162→3b, #2378, #2421, #1970, #1995, #1910, #1460, #1079, #1332, #1231, #1641, #1684, #1414, #2487, #2526, #1305.
- **Stacked, wait for base:** backup stack #814 #823 #841 #856 #870 #1004 #1025 #1034 #1043 #1054 #1075 #1303 (on #800), #776, #921, #1127, #1631, #1649, #1933, #1943, #1955, #2305, #2358, #2388, #2479, #2483, #1635, #1714.
- **Policy-blocked:** #2381 (chrono, C6), #1325, #1486, #2060, #2110 (craft-fonts repin), #2491, #2512 (CRW provenance), #1155 (CRLF churn + v10).
- **Stale drafts to revive or close:** #360, #598, #613, #629, #644, #672, #944, #1115, #1137, #1227, #1424, #1433, #1713, #1961, #2434.

## Issues

**Close when 3a merges:** #1624 (#1644), #1841 (#1859), #1899 (#1979), #1944 (#2015), #2212 (#2430), #2275 (#2279), #2312 (#2327), #2460 (#2501), #2500 (#2513), #2505 (#2506).
**Close when 3b merges:** #205 #230 #430 #649 #709 #903 #937 #1015 #1109 #1112 #1145 #1194 #1203 #1228 #1233 #1234 #1251 #1401 #1492 #1523 #1525 #1553 #1618 #1707 #1752 #1764 #1854 #1885 #1895 #1918 #1932 #1950 #1996 #1999 #2084 #2124 #2137 #2154 #2159 #2276 #2277 #2308.
**Fixed on main (commit verified on `upstream/main`), close:** #197 (`a86defd1b`), #275 (`1ed80c65b`), #260 (`7fb24029f`), #918 (`44b12efea`), #1001 (`d9cea1404`), #1046 (`b3fcb7792`), #1172 (`90a4088f1`), #1520 (`d770c5231`), #1800 (`360bf8990`), #1974 (`53f57b940`), #2437 (`2fc56a537`).
**Ask reporter to retest on 0.11 (fix commit cites the issue, not verified end to end):** #250 (`0bd3f3715`), #548 (`ac9311891`), #682/#878 (`eec4746a5`), #893 (`ed737afda`), #989 (`0e53cfc24`), #1337 (`b0b86aca8`), #366 (`60a98354d`), #154, #209, #211, #454, #654, #1035, #1022, #1681, #2428, #2471, #1947 (duplicates fixed `d58636040`; cap still open).
**Duplicate clusters (keeper first):** #303 ← #231; #682 ← #878; #294 ← #1118; #523 ← #1371; #880 ← #1701; #1116 ← #1702; #2192 ← #2433; #1005 ← #2301; Sony colour tracker #535/#860 ← #515 #299 #1300 #1369 #378.
**Top fixes without a mergeable PR:** #2504 dehaze blotches (now #2550, `7025d7dd2` split out of #2174 with its authorship), #1659 old edits washed out (needs repro), #2284 iPhone UTC (#1208 then a chrono-based #2381).

**#2173 D850 uncompressed NEF, needs a check with the CC0 file:** since round 2, main has #671's table-less 34713 path, which decodes a single strip as LSB-packed 12/14-bit whenever its size matches; the D850's uncompressed 12-bit strip has a matching size. Whether that is the right packing for the D850 is unverified (raw.pixls.us was unreachable from here). #2174's `e554bd29a` instead routes NEFCompression 2/6 to the MSB uncompressed reader, which would also send the D100 (NEFCompression 2) away from main's measured `Chunked16` layout. Someone with the corpus should decode `Nikon-D850-12bit-uncompressed.NEF` on main before either path is kept.

## How this was produced, and its limits

- Seven parallel reviewers each triaged one group of ~60 PRs (diff reads, `--stat`, CLAUDE.md rules); this plan is a second pass over all 440 that re-read the contested diffs, ran `git merge-tree --write-tree upstream/main upstream/pr/N` for every 3a row, checked every "already on main / contained" claim with a commit or file:line, and checked stacks with `merge-base --is-ancestor`.
- **Nothing was built or tested in this pass** (no cargo, no CI logs). CI states are GitHub's at dump time; "none"/"pending" rows in 3a were accepted on diff size and tests only. #2302 is the exception (xtask tests and clippy were run on its head in an earlier review).
- Conflict classes come from merge-tree against today's main; merging a track changes main, so later PRs in the same track may need the small resolutions noted.
- Reviewer confidence was mostly `med`; `high` on 3a rows that were re-read here. Provenance findings (#2495, #2068) are a reviewer's code reading, not a legal opinion. The RawNIND dual licence (#1812) was not verified offline.
- Two PRs are by the author of this plan (#2032, #2315); they were judged on the same criteria. #2315 was in E for a bug found in it (unchecked host-command params, no open-size cap); fixed in `2115f8eeb`, it is back in 3b for re-review.

---
_Generated by [Claude Code](https://claude.ai/code)_
