#!/usr/bin/env bash
# FORK-ONLY (francoisgn/lightcraft): never part of an upstream PR. See CLAUDE.local.md.
#
# Duplicate-effort check against storytold/lightcraft, using git only (works where the GitHub API
# is unavailable). Usage: .fork/upstream-check.sh <keyword> [keyword…]   (case-insensitive regex)
# Looks at: upstream branches, upstream main's recent commit subjects (issue/PR numbers),
# docs/gaps.md and docs/parity-checklist.md on upstream main.
set -euo pipefail
[ $# -ge 1 ] || { echo "usage: $0 <keyword> [keyword…]" >&2; exit 2; }
cd "$(git rev-parse --show-toplevel)"
git remote get-url upstream >/dev/null 2>&1 || git remote add upstream https://github.com/storytold/lightcraft
git fetch -q upstream main --depth=500
pat="$(IFS='|'; echo "$*")"

echo "== upstream branches (open work, incl. claude/* agent branches) =="
git ls-remote --heads upstream | sed 's#.*refs/heads/##' | grep -Ei "$pat" || echo "(none)"
echo
echo "== upstream PR heads not referenced on main (open, or closed unmerged, or merged in a batch) =="
git fetch -q --depth=1 upstream '+refs/pull/*/head:refs/upstream-pr/*'
mentioned="$(git log upstream/main --format='%s %b' | grep -oE '#[0-9]+' | tr -d '#' | sort -u)"
git for-each-ref --sort=-committerdate --format='%(refname:lstrip=2) %(committerdate:short) %(subject)' refs/upstream-pr \
  | grep -Ei "$pat" | while read -r n d subj; do
      grep -qx "$n" <<<"$mentioned" || echo "#$n $d $subj"
    done | head -30
echo
echo "== upstream main, last 500 commits =="
git log upstream/main --format='%h %ad %s' --date=short -500 | grep -Ei "$pat" | head -40 || echo "(none)"
echo
echo "== docs/gaps.md (upstream main) =="
git show upstream/main:docs/gaps.md | grep -nEi "$pat" | head -30 || echo "(none)"
echo
echo "== docs/parity-checklist.md (upstream main) =="
git show upstream/main:docs/parity-checklist.md | grep -nEi "$pat" | head -30 || echo "(none)"
echo
echo "Still check open issues/PRs on GitHub: https://github.com/storytold/lightcraft/pulls?q=is%3Aopen+$1"
