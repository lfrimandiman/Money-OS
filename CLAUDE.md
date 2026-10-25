# Money OS — rules for Claude

Jordan's personal finance app. Private trial for Jordan first. Working name only.

## Read first
Product knowledge lives in the second brain repo `lfrimandiman/Second-Brain` (`app/money-os/`):
Money OS hub, Decision Log, THREAD, and — once written — Screens and Flow, Design System.
Read the pages you need before changing behaviour or design. **Jordan's decisions there win
over anything in this repo.** Questions you cannot answer from those pages go in
`Money OS THREAD.md` for the Product HQ session; don't invent product rules here.

## Layout
- `prototype/app.html` — the app, and the source of truth. One self-contained file (CSS + JS
  inside). It is the artifact body, so it has no `<html>`, `<head>` or `<body>` wrapper.
- `prototype/index.html` — generated standalone copy for opening locally:
  `cd prototype && cat skeleton.head app.html skeleton.foot > index.html`
- `CHANGELOG.md` — one entry per version, newest first, plain language.

## The rule that keeps the money honest
Every figure comes from `calc()`, recomputed from scratch on every render. Never cache a
balance, never write a running total into state. A change is only correct if it falls out of:

```
spendable = unprotected accounts − unpaid bills this month − card set-aside − savings still to put away
pool      = already spent this month + spendable
```

Expected income is never counted as received. Unknown is not zero — show `?` and the reason.
Own-account transfers are neither income nor expense. A card purchase is one expense that
raises what the card owes; paying the card moves money without adding a second expense.

## How to work
- Keep it one file until there's a reason to split; match the existing code style.
- Follow the design system: one easing with 150/450/550ms, status = symbol + text, no emojis,
  44px touch targets, phone width first. Money OS keeps its own palette (paper + pine ink,
  a mono face for ledger rows) so it reads as a sibling of Migration OS, not a copy.
- Before calling anything done: open it in headless Chromium at 390×844
  (`executablePath: '/opt/pw-browsers/chromium'`), click through the changed screens, run the
  nine acceptance scenarios (`runAll()` — all nine must pass), and check the console is clean
  and the page doesn't scroll sideways.
- Bump the version in CHANGELOG, commit, push.
- Republish `prototype/app.html` to the **same artifact URL** so Jordan's bookmark keeps
  working: pass `url: "https://claude.ai/artifact/TcPwWCbVGJQq3gDpNxbLE6"` on the publish, and
  read that artifact first if this session hasn't. Publishing without the url makes a new link.
- Then update the second brain: version line in `Money OS.md`, decisions in
  `Money OS Decision Log.md`, handovers in `Money OS THREAD.md`.
- **Sample data only.** Never put Jordan's real balances, account numbers or IDs in this repo,
  even though `life/finance/Finance.md` in the second brain has them.

## Working with Jordan
Taglish, casual, one step at a time. He reviews on iPhone via the private artifact
https://claude.ai/artifact/TcPwWCbVGJQq3gDpNxbLE6 — republish after each version.
