**LC-review** · head `10c4d0c0` · by @francoisgn (Claude)

**Verdict:** 🟢 Ready to merge once the doc conflicts are rebased. The workflow is sound and least-privilege, and `--quick` and the CI lock behave as described. The findings below are small hardening items and none of them blocks the merge.

**Checks:**
- `git diff $(git merge-base upstream/main upstream/pr/2302) upstream/pr/2302`: read in full (ci.yml, ci_quick.rs, ci_lock.rs, xtask/src/main.rs, CLAUDE.md, README.md, gaps.md, target-app-parity.md).
- `cargo test -p xtask` on the PR head: **pass** (49 tests, incl. 7 ci_quick and 2 ci_lock; `embedded_files_are_mapped` passes against the real tree).
- `cargo clippy -p xtask --all-targets -- -D warnings`: **pass**. `cargo fmt --check -p xtask`: **pass**.
- I merged upstream/main into the PR locally, took the PR side for the 3 doc conflicts, then ran `cargo test -p xtask` and clippy again: **pass** (`xtask/src/main.rs` auto-merges cleanly).
- `cargo xtask ci --quick` on throwaway commits:
  - A comment in `crates/color`: selects `lightcraft-color` only (fmt, then workspace clippy, ...). **ok**
  - With the default base (`origin/main` = the fork): selects color, raw, ui-egui, xtask. The PR's `xtask/src/main.rs` correctly pulls in `lightcraft-raw` through `EMBEDDED`. **ok**
  - Docs only (`docs/raw-parity.md`): runs fmt, layers, assets and nothing else. Exit 0 in **24 s**. **ok**
  - Root `Cargo.toml`: prints "workspace-wide file changed: testing every package". **ok**
  - A renamed test file in `crates/codecs`: selects `lightcraft-codecs`. The rename sets `parity` (covered by a unit test). **ok**
  - An untracked file in `crates/geom`: picked up. **ok**
- CI lock:
  - A second run waits and names the holder ("running: pid … cargo xtask ci --quick …"). **ok**
  - After `kill -9` of the holder, the next run starts at once. A stale `.lock.owner` sidecar is left behind but is harmless. **ok**
- Workflow YAML:
  - `python3 yaml.safe_load`: **ok**. `actionlint` 1.7 (pip `actionlint-py`): **no findings**.
  - Pins checked with `git ls-remote` / `git fetch`:
    - checkout `3d3c42e` = v7.0.1 ✔
    - rust-cache `6323deb` = v2.9.2^{} ✔
    - rust-toolchain `686976e` exists, `default: stable` ✔. It is no longer reachable from the force-pushed `stable` branch (see 🟡7).
- `git merge-tree --write-tree upstream/main upstream/pr/2302`: **3 doc-only conflicts**.
  - `CLAUDE.md`: main added the `chrono` bullet just above the Quality gates line. Keep both.
  - `docs/gaps.md`:
    - Header: date / change text.
    - Rows 8–10: main changed rows 8 and 10, the PR changed row 9. Take main's 8 and 10 and the PR's 9.
    - Revision history: keep both sets of entries.
  - `docs/target-app-parity.md`: header, the Stability row (main added ", fixed in 0.9.1", the PR changed the CI clause; keep both) and the history.
  - All of these resolve by hand in a few minutes. Bump the dates to the rebase day.

**Findings:**
1. 🟠 `.github/workflows/ci.yml:38–39`: **disk and time on `ubuntu-latest` are unverified**.
   - `cargo xtask ci` builds the workspace several ways: clippy metadata, the test build, the heif feature variant of engine and its dependents, the `lightcraft-cli` run for parity, and the wasm32 check. Debug info is line-tables, and every dependency is built at opt-level 2.
   - The shared local target dir is 23 GB under `debug/` (several versions accumulated). A standard runner has roughly 14–25 GB free on `/`.
   - Failure scenario: "No space left on device" in the test or link step, on the first cold run or after the cache restores several GB.
   - Fix:
     - Link the first green run from the PR (or a `workflow_dispatch` run on the fork) with its wall time and a `df -h` after the run.
     - If the margin is thin, add a "free disk" step (remove `/usr/share/dotnet`, `/usr/local/lib/android`, `/opt/ghc`) before the build, or set `CARGO_PROFILE_DEV_DEBUG=0` in the job env.
