# Mac handoff: round 3b and our fixes (state of 2026-10-26 ~12:30 UTC)

Read first: `CLAUDE.local.md`, `.fork/ORCHESTRA.md` (§8 lessons 1–19), `.fork/TODO.md`, then this file. Everything
below was prepared by the cloud session (session_01697nraCtyEpry7BiGLJjqv). The Mac session plays it; the cloud keeps
#2315 / #2599 watched and does reviews and drafting.

## 0. Rules that matter on the Mac
- **Lightroom is read-only.** Never import, edit, rate or delete in the owner's Lightroom (it syncs his personal
  library). Work on **copies** in `~/lc-test/`, Lightroom closed. Never commit media, catalogues, previews or exports.
- **Clean-room** (`CLAUDE.local.md`): no GPL raw/photo project code, not even to look. Lightroom's preview files are
  observed as a black box (sizes, headers, what a viewer shows), never decoded from Adobe code or docs.
- **Posting**: opening PRs and pushing to our own PRs is delegated; progress comments on our claimed issues too. New
  issues, claims, comments on others' PRs, review requests: show the owner the text, wait for "go".
- **Claim before code**; a claim lasts 24 h without visible progress (draft PR or progress comment).
- **Commits** carry `francoisgn <32835330+francoisgn@users.noreply.github.com>` (lesson 19: the private email is
  refused by GitHub).
- **One heavy build at a time**; announce long `ci --hardware` runs in the ledger. Check `pgrep -x cargo`, `uptime`
  before each (lesson 17).

