# Mac handoff: where we stand and what to test (state of 2026-10-22 ~12:00 UTC)

Read first: `CLAUDE.local.md` (fork rules), then this file, then `.fork/TODO.md`. The owner (François) runs Claude
Code CLI on his MacBook (Apple Silicon). This file is the brief for that session: everything below was prepared in
cloud sessions, which have no Mac, no GPU, no access to raw.pixls.us, and none of the owner's files.

## 0. Rules that matter on the Mac
- **Lightroom is read-only.** Never import, edit, rate or delete anything in the owner's Lightroom (it syncs his
  personal library). Work only on **copies** of catalogues and photos in `~/lc-test/`, with Lightroom closed.
- **Never commit media** (raws, HEIC, catalogues, exports). Results go into text only, with no personal file names.
- **Posting**: the owner delegated opening PRs and pushing fixes to our own PRs (#2032, #2315, #2550) on 2026-10-22.
  Anything else public (reviews, comments on other people's PRs, issues) still needs his explicit "go".
- Shared-target rule from the cloud does not apply on the Mac, but run one heavy `cargo` at a time.

## 1. Setup (once, ~20 min)
```sh
xcode-select --install                              # if needed
curl https://sh.rustup.rs -sSf | sh                 # Rust stable
brew install exiftool                               # reference reader for dates (external tool, not in the product)
git clone https://github.com/francoisgn/lightcraft ~/lc && cd ~/lc
git remote add upstream https://github.com/storytold/lightcraft && git fetch upstream
git clone https://github.com/storytold/craft-fonts ../craft-fonts
export CRAFT_FONTS_DIR=$PWD/../craft-fonts
cargo xtask corpus --download                       # CC0 raws into corpus/ (raw.pixls.us works from the Mac)
mkdir -p ~/lc-test
# a PR head:  git fetch upstream pull/<N>/head:pr-<N> && git switch pr-<N>
# build:      cargo build --release -p lightcraft-cli --features heif && CLI=./target/release/lightcraft-cli
```
zsh: write `path=$HOME/...`, not `path=~/...`.

## 2. Where we stand

### Our open PRs (storytold/lightcraft)
| PR | What | State | To do |
|---|---|---|---|
| #2550 | Dehaze no longer crushes dark pixels (#2504), split from #2174 with @mdlmarkham's authorship | opened 10-22; CodeRabbit nit fixed (`c21714a37`) | **Metal check** (test 3.1); watch reviews |
| #2315 | Web host bridge `?host=parent` (#2270) | strict params + open-size cap (`2115f8eeb`), bytes moved not cloned (`7ffdb17c0`, CodeRabbit), main merged (`17c5fc37e`); keeper over #2508 | FredApps asked for a browser re-run on the head: Chromium check of `?host=parent` (parent page + iframe) |
| #2593 | French native review, first batch (gap 21) | opened 10-22 | watch reviews |
| #2032 | Presets Favorites (#1999) | green; keeper over #2014/#2017 (round-3 plan) | conflicts with main (1 code file): merge `upstream/main`, `cargo xtask ci`, push |

### Round 3 (the big triage)
- Plan of all 440 open PRs (lots 3a fast lane 44 / 3b 134 / C decisions 130 / D close 39 / E author 93), issue draft
  and row-by-row table: posted from cloud session `session_01Q5UYhod7Jv5D1p2tYV6YUU` after the owner's go (issue
  "Round 3 integration plan (440 open PRs)", cc @aiongg): <https://github.com/storytold/lightcraft/issues/2580>,
  table in issuecomment-6339968698. Check it for the maintainers' answers (and whether a bot closed it, as with #2436).
- Labels for the 251 unlabelled issues: no triage permission, so the suggestions are a comment on #2580
  (issuecomment-6339979924) for a maintainer to apply.
- The three rulings that unblock most PRs: catalog format numbering (12 PRs claim v10), one Process::V3 bundle
  (17 PRs), provenance + crates.io-only dependencies (~37 PRs).

### Upstream state
- Rounds 1 (#2470, 43 PRs) and 2 (#2515, 85 PRs) merged on 10-21 / 10-22; releases 0.10.0 and 0.11.0.
- Our PRs merged so far: #1987, #1988, #1990, #2004, #2272, #2273, #2280, #2314, #2317, #2033.
- #2302 (CI on Linux, gap 9) reviewed 🟢 locally (not posted; `.fork/review-2302.md`): xtask tests/clippy/actionlint green; risks = runner
  disk (target ~23 GB) and no `--locked`. Recommend #2302 first, then #1148 reduced to the macOS/Windows matrix.

## 3. Tests on the Mac, in priority order
Report each as one line: branch, file type (no personal names), result on main, result on the branch, OK/KO, error
output. Claude formats them as a "Real-data check" section for the PR/review and posts after the owner's go.

### 3.1 #2550 dehaze on Metal (5 min)
```sh
git fetch origin fix/issue-2504-dehaze-blotches && git switch fix/issue-2504-dehaze-blotches
cargo test -p lightcraft-pipeline dehaze && cargo test -p lightcraft-gpu   # equivalence tests run on Metal here
cargo run --release -p lightcraft      # open a CR2/CR3 with dark areas next to sky, Dehaze +80: no black blotches
```
Same photo on `upstream/main` must show the blotches (#2504).

### 3.2 #2173 D850 uncompressed NEF: which decoder is right (10 min, decides a round-3 item)
Since round 2, main has #671's table-less 34713 path (single strip decoded as LSB-packed 12/14-bit when its size
matches). #2174's commit `e554bd29a` routes maker-note NEFCompression 2/6 to the MSB uncompressed reader instead,
which would also move the D100 off main's measured `Chunked16` layout. Nobody has decoded the real file on main.
```sh
curl -L -o ~/lc-test/d850-u12.nef "https://raw.pixls.us/data/Nikon/D850/Nikon-D850-12bit-uncompressed.NEF"
shasum -a 256 ~/lc-test/d850-u12.nef   # expect fb438957983d72567a740bcb93365feb1bbcd75db629eb9626f31fa548a24484
git switch --detach upstream/main && cargo build --release -p lightcraft-cli
$CLI render ~/lc-test/d850-u12.nef -o ~/lc-test/d850-main.jpg      # full image, preview fallback, or garbage?
```
Then the same with `git fetch upstream pull/2174/head:pr-2174 && git switch pr-2174`. Compare both JPEGs with the
camera's embedded preview. Outcome → comment on #2173 (with go): which path decodes it correctly.

### 3.3 #2112 Canon 5D Mark III colour profile (gap 1, beta blocker; free issue)
```sh
cargo run --release -p lightcraft-cli -- calibrate --out ~/lc-profiles ~/lc-test/5d3/
```
Needs CR2 + in-camera JPEG pairs (RAW+JPEG shots), ≥ 5, ideally 100+, one picture style (Standard). Then Claude makes
the PR: profile in `assets/camera-profiles/` + `assets/ATTRIBUTION.md` entry, like the Sony ones (the photos stay
private; only the fitted profile is committed). Announce on #2112 first (owner).

### 3.4 Lightroom Classic catalogue import (owner's real catalogues, copies only)
```sh
cp ~/Pictures/Lightroom/<catalog>.lrcat ~/lc-test/cat.lrcat          # Lightroom closed
$CLI run --library $HOME/lc-test/lr-main library.importLightroom path=$HOME/lc-test/cat.lrcat library.info
```
- **Post-merge check #2230** (images without a file record are skipped, not fatal; merged in round 1): on main, count
  vs Lightroom's "All Photographs", "left out" warnings. Do the oldest catalogues and the unzipped backups too.
- **#2168** (draft; fixes #2165 / #2532 "parent must be an existing folder"): `git fetch upstream pull/2168/head:pr-2168`,
  same command. Main fails on catalogues with a creation saved inside a collection; the PR should import.
- **#1232** (keeper over #1247 for big catalogues, #1234; stacked on #842, 5 code conflicts): biggest catalogue,
  `/usr/bin/time -l` on main and on `pr-1232`: success, photo count, `real`, `maximum resident set size`, Ctrl-C midway.

### 3.5 iPhone HEIC capture times (#2284)
Prepare `~/lc-test/heic/`: one original per iPhone generation the owner has (Photos.app → File → Export → Export
Unmodified Original), portrait + landscape, one taken in another time zone. Reference:
`exiftool -DateTimeOriginal -OffsetTimeOriginal -Model -Orientation ~/lc-test/heic/`.
- **#1208** is the keeper (aiongg, round 1) over #2290: `git fetch upstream pull/1208/head:pr-1208`, then
  `$CLI run --library $HOME/lc-test/heic-1208 --import $HOME/lc-test/heic catalog.query` → `captured` per photo vs
  exiftool, width/height (portrait: height > width). Main gives the file's mtime in UTC.
- **#2381** (host time zone for files without a date) is blocked on a ruling (adds `jiff`; main is chrono-only). Its
  local-vs-UTC test from the old runbook still applies if a chrono version appears.

### 3.6 Post-merge check #2003 (Lightroom lossy DNG, merged in round 2)
In Lightroom: a 5D III CR2 → Export as DNG, lossy compression (on a copy, in a scratch catalogue — never the owner's
main catalogue). `$CLI render ~/lc-test/IMG.dng -o ~/lc-test/2003.jpg` on main: full image (not the embedded preview),
close to Lightroom's render.

### 3.7 macOS workflow PRs (#2301, #2446)
- **#1635** PTP import with the 5D Mark III over USB (draft, stacked on #1169, adds unsafe in a new crate: report
  results only, the unsafe policy is a maintainer ruling).
- **#1837** Finder / Dock / Open With (adds the external crate `fmv-macos-events`): open a JPEG and a CR2 from Finder
  with LightCraft, drag onto the Dock icon, and the Bridge case of #2446 if Bridge is installed.
- **#2301** watched folder in `~/Pictures`: errors only at debug level (`ui-egui/src/lib.rs:1168`), subfolders skipped.

### 3.8 Full suite with hardware
```sh
CRAFT_FONTS_DIR=$PWD/../craft-fonts cargo xtask ci --hardware
```
Runs the ~195 tests skipped in the cloud (Metal GPU, corpus, fonts). Report the summary (`target/ci/summary.md`).

### 3.9 Optional, high value: render-fidelity reference set (gaps 1 and 3)
Lightroom exports (sRGB JPEG, Adobe Standard, no edits) of 20–50 of the owner's raws (5D III + iPhone ProRAW), kept
local under `~/lc-test/lr-ref/` (never committed). Claude then writes a ΔE comparison tool against LightCraft's
render; the numbers (not the images) become evidence for the six stalled colour PRs (#133 #514 #598 #613 #629 #732).
Ask the owner before starting; it is observation of Lightroom's output only (clean-room OK).

## 4. Other open threads
- #2550 / #2315 / #2032: answer reviews, keep CI green.
- High-priority bugs ready to split from #2174 (per-issue commits, Sonnet-level work): `9dae15ebc` (#2312, applies
  clean), and the #2398 / #2472 / #2505 parts (compare with #2327 / #2506 first). Assessment of all 43 high/bug issues:
  `.fork/bugs-assessment.md` (summary: fix now #2504 ✅ #2173 (3.2) #1659 #2401; review existing PRs #2243
  #2168 #2290/#1208 #2073 #1973 #1644; Mac #2301 #2446).
- #1659 (old edits look washed out after upgrade): cloud-feasible repro (build tag v0.4.0, edit a CC0 CR2, open on main).
- pdfcraft is out of scope (owner, 2026-10-22).

### 3.10 PR #2685 (#2672): Lightroom import asks where the catalog goes (cloud-made, needs your catalogues)
```sh
git fetch upstream pull/2685/head:pr-2685 && git switch pr-2685 && cargo run --release -p lightcraft
```
With a copy of one of the owner's catalogues (`~/lc-test/cat.lrcat`, Lightroom closed):
1. Open a library that already has photos → File ▸ Import Lightroom Catalog… → the window offers *Merge into "<name>" (N photos)* / *Create a new library* (name = catalogue name, location = next to the open library). Choose *Create a new library*: LightCraft switches to it and imports; photo count vs Lightroom's "All Photographs"; the previous library is still in File ▸ Open Recent Library.
2. Same catalogue again with *Merge*: it lands in the open library (and note whether collections duplicate: that part is #2606 / #2599).
3. Settings ▸ General ▸ Library ▸ *Always merge into the open library*: the window no longer shows; *Don't ask again* in the window sets the same setting.
4. Open Library… on the catalogue folder: offers the import, then the same window.
Report one line per step (OK/KO + what you saw); the cloud session formats it as a "Real-data check" comment on #2685.
