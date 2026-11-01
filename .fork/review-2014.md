# LC-review of #2014 (preset Favorites), 2026-10-26 — NOT POSTED (owner's go needed)

Produced by a Fable 5.1 review agent (read-only, git only) for the owner. Key fact: upstream main already has #1999's
Favorites section from our #2032, merged inside round-3a batch #2689 (c414ef06); #2580's "keeper #2014" predates that.

**LC-review** · head 3b58d855 · by @francoisgn (Claude)

**Verdict** 🟠 — Redundant with what `main` already ships from #2032 (merged in #2689); the only part still worth taking
is the clickable per-row star, rebuilt as a small delta on `main`. The branch no longer compiles against `main`
(`register(ctx, …)` → `register(ui, …)`, `Id::new` → `Id::unique`) and uses competing row ids (`presetFav:` vs
`main`'s `presetFavorite:`).

**Findings**
1. `main` already has the Favorites section: `panels/presets.rs` header `presetFavorites`, rows `presetFavorite:{pid}`,
   list order, no Export Group / Move-to-Group target, star painted but not clickable, context menu Add/Remove from
   Favorites → `preset.favorite`; tests `tests_preset_favorites.rs` (2).
2. #2014 duplicates ~80 % and differs in four places: row ids `presetFav:{pid}`, panel-order sorting, `builtin: false`
   label path, `Id::new("preset-group-favorites")` open-state id; conflicts in `presets.rs` and add/add in
   `tests_preset_favorites.rs`.
3. Header id `presetFavorites` consistent everywhere, no collision with a user group named "Favorites"; row/star ids
   must align (`presetStar:{pid}` / `presetStar:fav:{pid}`, as `profileStar:` in `profiles.rs`). Test doc cites #2017
   instead of #1999; checklist revision dated 2026-10-16.
4. No panic paths; compile breaks vs main (above); hover preview not suppressed over the star (`profiles.rs:187` does).
5. Process: plan decision stale since #2689.

**Suggested path**: #2014 reduced by its author to the row star on `main` (one test appended to the existing file), or
closed with: "#1999's section landed via #2032 in #2689; what remains of this PR is the row star — happy to see it as a
small follow-up on current `main`." Also update #2580 (keeper line for #1999).
