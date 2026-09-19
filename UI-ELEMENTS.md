# KumbhMela website — what's on it and how it's built

*In plain language. No coding knowledge needed. This explains the parts of the
website (`index.html`) — first what a visitor sees, then how it was put together.*

---

## PART 1 — What you see on the page

The website is one long page you scroll through, top to bottom. Here are its parts
in order:

1. **Top bar.** A thin strip pinned to the top with the name "Simhastha 2027" and,
   on wider screens, quick links to jump to each section. It's see-through over the
   opening picture, then turns into a dark bar once you start scrolling.

2. **Opening screen (the "hero").** A full-screen, hand-drawn picture of dawn over
   the river — sky, stars, a low sun, mist, temple spires, people standing at the
   water's edge, and little floating oil lamps. Over the picture sits the title
   line *"Once in twelve years, the river remembers,"* and a **live countdown**
   ticking down to the next sacred bathing day.

3. **"Why now" (the astronomy bit).** A dark, starry section explaining why this
   festival happens every ~12 years — when the planet Jupiter moves into the Lion
   star-sign. It shows a small star-map of the Lion constellation with Jupiter.

4. **"Which day should I go?"** A few tappable buttons — *the procession /
   stillness / a quiet ritual bath.* Tap one and the list of days below filters to
   match what you're after. Each day is a card showing its name, date, a short
   note, and a little **crowd meter** (High / Medium / Lower).

5. **"Two waters."** Explains that the holy bath happens in **two** places —
   Ram Kund in Nashik, and Kushavarta Kund in Trimbakeshwar (about 30 km away) —
   shown side by side, with a gentle note that which group bathes where is
   *traditionally recorded* and should be confirmed locally.

6. **"Key dates."** A simple vertical timeline of the five big moments (the opening,
   the three royal baths, and the closing). Every date is marked **"Expected —
   confirm closer,"** so nothing looks official or fixed.

7. **"Before you go" (practical tips).** A set of cards, each with a small icon:
   how to reach Nashik (train / road / air), where the crowds gather, how to stay
   safe in a crowd, what to pack, and a gentle nudge toward the quieter days.

8. **Closing.** A calm final screen with a single glowing lamp, a closing line, and
   the disclaimer that this is an independent guide — verify everything before you
   travel.

9. **Footer.** A blessing line, a one-line description, and the current year.

---

## PART 2 — How it's built (in plain words)

**It's one single file.** The whole website — the text, the pictures, the colours,
and the little interactive bits — all live inside one file, `index.html`. Nothing
is loaded from the internet.

**It works with no internet.** Because everything is inside that one file, the page
opens and works completely offline. This matters for pilgrims on weak or no signal.

**The pictures are drawn, not photos.** Every image — the dawn scene, the stars,
the lamps, the little icons — is *drawn with code* (shapes and colours described in
text), not photographs. That keeps the file tiny and fast, and it never needs to
download anything.

**Consistent colours and fonts.** The whole site uses one small set of colours
(saffron/marigold, river-blue, near-black, off-white) and two lettering styles — an
elegant one for the poetic lines and a plain one for practical text. The fonts are
ones already on your device, so nothing extra is downloaded.

**It adjusts to any screen.** Text and spacing shrink or grow to fit the screen, and
sections rearrange from one column on a phone to two columns on a wider screen. It's
designed phone-first.

**Built to be usable by everyone (accessibility).** This was a priority, because
many visitors are older or in bright sunlight:
- Large text and high contrast between text and background.
- Big, easy-to-tap buttons.
- Works with screen readers (software that reads pages aloud for blind users) —
  every meaningful picture has a written description, and the countdown announces
  itself in words.
- You can navigate the whole thing with just a keyboard, and there's a "skip to
  content" shortcut.

**Gentle motion — and it respects your settings.** Small animations (drifting mist,
a flickering lamp flame, twinkling stars) add atmosphere. But if your device is set
to "reduce motion" (a setting for people who find movement uncomfortable), the site
**turns all animation off automatically.**

**The interactive bits.** There are only a few, all small:
- the **countdown** that updates every second and automatically moves to the next
  bathing day once one passes;
- the **filter buttons** that show/hide the day cards;
- sections that **gently fade in** as you scroll to them;
- the year in the footer, filled in automatically.

**It still works if something breaks.** If a phone can't run the interactive parts,
the page still shows *all* its content and reads perfectly — nothing important is
hidden behind the fancy bits.

**It's fast on slow phones.** Because it's one small file with no photos and nothing
downloaded, it loads quickly even on a weak connection.

---

## One more thing: where the dates come from

Right now the important dates are typed directly into the page in three spots — the
countdown, the day cards, and the timeline — so if a date changes, all three must be
updated together. A separate behind-the-scenes project (the `kumbh-2027` folder) is
building a single verified list of dates, so that one day this page can pull its
dates from one trusted place instead. (See `CONTEXT.md` for the fuller story.)
