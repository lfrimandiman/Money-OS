# Changelog

One entry per version, newest first.

## v2 — 2026-10-25
Applies Jordan's Oct 25 rulings (Product HQ) on the build decisions and UX's eleven proposals.
- Savings recommendation default is now 25% of income received (was 15%). Still adjustable;
  the cap (what is free after bills and card bills) and rounding to the nearest 100 are unchanged.
- "On track" now judges pace: share of the pool spent vs share of the month gone (today
  counts). Amber "◔ ahead of pace" only when spending is more than 10 points ahead; red
  "! over pool" as before. The Math sheet shows the comparison. Replaces the flat 85% rule.
- Savings: spending paid from a savings-counted account (Maya in the sample) is called out,
  per account and in a note, so the dip in progress is explained. Maya still counts.
- Home shows one daily number (Today you can spend); daily guide and base live in the Math sheet.
- Summary figures round to the peso; ledgers, entry rows, entry details and forms keep centavos.
- Day field: Today, Not known and Another day chips, none preselected for an expense; Save
  waits for a choice. Changing the month asks for the day again.
- One Log entry point: the full-width "+ Log a transaction" buttons on Home and Activity are gone.
- Line icons (stroke 2) for the tab bar, + button, cards, due bills, demo date, close and
  chevrons. Status symbols ✓ ◔ ! ? stay text.
- In/Out bars use ink and a neutral instead of account colours.
- Activity: a "n with no day" chip under the month header jumps to Date not specified.
- First-load toast dropped; the SAMPLE DATA pill already says it.
- Month names on Home and Savings follow the demo date instead of always saying October.
- Fix: tapping a button right after typing in a field no longer loses the tap.
- Sample data: BPI Payroll opening balance 4,100 → 7,100 (fictional), so the 25% recommendation
  is not capped in the sample and the card/cash scenarios measure what they claim. Storage key
  bumped to v2, so the old v1 sample data on a device is not reused.
- All nine acceptance scenarios pass.

## v1 — 2026-10-24
- First interactive trial, built from the ChatGPT brief of the same day (Oct 24).
- Home: Total Balance with a per-account ring, Monthly Spendable, either can be the big
  number and the choice is remembered. Monthly allowance, remaining, daily guide, carry jar.
  In-vs-out. Cards owed shown separately. Nearest bills, recent activity.
- Activity: one month at a time, newest day first, grouped by day with daily totals, filters,
  and a separate "Date not specified" group. Tap an entry to edit or delete it.
- Log: Expense (Scan Receipt first, Manual Entry beside it, both ending at the same review
  form), Income, Withdraw/Transfer, Pay a card.
- Savings: general monthly goal or a specific goal, each keeping its own progress.
- More: setup guide, the nine acceptance scenarios, bills, accounts and reconciliation,
  settings, reset.
- "How this is worked out" shows every figure as a reconciliation sheet.
- Fictional sample data throughout. Demo clock so the daily carryover and the 1st-of-month
  reset can be seen without waiting.
- All nine acceptance scenarios from the brief pass, run from inside the app.