2. 🟡 `.github/workflows/ci.yml:70`: **no `--locked`**.
   - Neither the workflow nor `xtask ci` passes `--locked`. A PR that edits a crate's `[dependencies]` without committing the `Cargo.lock` update goes green: cargo rewrites the lock on the runner.
   - #1148 uses `--locked` everywhere.
   - Fix: add a step `cargo metadata --locked --format-version 1 > /dev/null` before `cargo xtask ci` (cheap, fails on drift).
3. 🟡 `.github/workflows/ci.yml:59`: **floating `stable` toolchain**.
   - Every Rust release (6-weekly) can add clippy lints. With `-D warnings`, every open PR and main go red at once, with no code change.
   - Fix (maintainer choice): pin a version (`toolchain: 1.9x.0`, or a `rust-toolchain.toml` that local runs also follow), bumped deliberately the way craft-fonts is.
4. 🟡 `xtask/src/ci_lock.rs:61,74`: **the lock fails closed**.
   - If the cache dir can't be created (read-only `$HOME`, sandbox) or `try_lock` returns an OS error (some NFS / network homes), `cargo xtask ci` refuses to run at all. That makes a convenience feature into a blocker.
   - Fix: on `Err`, print a warning ("ci lock unavailable: …; running without it") and continue with `Ok(None)`.
5. 🟡 `xtask/src/ci_lock.rs:104`: **no upper bound on the wait**.
   - A hung run in another worktree (a deadlocked test, a stuck agent) makes every other agent's `ci` wait silently forever, after a single message.
   - Fix:
     - Re-print the holders every few minutes.
     - Honour an optional `LIGHTCRAFT_CI_LOCK_TIMEOUT` (or a default of ~2 h) that errors out and names the holder's pid.
6. 🟡 `xtask/src/ci_quick.rs:29` and `:44–45`: **gaps in `--quick`'s mapping to steps and packages**.
   - **Parity:** a change to `xtask/src/parity.rs` (the checker itself) doesn't trigger the parity step.
   - **xtask's own tests:** they scan the whole tree (`embedded_files_are_mapped`, the parity and assets tests). A new `include_str!("../../../docs/x.md")` in, say, `crates/raw` selects only `lightcraft-raw`, so the guard test that would flag the missing `EMBEDDED` entry doesn't run until GitHub.
   - Fix:
     - Add `"xtask"` to `PARITY_PACKAGES`.
     - Always add `xtask` to the tested packages when `p.rust()` is true (its tests take about 0.2 s).
7. 🟡 `xtask/src/ci_quick.rs:151`: **the default base is `origin/main`**.
   - For fork contributors (like this clone: `origin` = fork, `upstream` = storytold), `origin/main` is the fork's main. The merge base was `31a677f` rather than the real base `d999e38`, so `--quick` tested 4 packages instead of 1.
   - This is safe (it over-selects), but it is misleading and slower.
   - Fix: try `@{upstream}`, then `upstream/main`, `origin/main`, `main`. Or document `--base upstream/main` for forks in README.md:402.
8. 🟡 `xtask/src/main.rs:342`: `ci --quick --base` followed by another flag takes the flag as the ref.
   - Example: `ci --base --quick` sets `base = "--quick"`, and the user gets a confusing git error instead of "--base needs a ref".
   - Fix: reject a value that starts with `--`.
