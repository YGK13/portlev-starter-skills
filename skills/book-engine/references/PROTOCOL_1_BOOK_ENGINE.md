# PROTOCOL 1 — THE BOOK ENGINE
### How to write a world-class nonfiction book with AI, start to finish, even if you hate writing
*Reconstructed from the actual A-to-Z build of "Closing the AI Wage Gap" by Yuri Kruman. This is Module 1 of the Authority Stack. Module 2 (getting an agent and a publisher) is a separate protocol that begins only after your manuscript is done.*

---

## WHO THIS IS FOR

You are intelligent, you have real expertise and a real book in you, but you do not enjoy writing and you are not fluent with AI. Good. This protocol assumes exactly that. Every step below gives you:

1. **Why it exists** (one or two lines, so you never do a step on faith).
2. **The exact prompt to copy and paste** (in a grey box).
3. **What you should get back** (so you know if it worked).
4. **The QC check** (how to catch it going wrong before it costs you).

You never have to invent a prompt. You never have to know "how to use AI." You follow the numbered steps in order, you paste, you talk, you paste again.

**The one rule that makes this work:** you are the author and the judge, the AI is the fast hands and the tireless researcher. It drafts, you decide. It never gets the final word on truth, voice, or taste. Every time you let it, the book gets worse.

---

## THE STACK (what you need before you start)

Buy or open these once. Total cost is roughly $60-90/month while you are actively writing, and you can cancel most of it the month you finish.

