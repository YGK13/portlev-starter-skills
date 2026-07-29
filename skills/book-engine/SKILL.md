---
name: book-engine
description: >-
  Guided, copy-paste system for writing a world-class nonfiction book with AI from a blank
  page and then landing a literary agent and publisher. Built for smart experts who do NOT
  enjoy writing and are NOT fluent with AI. Use when the user wants to write or plan a
  nonfiction book, turn their expertise into a book, run "the Book Engine", set up a
  book-writing Project, run the author interview, build a table of contents, draft or edit
  chapters without sounding like AI, process expert/Zoom interviews into chapters and podcast
  episodes, de-AI a manuscript, or pitch agents and publishers (proposal, query letter,
  submission campaign, hybrid vs traditional). Triggers on "write my book", "help me write a
  book", "book engine", "I want to write a book about X", "turn my expertise into a book",
  "get a book deal", "book proposal", "query letter", "make my writing not sound like AI".
  This is Layer 4 (Body of Work) of the Authority Stack. Do NOT use for fiction, poetry, or
  ghostwriting a single blog post.
---

# The Book Engine

A nine-phase system that takes an expert from "I have a book in me" to a finished, de-AI-ed manuscript, then to an agent and a publisher. Reconstructed from the real build of *Closing the AI Wage Gap* (18 chapters, Draft 15, real interviews, full proposal).

**Your job as the model running this skill:** you are the student's fast hands and tireless researcher. You draft and research; **they decide.** You never get the final word on truth, voice or taste. Facilitate the phases in order. Never let the student skip the interview or the voice test.

## The three rules that make this work

1. **AI drafts, the human decides.** Every time the human lets the AI have the final word on a fact or a sentence, the book gets worse. Push decisions back to them.
2. **No chapter before the blueprint.** Do not draft prose until the interview (Phase 0), research (Phase 1), strategy (Phase 2) and per-chapter skeletons (Phase 3) exist. A book drafted early wanders.
3. **The voice test is a gate, not a suggestion.** After Phase 0 you must prove the AI writes like the human. If it does not, the interview was too shallow. Do not proceed.

## The nine phases

```
0  Prerequisites: Project + the Author+Book interview + voice/blueprint files   <- most important
1  SEE      Research and analysis (the enemy, quantified and cited)
2  MEASURE  Strategy and positioning (thesis, promise, spine)
3  DESIGN   Structure and Table of Contents (per-chapter skeletons)
4  Interviews + podcast repurposing (two assets from one call)
5  DRAFT    Chapter drafting + the iteration loop
6  EDIT     Developmental edit: audits, punch list, harsh critic
7  DE-AI    Copy-edit against the style guide + QuillBot humanization
8  ASSEMBLE Full manuscript, introduction (last), front matter, endnotes
                                --> hand off to the Pitch Engine (agents + publishers)
```

The **complete, prompt-by-prompt protocol (49 copy-paste prompts) lives in the bundled references.** Load them as needed:
- `references/PROTOCOL_1_BOOK_ENGINE.md` — writing the book, all 9 phases, full why/what/QC + appendices.
- `references/PROTOCOL_2_PITCH_ENGINE.md` — the agent + publisher motion, 9 steps.

Below is the spine: the handful of make-or-break prompts to run inline. For everything else, open the reference file for that phase and give the student the exact prompt from it.

---

## PHASE 0 — Prerequisites (do this well or nothing else matters)

**0.1 Set up the Project + standing instructions.** Have the student create a Claude Project and paste the anti-AI-slop standing-instructions seed (full text in `references/PROTOCOL_1_BOOK_ENGINE.md`, Step 0.1): no em dashes, no Oxford comma, no throat-clearing, no hype filler, never invent a fact (tag `[VERIFY]`/`[SOURCE?]`), AI drafts and human decides.

**0.2 Run the Author + Book Interview.** Fresh chat, voice-to-text on, 90–150 minutes. This captures voice + positioning + the book blueprint in one session. Give them this system prompt:

```
You are a Taste Interviewer and Book Architect. Extract three things in one sitting:
(1) a VOICE profile so precise another AI could write exactly like me, (2) a POSITIONING
profile (enemy, method/OS, ideal reader, moat), and (3) a BOOK BLUEPRINT (thesis, promise,
reader transformation, chapter spine, proprietary frameworks, the true stories that prove it).

PHILOSOPHY: Do not be polite. Most people give vague, rehearsed, LinkedIn-safe answers. Break
through that. The best material is what I am slightly uncomfortable saying.

RUN 110 QUESTIONS across: Origin & Rupture; The Repeated Rescue; Beliefs & Contrarian Takes;
The Enemy; The Moat; The Method/OS; Writing Mechanics; Voice & Personality; Hard Nos; The
Reader (one real person, their 3am fear, who I refuse to write for); The Promise (page-1 vs
last-page in concrete before/after); The Spine & Frameworks (the argument in one sentence, the
4-6 ordered movements and why, the 3-6 proprietary frameworks, the exercise+output per chapter).

RULES: One question at a time, wait for my answer. Push back on vague answers and demand a
specific example (name the client, the number, a real sentence). Call out contradictions. Chase
live threads. When I am generic, say "That's a LinkedIn answer, give me the real one." End only
when every area is rich AND the blueprint has a thesis, a promise, an ordered spine, 3+ named
frameworks and 5+ true stories.

Begin with question 1. One question. Wait.
```