9. 🟡 Docs left stale by the PR:
   - **Stale "FreeBSD only" text:** `ROADMAP.md:34` ("tests run in CI on FreeBSD only"), `ROADMAP.md:112` (item 8, "Tests in CI on macOS, Windows and Linux") and `docs/target-app-parity.md:271` ("that CI tests only FreeBSD") all still say FreeBSD only. CLAUDE.md step 4 asks for these to move with the gap.
   - **Gap 9 hours:** the row still says 6–12 h although the Linux half is done.
   - **README.md:404:** says "a change to `Cargo.toml` … tests everything", but only the **root** `Cargo.toml` does. A crate's manifest maps to that crate. Say "the root `Cargo.toml`".
   - **The `rust-toolchain` pin dangles:** `686976e` (the rust-toolchain pin, shared with #1148) is no longer on `dtolnay/rust-toolchain`'s `stable` branch (force-pushed since). GitHub still serves it, but Dependabot can't follow it. Bump it to the current `stable` head (`b725eda`) when touching the file.
10. 🟡 Not a code bug: CLAUDE.md changes the per-commit gate from the full `ci` to `--quick`. `--quick` does not test dependents, and it runs neither doc tests nor the GPU probe.
    - With "Only green states" in place, a branch can now carry commits that break a dependent crate's tests until GitHub reports it.
    - That is acceptable now that every PR gets a full run, but it is a policy change the maintainer should accept explicitly (see below).

Also checked and fine:
- `permissions: contents: read`.
- `persist-credentials: false` on both checkouts.
- The concurrency group is `refs/pull/N/merge` per PR, so fork PRs can't collide. Pushes to main and manual runs are keyed by `run_id`, so they never cancel each other.
- The cache is saved from main only, and PRs (forks included) restore it.
- `CRAFT_FONTS_REQUIRED=1` with the same craft-fonts SHA as freebsd.yml.
- The wasm32 target is installed. HEIF is pure Rust, so the step needs no system library.
- GPU tests skip on the runner: `crates/gpu/src/ctx.rs:299` refuses `DeviceType::Cpu` (llvmpipe), and the tests use `skip!(Gpu, …)`.
- Lock files are opened `O_CLOEXEC` (std default), so child cargo processes don't inherit them. `Drop` removes the owner sidecar while the lock is still held.
- `LIGHTCRAFT_CI_LOCK=off` on the runner.
- `test_selected` builds with `--workspace --no-run`, so features match the full run. It runs each binary with `CARGO_MANIFEST_DIR` and the skip-log env.
- Paths read with `-z` are safe for non-ASCII (non-UTF-8 paths degrade lossily but still map by their ASCII prefix).
- No `unwrap`/`expect`/`panic` in non-test code of the new modules.

**Coverage vs #1148:**
- #1148 adds a `desktop` matrix job on `macos-latest` (arm64) and `windows-latest`: clippy plus `cargo test --workspace --locked --no-fail-fast`. This catches the `cfg(target_os)` code that only compiles there (#989).
- It also sets `core.autocrlf false` on Windows.
- It adds an opt-in `LIGHTCRAFT_GPU_ALLOW_SOFTWARE=1` (tests only; `crates/gpu/src/ctx.rs`) so the GPU equivalence, fallback, memory and shutdown tests actually run: on lavapipe (Linux, with `mesa-vulkan-drivers`), WARP (Windows) and Metal (macOS). The step fails if those tests still skip.
- #2302 covers only #1148's Linux half (both run the same `cargo xtask ci`) and adds `--quick` and the lock, which #1148 lacks.
- Recommendation: **merge #2302 first**, then rebase #1148 as a follow-up that adds the `desktop` matrix job and the software-adapter GPU step to this `ci.yml`. Drop #1148's duplicate Linux job and its old craft-fonts pin (`8dcdacd`; use freebsd.yml's `3d9ab3a`), and keep its `--locked`.
- Folding everything into #2302 now would hold up a working Linux gate on macOS and Windows runner tuning.

**Needs a maintainer decision:**
- **Runner time for main:** every push to main gets its own full run (never cancelled). Expect 40–90 min per merge on a 4-vCPU runner. That is free for a public repo, but it uses runner concurrency.
- **macOS minutes:** #1148's follow-up adds macOS and Windows jobs on every PR. macOS minutes count 10× on private repos and are free on public ones. Decide whether to run them on every PR or only on main plus a label.
- **Toolchain:** pin it or keep floating `stable` (finding 3).
- **Policy:** accept `--quick` as the per-commit gate in CLAUDE.md (finding 10).
- **Branch protection:** make "cargo xtask ci (Linux x86_64)" a required check.
- **Convention:** ci.yml is a standalone workflow, while freebsd, packaging-lint, release and windows-arm64 use `storytold/craft-common-actions` reusable workflows. Keep it local or upstream it there.

**Not checked:**
- The workflow on real GitHub runners: wall time, disk headroom, cache size against the 10 GB repo limit, and flakiness of the timing-based tests on a noisy runner. I had no GitHub access, so I don't know whether the PR's own CI run passed.
- The full `cargo xtask ci`, and a complete `--quick` run with a Rust change: the probes were stopped after plan selection, and only the docs-only run went to completion.
- Behaviour on macOS and Windows of `File::try_lock` and of the `LOCALAPPDATA` / `~/.cache` lock dir: read but not run.
- #1148's code changes (`crates/gpu/src/ctx.rs`, equivalence.rs): skimmed, not reviewed or built.

---
_Generated by [Claude Code](https://claude.ai/code)_
