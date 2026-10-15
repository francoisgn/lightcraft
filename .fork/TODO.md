# TODO (fork-only, owner: @francoisgn)

Pending work for future sessions. Each item: dedup check first, owner claims on the issue, then code.

- [ ] **Web backup and unsaved presets** (follow-up to #1987 / #1508): AlexChambers' review left
  "preset persistence outside `pending_log`" out of scope as preexisting. Check read-only whether a
  backup can start while a preset change isn't written yet, and whether an issue exists. If free: draft
  a claim, small PR.
- [ ] **Gap 28 shortcuts Tab, F5, T, Cmd+L**: wait for #1195 (F8 / Shift+Tab, same `view.allPanels` code).
- [ ] **Gap 23 brush by keyboard**: after #1916 (red eye by keyboard, same files).
- [ ] **French review (gap 21)**: owner reviews the generated list, Claude applies "N: fix" lines.
- [ ] **Real-browser check of #1987 / #1988**: Fork build or local web build, inject a storage failure.

Open PRs to follow: #1986, #1987, #1988, #1990, #2004 (+#2005 closed), #2031, #2032, #2033.