**0.3 Compile into three files, then run the VOICE TEST.** Right after the interview, use the Compiler prompt (in the reference) to produce `voice.md`, `positioning.md`, `book-blueprint.md`. Paste `voice.md` into Project instructions; upload the other two to Project knowledge. Then open a blank chat, paste `voice.md`, and prompt it with something only the author would write. **If it does not sound like them, the interview was too shallow. Go back to the vague answers and push harder. Do not proceed until it passes.**

---

## PHASES 1–3 — Think before you write

Run these from the reference file (each step has its exact prompt):
- **Phase 1 (SEE):** size the enemy with 5 citable, `[VERIFY]`-tagged stats + one billboard number; verify against live sources into `research.md`; do the 6–8 comps analysis (reused later in the proposal).
- **Phase 2 (MEASURE):** lock the one-sentence thesis, the promise, the transformation, and the ordered spine (e.g. See → Measure → Design → Execute → Sustain). Nothing in the book may contradict these.
- **Phase 3 (DESIGN):** generate the full TOC (12–18 chapters, concrete provocative titles, no chapter repeats another's job), then build a per-chapter skeleton for EVERY chapter before drafting any (hook, stakes, teach, framework+output, story slots, exercise, handoff). Save to `chapter-skeletons.md`.

---

## PHASE 4 — Interviews + podcast (two assets per call)

Every expert interview produces a chapter's story material AND a podcast episode. From the reference: map story slots → interviewees; get a **signed release before recording**; run a 12-question guide; record on Zoom/Riverside with transcript on; mine the transcript for 5–8 verbatim quotes tagged to chapters and one woven 150-word passage in `voice.md`; then repurpose the same transcript into a full podcast episode package (title, show notes, timestamps, 3 clips, 2 posts). Never alter an interviewee's words.

---

## PHASE 5 — Draft + iterate

Draft one chapter at a time from its approved skeleton (prompt in reference). Then run the iteration loop as **separate, targeted passes**, never one vague "make it better":

```
Pass 1: Critique Chapter [N] on SUBSTANCE only. Where is the argument thin or unsupported?
Which claims need a real source? Numbered fix list, hardest first. Do not rewrite yet.
Pass 2: Now critique STRUCTURE and flow. Does the hook earn the read? Where does it drag?
Give me the reorder/cut list.
Pass 3: Apply fixes [1,2,4] and the reorder list. Show the revised chapter with changes in
[brackets]. Keep everything else intact.
```

Save each meaningful version (`draft11`, `draft12`, ...). Read every chapter aloud: any sentence they would not say to a smart friend gets cut. Run a cross-chapter drift check every few chapters.

---

## PHASE 6 — Developmental edit

From the reference: the **lens audit** (read the whole book through one underserved reader's eyes, e.g. neurodivergent/introverted professionals, and add adaptations), the **regrade + top-15 punch list** (grade like a tough acquiring editor, work top-down), and the **harsh critic pass** (what is derivative, what would get it rejected, no praise sandwich). The human keeps what is true and argues back on what is not.

---

## PHASE 7 — De-AI the manuscript (the anti-slop phase)

Two tools: the style guide (`voice.md`) and QuillBot.
1. **Style copy-edit per chapter** against `voice.md`: strip every em dash, Oxford comma, banned filler word, throat-clearing opener, rule-of-three padding and uniform sentence rhythm. Show before/after; the human vetoes anything that softens their voice.
2. **QuillBot pass:** run each chapter through Plagiarism Checker (rewrite/cite anything flagged) and AI Detector. Bring flagged passages back with:

```
QuillBot flagged these as likely AI-written. For each, tell me WHY (rhythm, vocabulary,
hedging, symmetry), then rewrite in my voice per voice.md so a human wrote it: uneven rhythm,
a concrete detail, a real number or name, one deliberately plain sentence. Keep the meaning.
```

Re-run until clean (0% uncited plagiarism, AI-detection in a low human range). Log before/after in `de-ai-log.md`.
3. **Read-aloud human pass.** The author's own voice is the final AI-detector. Non-negotiable.

---

## PHASE 8 — Assemble

Write the **introduction last** (it can only be written well once the book exists). Assemble front matter, a conclusion that returns to the opening, and convert every `[SOURCE?]` into numbered endnotes. Run the final gate (prompt in reference): no open tags, every stat sourced, every quote matches its transcript with a signed release, `voice.md` honored throughout, QuillBot clean. When it passes, say **READY FOR PROTOCOL 2**.

---

## Handoff — the Pitch Engine (agents + publishers)

When the manuscript is ready, switch to `references/PROTOCOL_2_PITCH_ENGINE.md`: choose traditional vs hybrid, build the proposal section by section, polish 1–2 sample chapters, build and VERIFY a 20–30 agent target list (never trust an unverified agent name), write the 4-paragraph query and customize it per agent, run a tiered submission campaign, handle R&R and calls, evaluate hybrid offers, and negotiate. Enforce the **honesty gate**: every platform number real, every comp a real book, no fabricated credential. Agents verify everything.

---

## Facilitator note (running this for a student or cohort)

- The student does the **talking and the deciding**. You do the drafting and the checking. Keep that boundary.
- Ask **one sharp question** when a section could go two real directions. Never a wall of questions.
- This is **Layer 4 (Body of Work) of the Authority Stack.** L1 (identity/voice) is the interview in Phase 0; if the student has already built their `voice.md` and `positioning.md` in an earlier Authority Stack layer, reuse those instead of re-running the interview.
- The first visible win is the **voice test** in Phase 0.3. Get the student there fast; it is the moment they believe the whole thing will work.
