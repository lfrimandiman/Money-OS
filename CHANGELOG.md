# Changelog

One entry per version, newest first.

## v8.1 — 2026-10-25
- Phones that opened v7 had its sample data saved, so they never saw the welcome. Sample data
  that wasn't chosen (from *Look around with sample data* or *Reset demo data*) now opens on the
  welcome. Your own data is never touched.

## v8 — 2026-10-25
- **First open is a welcome, not sample figures.** Choices: *Set up my money*, *I already use it
  on another phone* (restore), or *Look around with sample data first*.
- **Setup in four steps** (accounts, cards, bills, goal) and a review. Under each step,
  "Your Money OS so far" builds as you type (Total Balance, cards owed, bills, Spendable),
  from the same `calc()` as the app.
- Erasing your data on the phone returns to the welcome.
- All nine acceptance scenarios pass.

## v7 — 2026-10-25
- **Opens like an app.** The app now has its own home on GitHub Pages
  (https://lfrimandiman.github.io/Money-OS/) with a Money OS icon, name, cream status bar and an
  offline copy, so Add to Home Screen opens it full screen without going through Claude.
- **Sheet link outside Claude.** On the home-screen app, More → *Connect my sheet* walks through a
  one-time Apps Script in Jordan's own sheet (key-protected). Updates and backup work as before;
  *Copy restore code* moves everything to another phone. Inside Claude it still uses the connectors.
- All nine acceptance scenarios pass in both places.

## v6 — 2026-10-25 (first full-use version)
- **Backup and restore through the sheet.** Every sheet update also writes the whole app state
  to column J. On a new phone, browser or home-screen icon, More → paste the sheet link →
  *Restore from it* brings everything back. In real mode restoring asks for a second tap.
- Sample data can no longer reach the sheet: creating or sending to a sheet needs real mode,
  and updates are skipped in sample mode.
- All nine acceptance scenarios pass.

## v5 — 2026-10-25
- **Start with my own money** (More, in sample mode): one setup sheet for accounts (name, kind,
  balance right now, protected / counts as savings), credit cards (owed now, due, pay from),
  bills (amount blank = unknown) and an optional goal. Starting replaces the sample on this
  phone, drops the demo date and follows the phone's calendar. Balances entered are the starting
  point; only new money is logged from then on. Nothing real is in the code or the repo.
- **ChatGPT + Claude link**: the app can keep a Google Sheet that Jordan owns up to date (create
  one from the app, or paste a sheet link). It writes through his own claude.ai Google Drive and
  Google Sheets connectors, only after a change or "Update now", never on load. ChatGPT reads the
  sheet with its Google Drive connector, Claude with Google Sheets. Errors say what to fix.
- Real mode: no Sample Data pill or demo clock, "Illustrative only" notes hidden, "Erase my data
  on this phone" (tap twice) instead of reset. Acceptance scenarios run on a sample copy and
  leave real data untouched. Home and Log handle having no cards.
- Colors: cream, black and red (Jordan, Oct 25), light and dark.
- All nine acceptance scenarios pass in sample mode and in real mode.

## v4 — 2026-10-25
- More → **Use with ChatGPT or Claude**: "Copy for ChatGPT / Claude" builds a plain-text
  snapshot of this month (balances, Spendable, pool and pace, savings, cards, bills, every entry,
  plus a short note on how the figures work) from `calc()`, and copies it. Paste it into either
  chat and ask. Nothing is sent anywhere by the app. If the phone blocks copying, the text is
  selected so it can be copied by hand.
- All nine acceptance scenarios pass.

## v3 — 2026-10-25
- Savings cap (Jordan's ruling, Product HQ): the recommendation is now
  min(25% of income received, income received − bills due this month), floored at 0, rounded to
  the nearest 100. Bills due this month count paid or unpaid; bills with no amount stay out and
  flagged. Spending and card purchases never move it, so every purchase lowers Spendable.
- Math sheet: the savings line shows target − saved, and a new note shows how the target is set.
  Savings screen and the adjust sheet describe the new cap.
- Sample data: the temporary ₱3,000 on BPI Payroll is removed (opening back to 4,100); all nine
  scenarios pass without it. Storage key bumped to v3 so older sample data is not reused.
- All nine acceptance scenarios pass.

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
