# Money OS — interactive trial

Working name for Jordan's personal finance app. This is the interactive trial described in
`Jordan_Finance_App_Claude_Trial_Brief.md`: phone-first, English-only, **fictional data only**.
Nothing connects to a bank, e-wallet, inbox, calendar or sheet, and nothing can move money.

## Run it

- **On the phone:** https://claude.ai/artifact/TcPwWCbVGJQq3gDpNxbLE6 (private — Jordan only).
- **Locally:** open `prototype/index.html` in any browser. One file, no install, no server, no sign-in.
  At 390×844 it fills a phone screen; wider screens show the same column centred.

`prototype/app.html` is the artifact body (no `<html>`/`<head>` wrapper — the artifact host adds it).
`prototype/index.html` is that same body wrapped for standalone use. After editing `prototype/app.html`:

```sh
cd prototype && cat skeleton.head app.html skeleton.foot > index.html
```

State lives in the browser's `localStorage` on that device only. **More → Reset demo data**
puts the sample balances and the demo date (24 October 2026) back.

## What the trial covers

| Screen | What it does |
|---|---|
| **Home** | Total Balance with a per-account ring, Monthly Spendable, either one can be the big number (remembered). Monthly allowance + remaining + daily guide + carry jar. Income vs expenses. Cards owed, shown separately. Nearest bills, recent activity. |
| **Activity** | One month at a time, newest day first, grouped by day with daily totals. Filters: All / Expenses / Income / Transfers / Card Activity. A separate **Date not specified** group. Tap any entry to edit or delete it. |
| **Log** | Expense (Scan Receipt first, Manual Entry beside it — both end at the same review form), Income, Withdraw/Transfer, Pay a card. |
| **Savings** | General monthly goal (net increase across BPI Savings, BDO Savings, MariBank, Maya) or a specific goal; both keep their own progress. |
| **More** | Setup guide, the nine acceptance scenarios, bills, accounts and reconciliation, settings, reset. |

## The one calculation everything hangs off

```
Spendable, rest of month
  = money in unprotected accounts      (cash + payroll; savings are protected)
  − unpaid bills due this month        (bills with no amount yet are flagged, never guessed)
  − set aside for card bills           (what the cards owe)
  − savings still to put away          (target − already saved this month)

Monthly pool (allowance) = already spent this month + spendable
Base daily  = pool ÷ days in month
Carry jar   = Σ (base − spent that day) over elapsed days this month
Today       = min(spendable, base + jar − spent today)
Daily guide = spendable ÷ days left
```

Written out in plain English inside the app under **How this is worked out**.

Why it is consistent: spending from your own accounts moves `spendable` and `already spent`
in opposite directions, so the monthly pool never changes by itself. A card purchase raises
what the card owes instead of lowering a bank balance, so it is counted exactly once. Paying
the card lowers both the bank and the amount owed, so spendable does not move. An own-account
transfer touches neither income nor expenses.

## Acceptance scenarios

All nine from the brief run inside the app (**More → Acceptance scenarios**). Each one acts on
the live sample data and prints the before/after figures it measured — not a canned answer.
"Reset and run all 9" starts from a clean demo. Verified passing in headless Chromium at 390×844.

## Deliberately not here

Live bank connections, Gmail / calendar / Google Sheets, statement parsing, production receipt
OCR, real financial import, authentication and hosting, automatic transactions, export-ready
reports. Scan Receipt uses one sample receipt and simulated extraction, labelled as a demo.

## Beyond the brief (for Jordan to confirm)

- The Log screen offers **Withdraw/Transfer** and **Pay a card** next to Expense and Income.
  The brief only names Income and Expense, but the money rules it asks for cannot be
  demonstrated without a way to enter those two.
- **Protected accounts**: the four savings accounts are kept out of Monthly Spendable. That is
  what makes Total Balance ≠ spendable money. Toggle per account under More → Accounts.
- **Demo date** control (top right) — only so the daily carryover and the 1st-of-month reset
  can be seen without waiting.
- **Balance checkpoint** — reconciling an account records the difference as its own entry
  instead of rewriting past transactions.

## Sample data

Invented. Account names (BPI, BDO, MariBank, Maya, UnionBank) are labels only; every balance,
card amount, bill and transaction is made up. September is seeded as a heavy month (tuition +
a phone), October runs to the 23rd with the demo date on the 24th.

## How this repo is worked on

Three Claude Code sessions in the "Money OS" project, with this repo and `Second-Brain`
attached to each. They share no memory — the wiki is the shared memory.

| Session | Starts with | Owns |
|---|---|---|
| MO — Product HQ | `/hq` | Scope, priorities, rulings, the Decision Log |
| MO — UX/UI | `/ux` | Screens and flow, design system, wireframes, copy |
| MO — Build | `/build` | This repo and the artifact |

Handovers go in `app/money-os/Money OS THREAD.md` in the second brain. Role briefings live
in `.claude/skills/{hq,ux,build}/SKILL.md` there too.