## 1. Setup (once; skip what exists)
```sh
cd ~/lc && git fetch origin main && git switch main && git reset --hard origin/main   # fork main = upstream + fork-only commit
git remote add upstream https://github.com/storytold/lightcraft 2>/dev/null; git fetch upstream main
git config user.name francoisgn && git config user.email 32835330+francoisgn@users.noreply.github.com
export CRAFT_FONTS_DIR=$HOME/craft-fonts                  # git clone https://github.com/storytold/craft-fonts ~/craft-fonts
cargo xtask corpus --download                             # CC0 raws (raw.pixls.us works from the Mac)
mkdir -p ~/lc-test ~/agent-work
```
Test data on the Mac (owner, 2026-10-26): Lightroom catalogue sample `~/Git/lightcraft-test/lr-catalog-sample/travels`
**with standard previews** (`<catalog> Previews.lrdata`), **no Smart Previews yet** (so #2614 stays blocked). Copy it
to `~/lc-test/travels` before any test.

## 2. Where we stand (2026-10-26)
- Fork `main` resynced on upstream `c7961df1` (0.14.0, egui 0.37). Upstream runs full CI on PRs now (#2302);
  local gate per commit is `cargo xtask ci --quick`, full `ci --hardware` before a batch PR.
- **Known upstream-red test** (not ours): `accessibility::every_interactive_node_has_a_name_in_every_view_and_tool`
  fails without `CRAFT_FONTS_DIR` (no glyph "▸"). With craft-fonts it should pass; if not, it is upstream's.
- Our open PRs: **#2315** (web host bridge; FredApps approved at 57c8c8d; Chromium re-run green 2026-10-26) and
  **#2599** (Lightroom backup zips; merged with 0.14 at 24a26572). Both are cloud-owned; don't push to them.
- #2580 (round-3 plan, ours): our PR list + labels posted 10-25; #2278 moved D → 3b on 10-26 (asked @robmdunn for a
  render-cache bump).

## 3. The plan, in order
| Step | What | Size | Who |
|---|---|---|---|
| A | **LOT-F, our fixes + #2613**: claims → code (one PR each) → integration branch → `ci --hardware` → batch PR | 5 PRs, ~1–2 days | Mac |
| B | **3b-1** (16 easy PRs) batch, like #2689 | ~8 k .rs lines | Mac |
| C | **3b-2a / 2b / 2c** (7 / 7 / 8 big clean PRs), one batch each | ~10–12 k lines each | Mac |
| D | **3b-3a / 3b-3b** (conflicts): ask authors to rebase first (owner go); integrate 3b-3a ourselves only after 48 h idle | 12 + 4 | cloud drafts, Mac builds |
| E | **3b-N** (23, no CodeRabbit review) and **3b-W** (46, wait on their authors): not batched; listed in #2580 | — | cloud |

Lots, order inside each lot, sizes and states: **`.fork/round3b-lots.tsv`** (from upstream `c7961df1` + GitHub state
read 2026-10-26 12:08 UTC). Re-check every head and CodeRabbit state right before merging it into a batch (heads move;
lesson of #2689).

### Lot sizes vs round 3a (measured 2026-10-26)
| | 3a (44, merged) | 3b-1 | 3b-2a/b/c | 3b-3a/b |
|---|---|---|---|---|
| median .rs lines | 160 | ~540 | ~1 200 | ~700 |
| conflicts with main | — | 0 | 0 | all |
3b is about 4× 3a per PR: keep batches ≤ 16 PRs, one area each, so a red CI points at one area.

## 4. Step A: LOT-F (our fixes + #2613)
Five pieces of work, each its own branch from `upstream/main` (`fix/issue-<N>-<slug>`), its own PR, then all merged
into `round3b-ours` for one `ci --hardware` and a batch PR (if maintainers prefer, the five PRs alone are enough).

| # | Issue | What | Where (code reading, cloud) | Claim state |
|---|---|---|---|---|
| F1 | **#2779** (ours, open) | queued drops (`pending_import`) are dropped when their import can't start; keep them until `start_paths` accepts them | `crates/ui-egui/src/panels/library_problem.rs` + tests | not claimed: claim comment (go) |
| F2 | new issue | Import Photos… shortcut, native menu, control `file.addPhotos` / `library.import` still run while the launch list or the failed-library window is up; photos land in the in-memory session the next library replaces | `shortcuts::handle`, `menus.rs` `file.addPhotos`, `ui_enabled` of `file.addFolder` (none look at `library_problem`) | issue + claim (go) |
| F3 | new issue | a filter set in library A is still on (and `shelved_filter`, ⌘L, still restorable) after switching to library B | `Session::open_stores` (`crates/engine/src/library.rs` ~480-490) resets selection and source, not `filter` / `shelved_filter` | issue + claim (go) |
| F4 | new issue | `photo.editExternal` partial failure: copies 1..k-1 stay in the catalogue and on disk but the command returns Err, so a retrying script duplicates them | `crates/engine/src/cmd/convert.rs` ~160 `edit_external`; fix like `open_originals`: Ok + `failed` list | issue + claim (go) |
| F5 | **#2613** (ours, claimed 10-22, stale) | use Lightroom's own standard previews for display while LightCraft renders (no Smart Previews: #2614 stays blocked) | Lightroom import path (`lightroom_job.rs`, `lightroom_catalog.rs`) + preview cache | post a progress comment first (delegated): "Working on this again: …" |

**Draft texts (show the owner, post after his go).**

F1, claim on #2779:
```
Working on this: queued photos stay in `pending_import` until `start_paths` accepts them, with a test that drops files while the import can't start. PR within 24 h.
```

F2, new issue: title `Library: Import Photos… runs while no library is open (launch list, failed-library window)`
```
**What happens:** with the launch list (Settings ▸ At launch ▸ Ask me) or the failed-library window on screen, the Import Photos… shortcut, the native File menu item and the control channel's `file.addPhotos` / `library.import` still run. The photos go into the in-memory session, which the library opened next replaces, so they vanish.

**Expected:** like dropped files since #2701, they wait for a library (or the command is refused with a reason) and every entry point behaves the same.

**Where:** `shortcuts::handle`, `menus.rs` (`file.addPhotos`), `ui_enabled` of `file.addFolder` don't look at `library_problem`. Follow-up of #1290 / #2701.
```
then `Working on this.` as the claim comment.

F3, new issue: title `Library: a filter carries over to the next library when switching`
```
**What happens:** set a filter in library A (e.g. keyword "Rome"), open library B (File ▸ Open Recent Library, the launch list, or a new library from Import Lightroom Catalog): the filter is still applied in B, and Enable Filters (⌘L) can bring back A's shelved filter.

**Expected:** a library opens unfiltered (or with its own saved filter), as Lightroom does per catalog.

**Where:** `Session::open_stores` (crates/engine/src/library.rs) resets the selection and the source but not `filter` / `shelved_filter`.
```

F4, new issue: title `photo.editExternal: a failed copy leaves the earlier copies but reports failure`
```
**What happens:** `photo.editExternal` on several photos makes the copies one by one; if copy k fails (disk full, unwritable folder, import error), copies 1..k-1 stay in the catalog and on disk, but the command returns an error. A script that retries on `ok:false` then makes them twice.

**Expected:** like `open_originals`, return the copies made plus a `failed` list, and fail only when nothing was made.

**Where:** crates/engine/src/cmd/convert.rs, `edit_external`. Same pattern as the Edit In fix in #2689.
```

F5, progress comment on #2613 (delegated, no go needed):
```
Working on this again (standard previews only; Smart Previews stay #2614). Plan: during a Lightroom catalog import, read the catalog's standard previews as display stand-ins while LightCraft renders, never required (a missing or unreadable Previews.lrdata changes nothing). Draft PR within 24 h.
```

**#2613 on the Mac, black-box only.** Inputs: `~/lc-test/travels/<name>.lrcat` and `~/lc-test/travels/<name>
Previews.lrdata`. Observe the folder layout (`ls -R | head`, file sizes, `file` on a few entries), find which entries
are plain JPEGs (`file`, JPEG SOI marker), and how a catalogue photo maps to its entry using only what the catalogue's
own tables expose (the in-tree SQLite reader already reads `.lrcat`). Write the observations in the module docs
(what was observed, on which Lightroom version). Absent, unreadable or unknown → no preview, never an error. Tests use
a synthetic folder built in the test (never the owner's files).

**Agents (owner's plan, 2026-10-26).** One coding agent per piece (F1, F3, F4 together are small; F2 gets its own;
F5 its own), Opus 5.5, each in its own worktree (`~/agent-work/2026-10-26-<id>`, `CARGO_TARGET_DIR` per worktree or
one CI at a time). Each fix gets an adversarial review by a separate **Fable 5.1** agent (given the issue, the diff and
ORCHESTRA §8) before the push. Every PR body follows `CLAUDE.local.md` rule 5.

## 4b. Round 3b lot 1: built in the cloud, ready for the Mac (2026-10-26)
Branch **`round3b-1`** on the fork (`git fetch origin round3b-1 && git switch round3b-1`), = upstream `bb08a697` + 13
PRs merged `--no-ff` in this order (first-parent history names each PR and its head):

| PR | head | what |
|---|---|---|
| #2322 | `15434d87a` | LR-CROP-RECT: a too-small crop's corner drag reaches the minimum size (#2308) |
| #2153 | `710052cff` | Journal: a damaged save line no longer stalls opening (linear resync, #2124) |
| #2423 | `40ce3b4a5` | PERF-SMART: the depth-limit test states the expected answers |
| #2418 | `418d63105` | PERF-SEARCH: search and Text rules read each photo's text from a kept lower-cased copy |
| #1781 | `7c68b0b23` | LR-BEHAV-EMPTY-STATES: Add Sample Photos selects a sample it added, and keeps an active ph |
| #1415 | `9cf671b99` | #1405: explicit export paths refuse folders; sidecars follow the policy |
| #2281 | `fc4063cef` | Cull: burst stacks grouped (branch cull-stack-bursts) |
| #2525 | `1a1381c51` | LR-PREF-GENERAL: the border tests measure how much of an edge stands 3:1, not the one brig |
| #2523 | `c75853a30` | SETTINGS-ASK: a question's focus is restored only in the frame after it was drawn |
| #2065 | `28ad99d77` | KEY-TOGGLEZOOM: the Space hand follows egui 0.37's ids and the registry's Ui |
| #2414 | `7d605d680` | PERF-SELECTION: a command's own selection changes are seen when it returns |
| #2204 | `90d58b6f2` | LR-BEHAV-DRAGDROP: Esc with a drag left over and no button down only gives up the drag |
| #2315 | `57c8c8d45` | #2270: the host bridge parses command params with automation::params |
Out of the lot (each needs its author first; cloud drafts the comments): **#2522** (settings tabs: logic conflict in
`panels/settings.rs` with #2523 / #2525, same author), **#1422** (WebGL context loss: rewrites the web backup our
#2315 changes; rebase after #2315), **#1958** (SAM3 CPU speed: measure on the Mac with the model, see below).

Integrator merges (all reviewed by a Fable adversarial agent, clean): `crates/catalog/src/query.rs` (#2423's ordered
rules + #2418's lowered search tokens in `Prepared`; `whole: true` for passes, `false` for one photo, as #2418),
`crates/catalog/src/lib.rs` (`Catalog` keeps #2423's `plans` and #1781's `demo_photos`), `ui-egui/src/lib.rs` test
mods, docs and locale unions (all 34 locale files valid, no lost or clashing key).

Cloud results (2026-10-26, `CRAFT_FONTS_DIR` set, no GPU / corpus / models): full `cargo xtask ci` **green**, all 8
steps (fmt, clippy, heif, test, parity, layers, assets, wasm), 5 312 tests; 181 skipped for want of corpus (137), GPU
(32), models (8), fonts (2), system (2) — what the Mac run covers.

**On the Mac (≈ 45 min):**
1. `CRAFT_FONTS_DIR=$HOME/craft-fonts cargo xtask ci --hardware` on `round3b-1` (report `target/ci/summary.md`).
2. `cargo run --release -p lightcraft -- --control 18120`, by hand (one line each, OK/KO + what you saw):
   - #2204: start dragging photos to a folder, release outside, press Esc: only the drag is given up, nothing moves.
   - #2065: in the loupe zoomed in, hold Space and drag: the hand pans; release: back to the previous tool.
   - #2322: crop a photo to a tiny rectangle, drag a corner outward: it reaches the minimum size, no jump.
   - #1781: empty library → Add Sample Photos: a sample is selected and shown; remove them: the active photo moves sensibly.
   - #2281: Cull with a burst stack: stacked bursts group as one.
   - #2523 / #2525: Settings → Performance → Clear Cache asks first (Keep has the focus, Esc = no); field borders and placeholder text are legible in light and dark.
   - #2418 / #2423: a big library (`~/lc-test`), Text search and smart albums with a Text rule: same results as on `upstream/main`, faster.
3. #1958 (not in the batch): `git fetch upstream pull/1958/head:pr-1958`; time a Select Subject mask on main and on
   pr-1958 (same photo, model installed, `/usr/bin/time -l`), check the mask is the same. OK → it can join the batch
   later or go alone.
4. Then open **one** batch PR to `storytold/lightcraft` from `francoisgn:round3b-1` (title `Round 3b, lot 1: 13 PRs
   (ran & tested locally)`), body: the table above + CI summary + the Mac lines + out-of-lot list; cc @aiongg @FredApps.
   Re-check each PR head right before (`git ls-remote upstream refs/pull/<N>/head`); a moved head → re-merge it.
5. Ledger + #2580 update (cloud drafts it: lot 1 = this PR; #2522 / #1422 / #1958 notes; #2014 keeper line stale).

## 5. Batch recipe (steps B and C; what worked for #2689)
```sh
git fetch upstream main && git switch -c round3b-1 upstream/main
for n in $(awk -F'\t' '$1=="3b-1"{print $3}' .fork/round3b-lots.tsv); do
  git fetch upstream pull/$n/head:pr-$n && git merge --no-ff --no-edit pr-$n || break   # stop at the first conflict
done
```
- On a conflict: resolve, then read the whole diff of each conflicted file against both parents (lesson 14); a
  conflict inside an author's logic → skip the PR, note it, move on.
- `cargo xtask ci --quick` after every 4–5 merges, `CRAFT_FONTS_DIR=… cargo xtask ci --hardware` at the end.
- Real-use check per PR (by hand or headless), one line each: OK / KO + what was seen.
- Fable adversarial review of the batch diff; fold findings in; then open the batch PR to `storytold/lightcraft`
  from `francoisgn:round3b-1` ("ran & tested locally", table: PR, head, check, result), cc @aiongg; record heads.
- Watch it: people's reviews first (lesson 18), CodeRabbit rounds per ORCHESTRA §8.
- 3b-1 notes: #2315 (ours) before #1422 (both touch `lightcraft-web/src/web.rs`, `safety.rs`); #2522 / #2523 / #2525
  all touch `panels/settings.rs` (same author, merge in number order); 8 PRs touch `ui-egui/src/lib.rs`.

## 6. Prompt to paste in the Mac session
```
Lis CLAUDE.local.md, .fork/ORCHESTRA.md, .fork/TODO.md puis .fork/MAC-HANDOFF.md (état du 2026-10-26).
Tu es la session Mac. Joue l'étape A (LOT-F) puis l'étape B (3b-1) du §3, dans cet ordre :
1. Montre-moi les textes F1–F4 du §4 (claims / issues) pour mon go ; poste le commentaire de progrès F5 sur #2613.
2. Après mon go et les claims postés : un agent Opus 5.5 par fix (F1+F3+F4 ensemble, F2 seul, F5 seul), worktrees
   séparés, relecture adverse Fable 5.1 de chaque diff, une PR par issue, `xtask ci --quick` avant chaque commit.
3. Branche round3b-ours (les 5 PRs) → `ci --hardware` → PR batch.
4. Puis 3b-1 selon §5. Note chaque action publique dans .fork/TODO.md et pousse le ledger.
Rien de public sans mon go hors délégations. Une seule CI lourde à la fois.
```

## 7. Mac backlog (from the 10-22 handoff, still open)
- **#2173 D850 12-bit uncompressed NEF**: which decoder is right (main's packed path vs #2174's `e554bd29a`); file
  `raw.pixls.us/data/Nikon/D850/Nikon-D850-12bit-uncompressed.NEF`, sha256 `fb438957…a24484`; render on main and on
  pr-2174, compare with the embedded preview; result → comment on #2173 (go).
- **#2112 Canon 5D Mark III profile** (gap 1, beta blocker): `lightcraft-cli calibrate` on ≥ 5 (ideally 100+)
  CR2 + in-camera JPEG pairs, one picture style; announce on #2112 first.
- **#1208 iPhone HEIC capture times** (keeper over #2290): `~/lc-test/heic/`, compare `captured` with exiftool.
- **#2014** (Favorites keeper, not ours, conflicted): check its Favorites header ids before it merges (review asked by
  the owner on 2026-10-26; cloud can do it).
- Render-fidelity reference set (gaps 1, 3): Lightroom exports of 20–50 raws in `~/lc-test/lr-ref/`, ΔE tool; ask
  the owner first.
