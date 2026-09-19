# KumbhMela — Context

*What this folder is, why the website exists, and how it fits the wider project.*

---

## What this is

`index.html` is a single, self-contained **visitor guide** to the **2027
Nashik–Trimbakeshwar Simhastha Kumbh Mela** — one HTML file with all CSS and
JavaScript inline, no build step, no backend, and **no external network requests
at all** (no web fonts, no CDNs, no image files). You can open it by
double-clicking, or serve the folder with `python -m http.server`. It works
offline.

- **~888 lines / ~47 KB**, entirely hand-authored.
- Mobile-first, single long scroll, one idea per screen.
- All visuals are **hand-built SVG + CSS** — there are no photographs.

## Who it is for, and the tone

Pilgrims and visitors planning a trip to the mela. The deliberate tone is
**minimal, quiet, almost devotional** — sparse poetic copy, generous negative
space, no hype, and (by rule) **no exclamation marks**. The design palette is
saffron/marigold, river-blue, near-black and off-white; a serif face for the
emotional lines and a sans face for practical information (both system-font
stacks, so nothing is downloaded).

## Why it exists — and what it is NOT

It is an **independent** informational guide. It is **not affiliated** with any
government body, religious organisation, or the festival's organising committee,
and it never uses "official" wording. That independence is stated in the closing
disclaimer, the fine print, and the footer.

Everything time-sensitive is framed as **approximate**. Every date carries an
"expected — confirm closer to the event" treatment, and the copy repeatedly tells
the reader to verify with local authorities before travelling. Nothing is
presented as confirmed or official.

## The dates it currently shows (and where they live)

The site currently hard-codes these **expected** dates in **three** places that
must be kept in sync:

| Event | Date shown | Appears in |
|---|---|---|
| Dhwajaarohan (flag-hoisting / opening) | ~31 Oct 2026 | filter cards, timeline |
| First Amrit Snan | 2 Aug 2027 | countdown, filter, timeline |
| Second Amrit Snan | 31 Aug 2027 | countdown, filter, timeline |
| Third Amrit Snan | 11–12 Sep 2027 | countdown (11 Sep), filter, timeline |
| Dhwajavarohan (conclusion) | ~24 Jul 2028 | filter, timeline |

> The live **countdown** (`SNANS` array in the inline script) tracks only the
> three Amrit Snan bathing days; after the last one it shows a closing line.

## A sensitive point baked into the copy: the akhara ↔ site arrangement

The "Two waters" section states the **commonly recorded** arrangement:
**Vaishnava/Bairagi akharas at Ram Kund, Nashik**, and **Shaiva + Udasin/Sanyasi
orders at Kushavarta Kund, Trimbakeshwar** — traced to a Peshwa-era separation
after sectarian clashes. The copy is careful to say "traditionally recorded," not
asserted, and adds a caution that accounts differ and arrangements can change.

**Note for anyone editing:** this is a religiously sensitive claim and **sources
disagree** — some travel aggregators state the opposite pairing. The wider
project tracks this as an unresolved conflict (see the sibling engine work under
`../kumbh-2027/`, conflict "C1"). Do not "correct" it to the opposite without an
authoritative source and native-speaker review.

## How this fits the larger effort

This website is the *emotional, public-facing surface*. In parallel, a separate,
data-first system is being built under **`../kumbh-2027/`**:

- **Date engine** — computes tithi/nakshatra/paksha/masa with Swiss Ephemeris and
  holds a versioned, verified date table. It is intended to become the single
  source of truth that a future site reads, so dates are never hand-copied into
  three places again.
- **Crowd model** — a transparent, rule-based estimate (Very High / High /
  Moderate / Lower) for every auspicious day.

The present `index.html` predates that engine and still carries its dates and
crowd levels inline. When the engine's output (`kumbh-2027/data/dist/calendar.json`)
is verified, this page's countdown, filter cards, and timeline should be driven
from it rather than kept in sync by hand.

## Editing rules to preserve (if you change the file)

1. Keep the quiet, minimal tone; **no exclamation marks**; original copy only.
2. Keep every date labelled *expected* — never present anything as official.
3. Preserve accessibility: semantic landmarks, ordered headings, the skip link,
   visible focus, the `aria-pressed` chips + `aria-live` status, `aria-label` on
   meaningful SVG / `aria-hidden` on decorative SVG, AA contrast, and full
   `prefers-reduced-motion` support in **both** CSS and JS.
4. It must **degrade gracefully with no JavaScript** — all content stays visible.
5. Keep everything inline and dependency-free (fast on weak mobile networks).

See **`UI-ELEMENTS.md`** for a component-by-component breakdown of how the page is
built, inside and out.
