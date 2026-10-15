# Orchestra: how the cloud and Mac sessions play together

Two kinds of Claude sessions work for the owner (François, @francoisgn) on this fork, often at the same time:
**cloud** sessions (claude.ai/code containers, no Mac, no GPU, no owner files, raw.pixls.us blocked) and **Mac**
sessions (Claude Code CLI on the owner's MacBook: Metal GPU, Lightroom Classic for read-only observation, his
catalogues, raws and iPhone photos). They share one score: this fork's `main`, which carries `CLAUDE.local.md` and
`.fork/`. Nothing else is shared: each session's scratchpad, memory and local branches are invisible to the other.

The point is that neither session ever duplicates, contradicts or overwrites the other, and that the owner can stop
any session at any moment and the next one picks up the beat. Rhythm matters more than speed.

## 1. The score (files every session reads and keeps current)
| File | What it holds | Who writes |
|---|---|---|
| `CLAUDE.local.md` | fork rules and guardrails | either, rarely, owner's OK |
| `.fork/ORCHESTRA.md` | this file | either, owner's OK |
| `.fork/TODO.md` | **the ledger**: every task with its state and owner session, open PRs, and the dated log of public actions | both, all the time |
| `.fork/MAC-HANDOFF.md` | what only the Mac can do, in priority order, with commands | cloud prepares, Mac ticks off |
| `.fork/LABELS.md` | label meanings (upstream + craft-contrib RFC-0007 + our proposal) and the ledger tag block | either |
| `.fork/*.md` reviews / assessments | durable analysis worth keeping | whoever produced it |

Scratchpads and `/tmp` are not the score: anything the other session needs goes into `.fork/` and is pushed.

## 2. Downbeat: start of every session
1. `git fetch origin main upstream main` and read, in order: `CLAUDE.local.md`, this file, `.fork/TODO.md`
   (whole file), then `.fork/MAC-HANDOFF.md` if you are the Mac session.
2. Check what changed upstream on our items since the ledger's last entry: our open PRs (reviews, CI, merges),
   issues we claimed, and #2580 (round 3). Record anything new in the log before starting work.
3. Pick the next task from the ledger that is free (`[ ]`) and fits your instrument (section 4). Mark it taken
   (section 3) **before** writing code.

## 3. Taking a part: claims, so two sessions never play the same notes
- In `.fork/TODO.md`, a task you start becomes `[~] (cloud|mac, YYYY-MM-DD) …` and is pushed at once. A `[~]`
  owned by the other session is off limits: read it, don't touch its branch, don't post on its PR. If it looks
  abandoned (no log entry for 24 h), ask the owner instead of taking it over.
- A contribution branch is played by one session at a time; its owner is the session named on the task. To hand a
  branch over, the owner session pushes everything, writes "handed to mac/cloud" on the task, then stops touching it.
- Done = `[x]` with the PR / issue / commit links.

