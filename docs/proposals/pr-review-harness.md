# Proposal: a PR review harness for LightCraft

**Status:** proposal, open for discussion · **Author:** François Guillon (drafted with Claude Code) · 2026-10-16

## Problem

LightCraft gets many PRs, many of them written by agents. Quality ranges from excellent to unusable, and
every one of them costs maintainer attention. An AI reviewer that re-reads the whole change would cost about as
much as writing it, and it still wouldn't prove anything.

## Principle: the contributor brings the evidence, the harness checks it

- **The burden of proof is on the PR.** It comes with a short, machine-readable evidence block. The harness
  *verifies* those claims; it doesn't re-derive the work.
- **A funnel, cheapest first.** Deterministic checks (no tokens) filter most low-quality PRs. A small model triages
  what's left. A larger model reviews only the risky parts. A human reads a one-screen summary and decides.
- **AI never approves or merges.** It prepares the decision.

```
PR ─► L0 deterministic checks (CI, free) ──fail──► needs-work label + auto comment, 0 tokens
        │ pass
        ▼
      L1 triage (small model, cents) ──► likely-close label
        │
        ▼
      L2 targeted review (mid model; large model on risk zones)
        │   JSON output validated against a schema; invalid output fails the check
        ▼
      L3 human: one-page summary ─► approve / request changes / close
```

## Step 0: CI on every PR (prerequisite)

Today no workflow runs `cargo xtask ci` on pull requests: only FreeBSD, Windows ARM64, Nix and packaging lint
run, and only when certain paths change. That's how a clippy 1.97 failure reached `main` unnoticed (fixed in
#1986). Nothing below holds up without a required Linux job running `cargo xtask ci`.

## L0: deterministic checks (`cargo xtask pr-check`)

Most rules in `CLAUDE.md` can be checked mechanically:

| Check | Rule it enforces |
|---|---|
| `cargo xtask ci` | fmt, clippy, tests, layers, assets, wasm, parity |
| **Mutation proof**: revert the non-test changes and run the new tests, which must then fail | "New features need at least one test that would fail without them", proven rather than claimed |
| `unwrap` / `expect` / `panic!` / `unsafe` added in non-test code | Never crash |
| Source changed but no test changed | Testing |
| Linked issue present; parity row / `whats-new.md` touched when a feature changes | Docs land in the same commit |
| Diff size cap (e.g. 800 changed lines, else "please split") | Keeps review cost bounded |
| Sensitive paths (`.github/`, `assets/`, `Cargo.lock`, `crates/sysmem`) → `needs-maintainer` label | Security, licensing |
| Evidence block present and well-formed | Burden of proof |

### Evidence block (PR template)

```yaml
issue: 1927
tests_added: [crates/engine/src/tests_constrain_crop.rs]
fails_without_fix: true          # verified by L0 (mutation proof)
commands_run: [cargo xtask ci]
behaviour_choices: ["crop doesn't re-grow when a correction is reduced"]  # for a human to decide
risk_zones: [engine/develop]
not_verified: ["real browser"]
```

A false claim (say, `fails_without_fix: true` when the mutation check shows otherwise) is a strong low-quality
signal on its own.

## L1: triage (small model, e.g. Haiku)

- **Input:** PR description, `git diff --stat`, the linked issue. Not the full diff.
- **Output (JSON):** category; risk level; low-quality signals (description doesn't match the diff, unrelated
  changes, generic boilerplate); route (`likely-close` / `review` / `review-deep`).

## L2: targeted review (mid model, e.g. Sonnet; large model, e.g. Opus, for risk zones)

- **Context:** the diff, the touched files and `.github/review/REVIEW.md`, a versioned checklist derived from
  `CLAUDE.md`. Nothing else.
- **Every finding must have:** `file:line`, a concrete failure scenario and a severity. A finding without a
  scenario is rejected by the schema, which cuts the noise.
- **Large model only for risk zones:** catalog and persistence, raw decoders, web storage, migrations.
- **Incremental:** on a new push, only the delta is reviewed.

## L3: the human summary

One pinned comment: 🟢 / 🟠 / 🔴 per axis (CI, evidence, review, open choices), plus "the three things to look
at yourself". The maintainer decides behaviour choices and 🔴 findings, nothing else.

## Guardrails and enforcement

| Guardrail | How it's enforced |
|---|---|
| The AI can't approve or merge | Its token has no approve right; branch protection requires one human approval |
| A PR can't change the reviewer's prompt, checklist or schema | They live in `.github/review/` under CODEOWNERS; the workflow reads them from `main`, never from the PR |
| Prompt injection through PR content | PR text and code are treated as data; the AI job has no write secrets and runs no PR code; build and tests run in a separate job without secrets (care with `pull_request_target`) |
| Bad output or runaway cost | Schema validation fails closed (back to a human); turn and token caps per PR |
| Token spam | First-time contributors get L0 only, and L2 when a maintainer adds `run-review` |
| Drift | Track how often humans overrule the AI's verdict; recalibrate `REVIEW.md` monthly |

**Tooling:** GitHub Actions, `anthropics/claude-code-action` with a pinned prompt, required status checks and
CODEOWNERS. All of it exists today.

## Limits

- An AI review is not a proof: it misses subtle logic and rendering bugs. The hard guarantees come from L0
  (mutation proof, CI).
- Render fidelity against Lightroom is out of reach for this harness; it needs reference-image tests.
- L0 is the real lever. Without CI on PRs, the rest doesn't hold.

## Rollout

1. Required Linux CI job running `cargo xtask ci` (step 0).
2. PR template with the evidence block; `cargo xtask pr-check` (L0), advisory for two weeks, then required.
3. L1 and L2 workflows, advisory (a comment only) for a month; measure the override rate.
4. Turn the summary check into a required status once the override rate is acceptable.

Happy to implement steps 1–2 as PRs if maintainers agree.