| Tool | What it does here | Recommended pick | Cheaper / alternative |
|---|---|---|---|
| **Claude (Pro or Team)** | The engine. Reasoning, drafting, editing, research synthesis. | Claude Pro, using **Projects** so your book has one persistent memory. | ChatGPT Plus with a Custom GPT (same idea, weaker at long-form nuance). |
| **A "standing instructions" file** | Teaches the AI your voice and your no-go rules once, so every chapter sounds like you and not like a robot. | A **Project instructions** block in Claude (the web equivalent of a `CLAUDE.md` file). | A pinned message you re-paste each session. |
| **Voice-to-text** | You talk, it types. Faster and far more honest than typing. This is how you get the raw truth out of your own head. | **Wispr Flow** (or your phone's dictation). | Otter, Windows/Mac built-in dictation. |
| **Zoom (or Riverside)** | Records your expert interviews with clean audio and an automatic transcript. | **Riverside** (best audio, separate tracks for podcast reuse). | Zoom cloud recording with transcript on. |
| **QuillBot Premium** | Two jobs: plagiarism check (so no borrowed phrasing slips in) and an "AI-sounding" detector so you can hunt down and kill robotic sentences. | **QuillBot Premium** (plagiarism + AI detector + paraphraser). | Originality.ai (stricter AI detector), Grammarly (lighter). |
| **Google Docs or Word** | Where the human-readable manuscript lives, tracks versions, and holds comments. | **Google Docs** (easy version history and sharing with editors later). | Microsoft Word with tracked changes. |

> **ICP note:** If any of that felt like a lot, do only the first two rows to start (Claude + the instructions file). You can add the rest at the phase where they matter. The protocol tells you exactly when.

---

## THE MAP (what you are about to do)

The book is built on a five-part spine, and this protocol runs in nine phases. Phases 0 to 3 are setup and thinking. Phases 4 to 8 are production. You do not draft a single sentence of a chapter until Phase 5, and that is on purpose. Most people fail because they start writing before they know what they are writing.

```
PHASE 0  Prerequisites: the interview, the Project, the voice/style file      (1-2 days)
PHASE 1  SEE      Research and analysis (the problem, the data, the enemy)     (2-4 days)
PHASE 2  MEASURE  Strategy and positioning (thesis, promise, ICP, comps)       (1-2 days)
PHASE 3  DESIGN   Structure and Table of Contents (the blueprint)              (2-3 days)
PHASE 4  Interviews + podcast repurposing (two assets from one call)           (ongoing)
PHASE 5  DRAFT    Chapter drafting + the iteration loop                        (bulk of time)
PHASE 6  EDIT     Developmental edit: audits, punch lists, harsh critique      (1 week)
PHASE 7  DE-AI    Copy-edit with the style guide + QuillBot humanization pass  (1 week)
PHASE 8  ASSEMBLE The full manuscript, introduction, front matter, endnotes    (2-3 days)
                                                                                
                          --> hand off to PROTOCOL 2 (agents + publishers)
```

---
---

# PHASE 0 — PREREQUISITES: THE SINGLE MOST IMPORTANT STEP

If you do nothing else well, do this well. Everything downstream inherits its quality from here. You are going to (0.1) set up your Project, (0.2) run one long interview on yourself that captures both your voice and your book, and (0.3) compress that into two files the AI reads on every single turn for the rest of the project.

## Step 0.1 — Create the Project and the standing instructions file

**Why:** A "Project" gives your book one continuous memory instead of 200 disconnected chats. The instructions file is where you teach the AI, once, how you sound and what you will never allow. This is the difference between a book that reads like you and a book that reads like every LinkedIn post written by a machine.

**Do this:**
1. In Claude, click **Projects → Create Project**. Name it `[Your Book Title] — Book Engine`.
2. Open **Project instructions** (the settings/knowledge area).
3. Paste the block below as your starting standing instructions. You will refine it in Step 0.3 with your real voice, but this seed already bans the worst AI tells.

> **COPY-PASTE — Standing instructions seed (the anti-AI-slop file):**
> ```
> You are my writing partner on a nonfiction book. You draft, I decide.
> You never get the final word on truth, voice, or taste.
>
> VOICE RULES (hard, zero tolerance):
> - NO em dashes (—). Use a colon, a comma, or split the sentence. Em dashes are an AI tell.
> - NO Oxford comma. Write "A, B and C", never "A, B, and C".
> - NO throat-clearing openers: no "In today's fast-paced world", "In an era of",
>   "Let's dive in", "It's important to note", "In conclusion".
> - NO hype adjectives as filler: delve, robust, seamless, leverage (as a verb),
>   game-changing, unlock, elevate, navigate, tapestry, testament, landscape, realm.
> - NO rule-of-three padding ("innovative, dynamic and transformative"). Say one true thing.
> - NO rhetorical question openers ("What if I told you...").
> - Prefer concrete nouns and real numbers over abstractions. Name the person, cite the figure.
> - Vary sentence length on purpose. Short punches. Then a longer one that earns its length.
> - Write the way a sharp, direct expert talks to one smart peer. Not to "an audience".
>
> TRUTH RULES:
> - Never invent a statistic, citation, quote, name, date, or study. If you are not sure,
>   write [VERIFY: ...] and move on. I will check it.
> - Mark every factual claim that needs a source with a [SOURCE?] tag.
> - When you use an interview quote, attribute it exactly and never alter the words.
>
> PROCESS RULES:
> - When I ask for a chapter, first show me the skeleton and wait for my yes.
> - Ask me one sharp question when a section could go two real directions. Never a wall of questions.
> - At the end of each work session, give me one line: what we finished, what's next.
> ```

**QC check:** Ask the AI, in the project, "What are my three hardest voice rules?" If it cannot recite the no-em-dash, no-Oxford-comma and no-AI-tells rules back to you, the instructions did not save. Fix it before continuing.

---

## Step 0.2 — Run the Author + Book Interview (the combined 100Q + Book-DNA)

**Why:** You cannot write a book you have not said out loud. This interview does two jobs at once. It extracts **how you think, write and sell** (your voice and positioning), and it extracts **the book itself** (thesis, enemy, promise, spine, frameworks, stories). It is modeled on Ruben Hassid's "Taste Interviewer" method and extended with a Book-DNA layer so one session gives you everything you need to start.

This is also, not by accident, the first thing you would run on a paying client and the first "wow" deliverable in a cohort. It is the front door of the whole Authority Stack.

**Do this:**
1. Open a **fresh chat inside your Project**. Turn on Extended Thinking if available.
2. Turn on your **voice-to-text** tool. You are going to talk, not type. Typing makes you careful and careful kills the truth.
3. Paste the SYSTEM PROMPT below. Then answer one question at a time, out loud, for as long as it takes. Budget 90-150 minutes. Do not rush it. The vague answers are where the book is hiding.

> **COPY-PASTE — The Author + Book Interviewer (System Prompt):**
> ```
> You are a Taste Interviewer and Book Architect. Your job is to extract three things
> from me in one sitting: (1) a VOICE profile so precise another AI could write exactly
> like me, (2) a POSITIONING profile (my enemy, my method/OS, my ideal reader, my moat),
> and (3) a BOOK BLUEPRINT (thesis, promise, reader transformation, chapter spine,
> proprietary frameworks, and the true stories that prove it).
>
> INTERVIEW PHILOSOPHY
> You are not here to be polite. You are here to get the truth. Most people give vague,
> rehearsed, LinkedIn-safe answers. Break through that. The best material is what I am
> slightly uncomfortable saying, or what I have never said because no one asked this directly.
>
> RUN 110 QUESTIONS across these categories. Follow the thread when something is alive;
> do not march in rigid order. Track silently that every category gets rich material.
>
> A. ORIGIN & RUPTURE (8) — the break that reset my career; the lowest concrete moment;
>    the gap between my public story and the real one; what I stopped believing.
> B. THE REPEATED RESCUE (8) — what people keep coming to me for; the problem I solve in
>    my sleep; the thing I cannot not do.
> C. BELIEFS & CONTRARIAN TAKES (12) — what I believe that my field argues with; the
>    conventional wisdom I think is actively wrong; my clients' most expensive misconception.
> D. THE ENEMY (8) — the broken system that makes me angry enough to fight it for a decade;
>    who gets hurt and how; who profits from it staying unsolved; the one number for a billboard.
> E. THE UNFAIR ADVANTAGE / MOAT (8) — the rare COMBINATION of experiences almost no one has;
>    the worlds I bridge; who I uniquely understand because I have been them.
> F. THE METHOD / THE OS (10) — the steps I take to solve my signature problem; the first
>    move others skip; the predictable sequence of mistakes; what I would name my method.
> G. WRITING MECHANICS (14) — how I actually write, not how I think I should; my sentence
>    rhythm; how I open and close; punctuation habits; words I overuse, love, and would never use.
> H. VOICE & PERSONALITY (10) — humor; serious vs casual register; how I handle disagreement;
>    what I sound like excited vs skeptical; the real me vs the corporate voice I perform.
> I. HARD NOS & RED FLAGS (8) — topics I would never touch; tones that are off-limits; what
>    instantly makes me distrust content; the one thing I never want my brand mistaken for.
>
> THEN THE BOOK-DNA LAYER (folded into the same session):
> J. THE READER (8) — describe ONE real person who needs this book: their age, job, their
>    3am fear, what they have already tried and why it failed, what they will Google at their
>    lowest, who I refuse to write for.
> K. THE PROMISE & TRANSFORMATION (6) — where the reader is on page 1 vs the last page, in
>    concrete before/after terms; the single sentence a reader would use to recommend it;
>    what they can DO after reading that they could not do before.
> L. THE SPINE & FRAMEWORKS (10) — the big argument in one sentence; the 4-6 movements the
>    book must go through in order (and why that order); the 3-6 proprietary frameworks,
>    tools, scores or canvases only I have; the exercises that produce a real output per chapter.
>
> INTERVIEW RULES
> 1. ONE question at a time. Wait for my answer before the next.
> 2. Push back on vague answers. If I say "I keep it practical", ask "Practical how? Give me
>    an example of practical done right and practical done as a cop-out."
> 3. Always demand a specific example. "Name the client. What was the number? Show me a
>    sentence you actually wrote."
> 4. Call out contradictions and make me resolve them.
> 5. Chase live threads before moving on.
> 6. When I am self-flattering or generic, name it: "That's a jacket-blurb answer. Give me
>    the real one."
> 7. End only when all categories have rich material AND the book blueprint has a thesis,
>    a promise, an ordered spine, at least 3 named frameworks, and at least 5 true stories.
>
> Begin with question 1. One question. Wait.
> ```

**What you should get back:** A long back-and-forth. By the end you will have said things about your book you did not know you knew. That raw transcript is gold. Do not lose it.

**QC check:** If you got through it in under an hour or you never felt slightly exposed, it was too shallow. The interviewer let you off easy. Go back and answer this: "Which three of my answers were LinkedIn answers, not real ones? Re-ask me those, harder."

---

## Step 0.3 — Compress the interview into your three working files

**Why:** The raw interview is 15,000-25,000 words. The AI cannot re-read all of it every turn. You compress it into three tight files it CAN hold in memory on every turn: your voice, your positioning, and your book blueprint.

**Do this:** In the same chat, right after the interview, paste the compiler prompt.

> **COPY-PASTE — The Compiler:**
> ```
> Turn the interview above into THREE compact, high-fidelity .md files. These are not for
> humans to enjoy. They are standing context for an AI to read on every turn so it writes,
> judges and structures exactly like me. Do not summarize me. Preserve the smallest set of
> instructions, examples, exact phrases, laws and refusals that lock my voice and my book.
>
> FILE 1 — voice.md
>   VOICE: register, an explicit USE word-list and AVOID word-list, sentence rhythm, how I
>   open and close, punctuation and formatting habits, my persuasion mode (story/data/argument).
>   PERSONALITY: humor, tone shifts, excited vs skeptical.
>   RED FLAGS: what I cringe at, phrases that are nails on a chalkboard to me.
>   BOUNDARIES: hard nos, off-limits tones, the one thing my brand must never be mistaken for.
>   Include 6-8 VERBATIM example sentences in my real voice. Do NOT normalize my phrasing.
>
> FILE 2 — positioning.md
>   THE ENEMY: the measurable problem with the real numbers I gave, framed as the thing the
>   book exists to defeat.
>   THE OS: my method as named modules in order, with the order rationale. Propose 2-3 names.
>   THE READER (ICP): the one real person, their 3am fear, what they tried, who I refuse to serve.
>   THE MOAT: the rare COMBINATION (never a single credential) competitors cannot replicate.
>   THE PROOF: named clients, numbers, credentials, published work.
>
> FILE 3 — book-blueprint.md
>   THESIS: the whole argument in one sentence.
>   PROMISE + TRANSFORMATION: reader on page 1 vs last page, concrete before/after.
>   THE SPINE: the ordered movements (parts) the book must go through and why that order.
>   FRAMEWORKS: each proprietary framework/score/canvas, one line on what it does and its output.
>   STORY BANK: every true story I told, one line each, tagged to the point it proves.
>   OPEN QUESTIONS: what the blueprint still needs (research, interviews, a missing framework).
>
> Output all three files in full, fenced, ready to save.
> ```

**Then:** Copy `voice.md` and paste its contents into your **Project instructions**, appending to the seed from Step 0.1 (your real voice now replaces the generic seed, but keep the hard rules). Upload `positioning.md` and `book-blueprint.md` to the **Project knowledge** area so every chat can see them.

**QC check (the voice test):** Open a brand new blank chat inside the Project. Paste `voice.md`. Give it a prompt only you would write, for example "Write a 120-word opening to a chapter about being passed over for a promotion because you did not use AI." If it sounds like you, ship the file. If it sounds like a robot wearing your name, your interview was too shallow. Go back to the vague answers and push harder. **Do not proceed until the voice test passes.** Everything you write after this inherits this voice.

---
---

# PHASE 1 — SEE: RESEARCH AND ANALYSIS

**Goal of this phase:** Turn your book's "enemy" from a feeling into a documented, quantified, cited reality. This is what separates a real book from a blog post. For "Closing the AI Wage Gap" this phase produced the labor-economics backbone: the within-role wage divergence, the reskilling projections, the savings-fragility data.

## Step 1.1 — Name and size the enemy

**Why:** A book needs one clear enemy with a number on it. "AI is changing work" is not a book. "Two people with the same title now earn tens of thousands apart based only on whether they orchestrate AI" is a book.

> **COPY-PASTE:**
> ```
> Read positioning.md and book-blueprint.md. My book's enemy is [state it in one line].
> Act as a skeptical labor economist. Give me:
> 1. The 5 strongest, most citable data points that PROVE this enemy is real and growing.
>    For each: the claim, the source type (org/study), the rough year, and a [VERIFY] tag with
>    exactly what I should confirm. Do not invent numbers. If you are unsure, say so.
> 2. The single number I could put on a billboard.
> 3. The 3 strongest counter-arguments a critic would make, and how the data answers them.
> Format as a table I can hand to a fact-checker.
> ```

**What you get:** A research scaffold with everything flagged for verification. **You then verify each one yourself** (or with the web-search step below). Never ship an unverified number.

**QC check:** Every row must have a real, checkable source. Any row the AI could not source is a row you either verify independently or cut. A single fabricated statistic can sink a book's credibility and a publisher's trust.

## Step 1.2 — Verify and deepen with live sources

**Why:** Models can be out of date or wrong. You confirm against the live web before anything enters the manuscript.

> **COPY-PASTE:**
> ```
> Take the [VERIFY] claims from the table above one at a time. For each, tell me the exact
> search I should run and what a credible confirming source looks like (org, report name, the
> specific figure). Where you can, cite the primary source (WEF, McKinsey, a Fed bank, PwC,
> Lightcast, Bankrate). Flag any claim that looks stale, contested or cherry-picked. I would
> rather cut a claim than defend a shaky one.
> ```

Run the searches. Keep a running `research.md` of confirmed claims with real citations. This becomes your endnotes later.

## Step 1.3 — Competitive and gap analysis

**Why:** You must know exactly which books already exist so you can position against them, and so a publisher believes you know the field. For "Closing the AI Wage Gap" the comps were Co-Intelligence (Mollick), The Squiggly Career (Tupper & Ellis) and the wave of future-of-work titles.

> **COPY-PASTE:**
> ```
> Find the 6-8 closest comparable books to mine (title, author, publisher, year). For each:
> its focus, its real strength, and the specific gap it leaves that my book fills. Then write
> ONE positioning sentence in the form: "[My book] combines the [X] of [comp A] with the [Y]
> of [comp B], but for [my specific underserved reader]." Only use books you are confident are
> real; mark any you are unsure of with [VERIFY].
> ```

**QC check:** Verify each comp is a real book (search the title). This same analysis gets reused, almost verbatim, in the book proposal in Protocol 2, so do it well now.

---
---

# PHASE 2 — MEASURE: STRATEGY AND POSITIONING

**Goal:** Lock the thesis, the promise, the reader and the five-part spine before you design chapters. Short phase, huge leverage.

## Step 2.1 — Lock the one-sentence thesis and the promise

> **COPY-PASTE:**
> ```
> Using book-blueprint.md, research.md and the comps, draft:
> 1. My thesis in ONE sentence (the whole argument).
> 2. The promise in ONE sentence (what the reader can DO after reading).
> 3. The transformation as a concrete before/after ("On page 1 the reader is ___. By the end
>    they have ___.")
> Give me 3 versions of each, ranked, with a one-line reason the top one wins. My voice, per
> voice.md. No hype words.
> ```

Pick one of each (or blend). Paste the winners into `book-blueprint.md`. **Nothing in the book is allowed to contradict these three sentences.**

## Step 2.2 — Lock the spine

**Why:** "Closing the AI Wage Gap" runs on a five-movement spine: **See, Measure, Design, Execute, Sustain.** A clean spine is what makes a dense book feel inevitable instead of random.

> **COPY-PASTE:**
> ```
> Propose the 4-6 movements (Parts) my book must go through IN ORDER to deliver the promise.
> For each Part: its one-line job, the reader's emotional state entering and leaving it, and why
> it cannot come earlier or later. Pressure-test the order: what breaks if I swap two Parts?
> ```

**QC check:** If any two parts could swap with no consequence, your spine is soft. A real spine has a forced order.

---
---

# PHASE 3 — DESIGN: STRUCTURE AND TABLE OF CONTENTS

**Goal:** The full blueprint. Every chapter mapped before a word of prose. This is developmental editing done up front, which is far cheaper than fixing structure after you have drafted 60,000 words.

## Step 3.1 — Generate the Table of Contents

> **COPY-PASTE:**
> ```
> Using the locked spine, draft a full Table of Contents: Parts and chapters, chapter titles in
> my voice. For each chapter give ONE line: the specific problem it solves for the reader. Aim
> for [12-18] chapters. Titles should be concrete and a little provocative, never generic.
> No chapter may repeat another's job. Show me where the argument might sag and suggest a fix.
> ```

Iterate the titles with it until they feel like yours. (The real book landed at 16-18 chapters across five parts.)

## Step 3.2 — Build the per-chapter skeleton (do this for every chapter)

**Why:** A consistent skeleton is what lets you draft fast later and what keeps a nonfiction book from wandering. The "Closing the AI Wage Gap" chapters each carry: hard data, a real story, 1-3 proprietary frameworks, and a concrete exercise that produces an output (a scorecard, a canvas, a script).

> **COPY-PASTE (run once per chapter):**
> ```
> Build the skeleton for Chapter [N]: "[title]". Its job: [one line from the TOC].
> Produce:
> - HOOK: the opening scene or hard number that pulls the reader in (concrete, no rhetorical
>   questions).
> - THE STAKES: why this matters to my reader (tie to their 3am fear from positioning.md).
> - THE TEACH: the 3-5 ideas this chapter must deliver, in order.
> - THE FRAMEWORK: which proprietary framework/tool/score belongs here and what output it
>   produces for the reader.
> - THE STORY SLOTS: 1-3 places a real interview story should go, and what kind of story each
>   slot needs (e.g. "a professional whose ladder snapped because of ageism, not performance").
> - THE EXERCISE: the concrete thing the reader DOES, and the artifact they end with.
> - THE HANDOFF: the last line that pulls them into the next chapter.
> Mark every factual claim [SOURCE?]. Wait for my edits before drafting prose.
> ```

Do this for all chapters before drafting any. You now have a complete architectural model of the book. Save all skeletons in `chapter-skeletons.md`.

**QC check:** Read the skeletons end to end as if you were the reader. Does the argument build? Does each chapter earn its place? Fix structure here, on one page of skeletons, not later across 200 pages.

---
---

# PHASE 4 — INTERVIEWS + PODCAST REPURPOSING

**Goal:** Real stories are what make a business book credible and human. You will run expert/peer interviews on Zoom, and every single interview produces TWO assets: (1) raw story material woven into specific chapters, and (2) a standalone podcast episode. One hour of someone's time, two pieces of leverage. This is exactly how the Dorie Clark and Alon Bochman interviews fed both the book and the AI Wage Gap podcast.

## Step 4.1 — Source the right interviewees

**Why:** Your skeletons already told you what stories you need (the "story slots"). You interview to fill specific holes, not to collect random content.

> **COPY-PASTE:**
> ```
> Read chapter-skeletons.md. List every "story slot" across the book. For each, write a
> one-line description of the ideal interviewee (role, experience, the specific lived
> experience they must have). Then group slots so I can fill several with one interviewee.
> Give me a target list of 10-15 interviewee TYPES and, where relevant to my network, the
> kind of person I already know who fits.
> ```

For "Closing the AI Wage Gap" this explicitly included seeking neurodivergent and introverted professionals, people who used AI as an accessibility/executive-function tool, and people whose "ladder snap" came from ageism rather than performance. Interview for the gaps your audits will otherwise catch.

## Step 4.2 — Protect yourself: the consent form (do this before every interview)

**Why:** You are going to quote real people in a published book and a public podcast. You need written permission. You already have a signed template pattern (`Interview_Release_and_Consent_Form`). Never record without it.

> **COPY-PASTE:**
> ```
> Draft a one-page Interview Release and Consent Form for a named interviewee giving me the
> right to: record audio/video, transcribe, quote and paraphrase them in my book "[title]", and
> publish the conversation as a podcast episode and derived clips. Include: name/date fields, a
> line letting them request anonymization or a pre-publication quote check, and a plain-English
> summary at the top. Keep it friendly and short, not scary legalese. This is not legal advice;
> I will have counsel review the template once.
> ```

Send it, get it signed (DocuSign or a signed PDF), file it as `Interview_Release_and_Consent_Form - [Name].pdf` before the call.

## Step 4.3 — Prep the interview

> **COPY-PASTE:**
> ```
> I am interviewing [Name], who is [role/background], to fill these story slots: [paste the
> relevant slots]. Write me a 12-question interview guide that gets specific, usable stories:
> concrete moments, real numbers, before/after. Front-load the two questions most likely to
> produce a quotable line. Include 3 follow-up probes I can use when an answer is too vague.
> Order it to feel like a conversation, not an interrogation.
> ```

## Step 4.4 — Record it

Record on **Zoom or Riverside** with the transcript on. After the call you will have the video/audio and a transcript file (a `.vtt` or `.txt`, exactly like `Dorie Clark interview - 5.19.26.vtt`). Save both. The recording feeds the podcast, the transcript feeds the book.

## Step 4.5 — Process the transcript into BOOK material

**Why:** A raw transcript is unusable in a book. You mine it for the few real gems and attach them to the exact chapters that need them.

> **COPY-PASTE (paste the transcript, or attach the .vtt):**
> ```
> Here is the transcript of my interview with [Name]. Do four things:
> 1. Pull the 5-8 strongest VERBATIM quotes. Keep their exact words. For each, note the chapter
>    story-slot it fits and why.
> 2. Summarize their story arc in 6 bullets (setup, turning point, what they did, the result,
>    the number, the lesson).
> 3. Flag anything sensitive that I should get a quote-check on before publishing.
> 4. Draft one 150-word narrative passage IN MY VOICE (voice.md) that weaves their best story
>    into Chapter [N], with the quote embedded and attributed exactly. Do not alter their words.
> ```

Add the verbatim quotes to `interviewee_quotes.txt` and the narrative passage into the chapter skeleton's story slot. The draft named `draft8_with_clark` is literally this step done: an interview folded into the manuscript.

**QC check:** Every quote must match the transcript word for word. Read the woven passage aloud. If the transition into the quote feels bolted on, ask for two alternative lead-ins.

## Step 4.6 — Repurpose the SAME interview into a podcast episode

**Why:** You already did the hard part (booking, recording). The podcast is near-free leverage and it builds the author platform that Protocol 2's publishers will demand. You already have the podcast brand guide and cover art built.

> **COPY-PASTE (attach the same transcript):**
> ```
> Turn this same interview into a podcast episode package for "[Podcast name]". Produce:
> 1. A punchy episode title and 3 alternates.
> 2. A 120-word show description with a hook.
> 3. 5-7 timestamped chapter markers with topic labels.
> 4. Full show notes: guest bio, 5 key takeaways, any links/resources mentioned.
> 5. Three 30-45 second pull-quote clips (start/end lines) for social, chosen for shareability.
> 6. Two LinkedIn posts teasing the episode, in my voice, that also tease the book's thesis.
> Keep everything consistent with the podcast brand guide.
> ```

One interview, one chapter's worth of story, one podcast episode, three clips, two posts. That is the leverage loop.

---
---

# PHASE 5 — DRAFT: CHAPTER DRAFTING AND THE ITERATION LOOP

**Goal:** Turn skeletons plus research plus interview material into finished chapter prose, one chapter at a time, through a controlled draft loop. The real project went through 16+ numbered drafts. That is normal and good. Iteration is the work, not a sign something went wrong.

## Step 5.1 — Draft a chapter from its skeleton

**Why:** Because you approved the skeleton, the draft has nowhere to wander. You are filling in a blueprint, not improvising.

> **COPY-PASTE:**
> ```
> Draft Chapter [N] in full from its approved skeleton, using voice.md, positioning.md,
> research.md and the interview material for this chapter. Rules:
> - Follow voice.md exactly. No em dashes, no Oxford commas, no AI-tell words.
> - Open with the HOOK, not a throat-clear.
> - Embed the framework so the reader can actually use it, with the exercise and its output.
> - Weave in the interview quote(s), attributed word for word.
> - Mark every factual claim [SOURCE?] and anything I still need to write [TK].
> - Target [3,500-5,000] words. Depth over filler. Cut anything that does not serve the reader.
> Give me the full chapter. Then list the 3 weakest spots you would fix next.
> ```

## Step 5.2 — Run the iteration loop (repeat until the chapter is strong)

**Why:** The first draft is raw material, not a chapter. You improve it in tight, targeted passes, not one giant vague "make it better."

Run these one at a time, in order. Each is a separate turn.

> **COPY-PASTE — Pass 1, Substance:**
> ```
> Critique Chapter [N] on SUBSTANCE only. Where is the argument thin, unsupported or hand-wavy?
> Which claims need a real source? Where would a smart skeptical reader stop believing me? Give
> me a numbered fix list, hardest problems first. Do not rewrite yet.
> ```
> **COPY-PASTE — Pass 2, Structure and flow:**
> ```
> Now critique the STRUCTURE and flow of Chapter [N]. Does the hook earn the read? Does each
> section hand off to the next? Is the framework introduced at the right moment? Where does it
> drag? Give me the reorder/cut list.
> ```
> **COPY-PASTE — Pass 3, Apply:**
> ```
> Apply fix items [1,2,4] from the substance list and the reorder list. Show me the revised
> chapter with changes marked in [brackets] so I can see what moved. Keep everything else intact.
> ```

Save each meaningful version as its own file (`aiwagegap_draft11.docx`, `draft12`, and so on). Version history is your safety net and your proof of the process.

**QC check:** Read the chapter aloud. Your ear catches robotic rhythm and false notes that your eye skims past. Any sentence you would not say to a smart friend gets cut or rewritten.

## Step 5.3 — Keep the book coherent across chapters

**Why:** As chapters pile up, a book drifts: a framework gets defined twice, a term changes meaning, chapter 9 contradicts chapter 3.

> **COPY-PASTE (every few chapters):**
> ```
> Read book-blueprint.md and Chapters [X-Y]. Check for drift: repeated definitions, terms used
> two ways, a framework introduced in the wrong order, promises made and not kept, or a claim in
> one chapter that contradicts another. Give me a consistency punch list.
> ```

---
---

# PHASE 6 — DEVELOPMENTAL EDIT: AUDITS, PUNCH LISTS, HARSH CRITIQUE

**Goal:** Before you polish sentences, make sure the book is the right book. This is the phase most self-published authors skip and it is exactly why their books feel amateur. The real project ran targeted audits, a "Regrade and Punch List", and harsh critique passes.

## Step 6.1 — The lens audit (read the whole book through one reader's eyes)

**Why:** A book written from one default perspective silently excludes readers. The real project ran a full **Neurodiversity & Introversion Audit** of chapters 1-7, which found that frameworks assumed neurotypical, extroverted readers and then added explicit adaptations. Run the same kind of audit for whichever lenses matter to your ICP.

> **COPY-PASTE:**
> ```
> Audit Chapters [1-N] through the lens of [e.g. neurodivergent and introverted professionals /
> non-native English speakers / career-changers over 50]. For each chapter tell me: (a) where the
> content silently assumes a reader unlike this one, and (b) a specific recommended addition or
> adaptation, OR confirm the section is neutral as written. Then give me forward-looking guidance
> for the remaining chapters and any new interview I should run to fill a gap. Be concrete, cite
> the chapter section, and ground claims in real research with [VERIFY] tags.
> ```

This produces exactly the kind of chapter-by-chapter audit document you can act on revision by revision.

## Step 6.2 — The regrade and punch list

**Why:** You need an honest grade of where the manuscript actually stands and a prioritized list of what to fix.

> **COPY-PASTE:**
> ```
> Grade the current manuscript like a tough acquiring editor at a top business imprint. Score it
> 1-10 on: thesis clarity, differentiation vs comps, argument rigor, story/data balance,
> usefulness of frameworks, voice consistency and structural integrity. For each score below 8,
> give the specific reason and the single highest-leverage fix. End with a prioritized punch list
> of the top 15 fixes, ranked by impact on a publisher's yes.
> ```

Work the punch list top-down. Re-grade after every few fixes.

## Step 6.3 — The harsh critic pass

**Why:** Praise does not improve a book. You want the pointed, senior critique that would embarrass you in front of a real editor, delivered now, in private, where you can still fix it.

> **COPY-PASTE:**
> ```
> Be a harsh but fair critic. Assume this book is competing with every AI-and-careers title in
> the 2026-2028 pipeline. What is derivative here? What would a jaded editor roll their eyes at?
> Which framework is under-baked? Which chapter is the weakest and should it be cut or merged?
> What is the single thing most likely to get this rejected? No hedging, no praise sandwich.
> Then give me the 3 changes that would most raise its ceiling.
> ```

**QC check:** If the critique stings and you disagree with some of it, good. Keep what is true, argue back on what is not, and make it defend its calls. You are the judge.

---
---

# PHASE 7 — COPY-EDIT AND DE-AI-ING (the anti-slop phase)

**Goal:** Now, and only now, polish sentences and scrub every trace of "this was written by AI." Two tools do this: your style guide (already in `voice.md`) and QuillBot (plagiarism + AI-detection). This is the phase that decides whether readers and editors trust the book or smell a machine.

## Step 7.1 — The style-guide copy-edit pass

> **COPY-PASTE (per chapter):**
> ```
> Copy-edit Chapter [N] strictly against voice.md. Hunt and remove every AI tell:
> - Every em dash (replace with colon, comma or a split sentence).
> - Every Oxford comma.
> - The banned filler words (delve, robust, seamless, leverage-as-verb, unlock, elevate,
>   navigate, tapestry, testament, landscape, realm, game-changing) and any I missed.
> - Throat-clearing openers and rhetorical-question openers.
> - Rule-of-three padding and hollow adjective stacks.
> - Uniform sentence length (vary it on purpose).
> Preserve my meaning and my strong sentences exactly. Show me a before/after list of every
> change so I can veto any of them. Do not soften my voice into corporate-neutral.
> ```

## Step 7.2 — The QuillBot pass (plagiarism + AI-sounding)

**Why:** Two real risks. First, a phrase you or the AI absorbed from a source could read as unoriginal. Second, even after the style pass, some passages still scan as machine-written. QuillBot checks both.

**Do this (in QuillBot, not the AI):**
1. Paste each chapter into **QuillBot → Plagiarism Checker**. Anything flagged, rewrite in your own words or cite the source properly. Zero uncited matches survive.
2. Run each chapter through **QuillBot → AI Detector**. Note every passage it flags as likely-AI. These are your robotic hot spots.
3. For flagged passages, do NOT just click "paraphrase" and move on (that produces its own tells). Instead, bring the flags back to Claude:

> **COPY-PASTE (paste the flagged passages back into Claude):**
> ```
> QuillBot's AI detector flagged these passages as likely AI-written. For each, tell me WHY it
> probably reads as machine-written (rhythm, vocabulary, hedging, symmetry), then rewrite it in
> my voice per voice.md so a human wrote it: uneven rhythm, a concrete detail, a real number or
> name, one deliberately plain sentence. Keep the meaning. Show before/after.
> ```

4. Re-run the rewritten passage through QuillBot to confirm the AI score dropped. Repeat until clean.

**QC check:** The finish line is: 0% uncited plagiarism matches, and AI-detection down to a low, human range across every chapter. Keep a `de-ai-log.md` noting each chapter's before/after scores. This log is also proof you can show a nervous publisher.

## Step 7.3 — The read-aloud human pass (you, not the AI)

**Why:** The last 5% is yours. Read every chapter out loud. Your voice is the final AI-detector. Where you stumble, the sentence is wrong. Where you sound like someone else, cut it. This is non-negotiable and it is the single strongest de-AI-ing tool you own.

---
---

# PHASE 8 — ASSEMBLE: THE FULL MANUSCRIPT

**Goal:** Compile the polished chapters into one clean manuscript with the connective tissue a real book needs. The real project's endpoint was `CLOSING_THE_AI_WAGE_GAP - Complete Manuscript v2 WITH INTRODUCTION`.

## Step 8.1 — Write the introduction last

**Why:** The introduction sells the whole book in a few pages, and you can only write it well once you know exactly what the book became. Write it last, always.

> **COPY-PASTE:**
> ```
> Write the book's Introduction (2,500-3,500 words) in my voice. It must: open with a concrete
> scene or number that makes the enemy visceral, name and quantify the enemy, state the promise
> and the transformation, briefly walk the five-part spine so the reader sees the journey, earn
> trust with why-me credibility from positioning.md (no bragging, just proof), and end by telling
> the reader exactly what they will be able to do by the last page. No throat-clearing. Follow
> voice.md.
> ```

## Step 8.2 — Assemble and finish the connective tissue

> **COPY-PASTE:**
> ```
> Build the front-to-back assembly checklist and draft what is missing:
> - Title page, dedication placeholder, epigraph (optional).
> - Table of Contents (final).
> - Introduction (done).
> - All chapters in order, with consistent chapter-opening and closing structure.
> - A short conclusion that returns to the opening scene and looks a decade ahead.
> - Endnotes: convert every [SOURCE?] and confirmed research.md citation into numbered endnotes.
> - Acknowledgments placeholder (include interviewees who consented to be named).
> Flag any remaining [TK], [VERIFY] or [SOURCE?] tag anywhere in the manuscript. I ship nothing
> with an open tag.
> ```

## Step 8.3 — The final gate

Before you call it done, run this one last check.

> **COPY-PASTE:**
> ```
> Final pre-submission gate. Confirm, section by section, that: (1) no [TK]/[VERIFY]/[SOURCE?]
> tags remain, (2) every stat has a real endnote, (3) every quote matches its transcript and has
> a signed release on file, (4) voice.md is honored throughout (no em dashes, no Oxford commas,
> no banned words), (5) QuillBot plagiarism is clean and AI-detection is in human range per
> de-ai-log.md, (6) the thesis, promise and spine from book-blueprint.md hold from first page to
> last. List anything that fails. If nothing fails, say "READY FOR PROTOCOL 2."
> ```

When it says **READY FOR PROTOCOL 2**, your manuscript is done. Move to the Pitch Engine.

---
---

## APPENDIX A — THE FILE SYSTEM (what lives where)

Keep these files in your Project knowledge so every chat can see them:

| File | Holds | Made in |
|---|---|---|
| `voice.md` | Your voice, style rules, AVOID/USE lists, sample sentences | Phase 0 |
| `positioning.md` | Enemy, OS, reader/ICP, moat, proof | Phase 0 |
| `book-blueprint.md` | Thesis, promise, spine, frameworks, story bank | Phase 0 (updated throughout) |
| `research.md` | Confirmed claims with real citations | Phase 1 |
| `chapter-skeletons.md` | Every chapter's approved skeleton | Phase 3 |
| `interviewee_quotes.txt` | Verbatim quotes tagged to chapters | Phase 4 |
| `de-ai-log.md` | Per-chapter plagiarism + AI-detection before/after | Phase 7 |
| Numbered drafts | Every meaningful version (`draft11`, `draft12`, ...) | Phase 5+ |

## APPENDIX B — THE 12 MISTAKES THAT KILL AI-WRITTEN BOOKS

1. Drafting chapters before the interview and blueprint exist. (The book wanders.)
2. Letting the AI have the final word on a fact. (One fake stat sinks trust.)
3. Skipping the voice test in Step 0.3. (Every chapter inherits a robot voice.)
4. Vague "make it better" prompts instead of one targeted pass at a time.
5. Never reading the book aloud.
6. Keeping em dashes and Oxford commas "because they look fine." (They are tells.)
7. Clicking QuillBot "paraphrase" instead of rewriting in your real voice.
8. Recording interviews without a signed release.
9. Altering an interviewee's words to fit your sentence.
10. Not versioning drafts, then losing a better earlier version.
11. Writing the introduction first.
12. Confusing "the AI finished a draft" with "the book is done." It never is at draft 1.

## APPENDIX C — HOW THIS ROLLS INTO THE AUTHORITY STACK (funnel note)

This protocol is Module 1. The **Author + Book Interview (Step 0.2)** is deliberately the first thing you would run on a paying client or in a cohort, because in one recorded 90-minute session a person who could not describe their own book walks away with an AI that writes like them and a blueprint of their book. That is the first visible "wow" and the natural top of the funnel:

- **Free / lead magnet:** the voice test result (Step 0.3) and a 1-page book blueprint. Instant proof, near-zero delivery cost.
- **Paid tier (self-serve or cohort):** this full Book Engine protocol as the curriculum.
- **High-ticket (1:1):** you run the engine with the client, phase by phase, and co-produce their manuscript.
- **Continuation:** Module 2 (Protocol 2, the Pitch Engine) is the natural upsell once a manuscript exists, and the podcast loop (Phase 4.6) feeds the platform every buyer will need.

Keep the modules clean and sequential so the funnel is legible: interview → blueprint → manuscript → deal. Pricing and sales copy are handled separately, on top of this IP.

*End of Protocol 1.*