## 4. Instruments: who does what
| Mac session | Cloud session |
|---|---|
| tests on real data (owner's catalogues, raws, HEIC), the CC0 corpus from raw.pixls.us, Metal GPU, `cargo xtask ci --hardware` | code, reviews of other PRs, triage, backlog analysis, multi-agent work |
| Lightroom Classic observation (read-only, on copies) and reference exports | drafting issues, comments and PR bodies |
| macOS-only behaviour (Finder, camera over USB, file associations) | posting through child sessions on `storytold/lightcraft` (section 6) |
Both may code and open PRs. When a task needs both (code in the cloud, check on the Mac), the ledger says so and
`MAC-HANDOFF.md` carries the Mac half with exact commands.

## 5. Bar lines: write down every public action, right away
Every public action (issue opened, comment, PR opened, push to a PR, review, label request, Discord text handed to
the owner) gets one log line in `.fork/TODO.md` **in the same work unit, pushed before you go on**:
`- YYYY-MM-DD (cloud|mac): <what> <link> — <why / next step>`.
The other session discovers our own public footprint from this log, not from GitHub. (Miss of 2026-10-23: the Mac
session opened #2592, #2606 and PR #2599; the cloud session learnt it from a GitHub page, after drafting an issue
that overlapped them.)

## 6. Posting: one voice
- Nothing public without the owner's explicit "go", except what he delegated (`CLAUDE.local.md` → Guardrails):
  opening PRs and pushing fixes to **our own** open PRs (2026-10-22); replies to reviews on our own PRs, posted 24 h
  after the owner saw the text without answering, and progress comments on our claims (2026-10-23).
- Before any new issue or claim: the duplicate check of `CLAUDE.local.md`, **plus** (lesson from #1290, 2026-10-23)
  search with synonyms of the user's words (library = catalog; open / launch / startup; recent / previous / list),
  search titles **and** bodies, open **and** closed, and grep our own triage tables in `.fork/` before concluding
  "no duplicate". An older issue asking the same thing is the keeper: claim it and add our details there.
- When the ticket-craft bot asks to split an issue, split only what really is separate work; answer it in one line.
- **Claim clock (craft-contrib RFC-0003/0005/0006, rules 1–7 of `CLAUDE.local.md`).** A claim comment on the
  issue starts a 24 h clock: the ledger line of a claimed task carries `claimed YYYY-MM-DD HH:MM UTC` and the
  session that holds it gets a draft PR or a progress comment up before it runs out (`send_later` at ~20 h). No
  automatic release: past 24 h without progress, a takeover by someone else is accepted; log it and stop.
  Review comments on our PRs: reply drafts reach the owner the same day; the ledger line carries
  `shown YYYY-MM-DD HH:MM UTC`, a `send_later` fires 24 h later and, without his answer, the text is posted as is
  (through a child session whose **initial prompt** carries the final text and cites this delegation, so it doesn't
  wait for a second go). Before opening any new PR, check the ledger: if one of our PRs has an unanswered review
  comment, answer it first (no flood).
- **#2613 / #2614** (Lightroom previews, Smart Previews) belong to the Mac session: real catalogue, previews and
  hand testing. Cloud sessions don't code or post on them.
- Cloud sessions post through a child session (`create_session` with `source_url` = upstream). Such a child often
  refuses to act on a parent's message and asks the owner to type "go" in it: give the owner its link at once.

## 7. Tempo
- Commit small, push often (a crash or a stopped session loses minutes, not hours).
- Push the score (`.fork/` on `main`) at three moments: after claiming a task, after each public action, before the
  session ends. Fork `main` = upstream `main` + the one fork-only commit: update it by amending that commit
  (`git fetch origin main && git rebase upstream/main`, edit, `git commit --amend --no-edit`,
  `git push --force-with-lease origin main`). If the push is refused, the other session pushed meanwhile: fetch,
  re-apply your lines on top of theirs (never drop theirs), push again.
- End of session (coda): update the ledger (states, links, "next" for each open item), refresh `MAC-HANDOFF.md`
  if the Mac's list changed, push, and tell the owner in two lines what the next session should start with.
- One heavy build at a time per machine; the Mac session announces in the ledger when it runs a long
  `xtask ci --hardware`, so the cloud doesn't wait on results that are not coming yet.

## 8. Feedback loop: learn from CodeRabbit and reviewers
CodeRabbit reviews every upstream PR and keeps finding the same kinds of things on ours. Before opening a PR (or
pushing a review fix), self-review against this list, and add a line here whenever a new kind of finding appears.
| # | Lesson | Seen on |
|---|---|---|
| 1 | Docstring coverage ≥ 80 % on every function/struct added or touched (pre-merge check) | #2315 72 %, #2599 71 %, #2032 57 % |
| 2 | A test must fail without the change and must not pass vacuously: revert the core change and watch it fail | #2550 |
| 3 | Docs, help text and PR body match the code exactly; no guide for an unreleased feature | #2315, #2032, #2599 |
| 4 | No needless copies of large data; say what happens at resource limits (disk, memory) | #2315 (clone), #2599 (free space) |
| 5 | Every failure path reports something actionable; async results trigger a repaint | #2315 |
| 6 | Widget ids unique and outside other namespaces | #2032 (human reviewer) |
| 7 | Every entry point consistent: menu, command, control channel, file filters | #2599 |
| 8 | Hardening: no ignored errors on permission / fs calls; symlinks and stale-sweep races considered | #2599 |
| 9 | A fix for a matching / ordering bug covers both orders and every combination (with/without id, old/new release), not only the reported one | #2599 (backup then live, 2026-10-23) |
| 10 | A performance claim (freeze, slow path) is measured before it is reported or fixed | #2689 review (#1417 `mdfind`: 20 ms measured, 0.5–3 s assumed) |
| 11 | A guard (stale window, refused state) covers every path that acts, not only the obvious one | #2685 (stale check on Merge only) |
| 12 | A parity-checklist row touched → its `docs/gaps.md` entry (and its Last updated / revision history) in the same commit | #2685 |
| 13 | Headless tests assert on the action's own result, not on the last toast (another notice can replace it, seen on macOS) | #2685 (Mac session) |
| 14 | After a merge, review the whole diff of each conflicted file against both parents, not only the conflict hunks: git can auto-merge, next to a conflict, two versions of the same change (both kept) | #2689 upstream merge (control-server test sent request 2 twice, 2026-10-23) |
| 15 | A scripted doc or code edit is checked by a text diff (every removed / added line read) before the commit, not only by the script's own check | #2689 (header dedup glued two entries, caught by the adversarial review) |
| 16 | A test drives the real entry point (the frame loop, the command, `ui.dropFiles`), not only the helper it calls; code reached every frame is a no-op on empty input | #2701 (hold_dropped toasted every frame; the test called it directly) |
| 17 | A load or stress test cleans up after itself and the session checks it did (`pgrep`, `uptime`) before the next build; a test filter is checked to have run the test ("1 passed", not "0 passed") | Mac 2026-10-23: 320 orphaned `yes` from a load loop held the load at 380 for 1h30 and made a full CI fail; the loop's filter had run 0 tests |

**Handling a review round (rule of 2026-10-23: each round trip costs a CI run, a re-review and tokens).**
1. Read CodeRabbit's whole review first, including the "Outside diff range" and nitpick sections and its "Prompt for AI agents" block, and every open thread on the PR.
2. Fix the class, not the instance: for each finding list the neighbouring cases (reverse order, every entry point — menu, command, CLI / MCP, web —, other limits, other files with the same pattern) and fix them all, one test per case, each shown to fail without the fix (row 2).
3. Before pushing, an adversarial review of the fix's diff by a separate agent (given the finding, the diff and this table), told to find what the fix misses or breaks; fold its findings in.
4. One commit and one push per round with every finding handled; then one reply per thread (outside-diff findings: one PR comment addressed to @coderabbitai). Never push finding by finding.
5. After the round, update the lessons table (above).

Every review round on our own PR ends with **one reply per thread handled** (the fixing commit, or why not), posted in the same work unit as the push; a push alone is not an answer (missed on #2685, 2026-10-23).
After each review round, the session that handled it compares the findings with this table: a finding already in
the table means the self-review missed it (tighten the step); a new kind of finding gets a new row.
