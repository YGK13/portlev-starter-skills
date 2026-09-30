---
name: autonomous-company-builder
description: >-
  End-to-end autonomous "build me a company" workflow with senior-engineer
  rigor. Use when the user wants to go from a blank page (or a rough problem)
  to a validated, sellable business: hunt real sourced pain, run a scored idea
  tournament, pick a winner, design the business + brand + a legally-clearable
  name (real trademark knockout + live domain checks), build a working product
  and site MVP, red-team it, and package a recap - then optionally productize
  into a deployed, secure SaaS. Triggers on "build me a company", "autonomous
  company builder", "run the company builder", "take this idea to market",
  or any request to design and ship a business from
  scratch. Money-first: every option is ranked by expected revenue in 30 days
  (ER30) against a NAMED, reachable buyer.
metadata:
  type: workflow
---

# Autonomous Company Builder

Take a blank page (or a rough idea) all the way to a validated business a
stranger could open, understand, run, demo, and take to market this month —
then, on request, productize it into a real deployed platform. This skill is
the packaged, reusable version of a full end-to-end run.

**Stance: orchestrator first, workhorse second.** You spend expensive
intelligence on planning, adversarial review and verification, and you fan out
cheap parallel workers (the `Workflow` tool) for research, tournaments and
red-teaming. Never rush to output. Everything passes the five gates in Gate 0.

> **If the `Workflow` tool is unavailable** (it isn't in every Claude Code
> environment or plan), fan out the same workers as parallel subagents with the
> `Agent` tool, one per angle. If neither is available, run the angles
> sequentially yourself. Everywhere this skill says `Workflow`, apply this
> fallback. The gates and outputs are the same; only the speed changes.

## Gate 0 — Operating discipline (self-contained)
Run this entire workflow under five gates, in order: **Scope → Evidence →
Attack → Verify → Report.** No external skill is required; the discipline is
below.

1. **Scope.** Restate the goal with a verifiable definition of done. List the
   happy path, then attack it: what could go wrong, what am I assuming exists
   (files, keys, data) that I have not confirmed, which unknowns are
   load-bearing. Begin only once the plan survives its own attack.
2. **Evidence — reason from what you verified, not what you remember.** Every
   load-bearing fact (a regulation, a market stat, a competitor claim) gets
   confirmed with a real tool call and a real URL before it anchors anything. A
   prompt implying a file or key exists is not proof it does; check first.
3. **Attack.** Before accepting any draft, plan or decision, argue against it:
   generate one plausible alternative and say why you rejected it; find the
   input or buyer for which it breaks; ask "what would make this wrong?" and
   check whether that condition holds. Two clean passes in a row is the signal
   to move on, not to keep spiraling.
4. **Verify — "done" is a claim that needs evidence.** Run the thing. Executable
   code gets executed; a schema gets validated; a page gets rendered. Re-read
   the original request against every requirement, one by one. This step has
   repeatedly caught real bugs a model was about to call "done": a concurrency
   race in a hash chain, invalid schema syntax, a bundler-breaking dynamic
   import.
5. **Report.** Lead with the answer. State what was verified, what was assumed,
   what is blocked and on whom. Own any failure in one line, then fix it.

Match effort to the task: a trivial step gets one pass, a high-stakes build gets
the full treatment plus parallel `Workflow` fan-out. Overthinking a simple step
makes the output worse, not better — ship the verified version.

## The money lens (applies to every step)
Rank every idea, feature and "what next" by **ER30: expected revenue in 30 days
against a named, reachable buyer.** Interestingness, novelty and technical
elegance never break ties — cash does. If a step can't name who pays, what the
ticket is, and how you reach them, it is not ready. Prefer the **services-first
MVP**: the fastest dollar is usually a done-for-you engagement using the free
tool as the demo, not a finished SaaS.

## Setup
1. Create a clean project dir; `git init`; make `brand/ research/ site/ videos/`.
2. Write `GOAL.md` from `references/goal-template.md` (adapt the mission,
   guardrails and any founder edge / ICP bias). The founder's own network and
   distribution should bias the pain hunt toward **reachable** buyers.
3. Check `.env` for capability keys (image/video/voice, deploy tokens) and state
   honestly what is and isn't possible. Absent a video/voice key, ship scripts +
   storyboards, not rendered media — do not fake it.

## The arc (A → Z)
Each phase names its orchestration shape and its verification. Deepen any phase
the work calls for; this is a floor, not a ceiling. Full per-phase playbook and
checklists: **`references/playbook.md`** (load it before running a phase).

1. **Hunt pain** — fan out parallel researchers (`Workflow` + `parallel`) across
   distinct angles/communities. Every candidate carries ≥1 **real retrieved
   source URL**; drop anything unverifiable. Bias toward buyers the founder can
   reach warm.
2. **Tournament** — a judge panel scores every candidate (pain, urgency,
   willingness-to-pay, reachability, solo-buildability, competitive weakness).
3. **Duel + decide** — advocate + skeptic on the top 3; a decider picks the
   winner on **ER30 against a named buyer**.
4. **Verify the load-bearing fact** — independently confirm the one claim the
   whole thesis rests on (the decider will usually flag it). If it's soft,
   reposition so the pitch doesn't depend on it.
5. **Red team** — parallel skeptics attack the winner on distinct axes (TAM,
   WTP, incumbents, buildability, distribution). Fold every non-fatal fix in;
   kill on a fatal one.
6. **Name + brand** — this is where naive runs fail. **Trademark is a knockout
   search, not legal advice.** Screen candidates for same-field conflict AND
   distinctiveness class; check live domains. Hard-won rule: a name is only as
   strong as its **distinctive element** — descriptive/occupied roots
   (verify/vouch/id/attest/etc.) are weak or contested. See the clearance
   checklist in the playbook. Then build the brand guide + logo (SVG → PNG).
7. **Build the product/site** — a real, self-contained working MVP, not a mock.
   Verify it end-to-end (run it, drive the flow, unit-check the logic). For
   sensitive data, "100% in your browser, nothing uploaded" is both a trust
   story and a real architecture.
8. **Videos** — launch + founder scripts with shot lists (rendered only if a
   voice/avatar key exists).
9. **Package** — a single `recap.html` links every artifact: site, plan,
   research/decision record, red-team log, brand, videos. Definition of done:
   a stranger can open it and understand, run, demo, and follow the reasoning.
10. **(Optional) Productize** — turn the MVP into a deployed, secure platform via
    the P0→P3 ladder (diagnostic → services tooling → secure multi-tenant SaaS →
    enterprise). Security-first from commit one; see the playbook.

## Hard-won rules (do not relearn these the hard way)
- **Verify the anchor fact first.** The catalyst/stat the business leans on gets
  confirmed against multiple independent sources before it shapes brand or copy.
- **Name = distinctive element.** Escape crowded roots; prefer arbitrary/coined
  or a "[distinctive word] + category" archetype. Clean exact-.com is scarce —
  decouple the brand from the exact domain when needed. Always: "knockout search,
  not legal clearance; confirm with a trademark attorney (USPTO IC 035/042/045)."
- **Security-first for regulated/PII products.** Tier data by sensitivity; the
  free tier can be client-side-only (a feature). The audit trail is both a
  control and the product. No plaintext secrets. Enforce invariants in code, not
  discipline (e.g. no-backdating via server-stamped timestamps).
- **Never build the fabrication button.** For compliance products, generate
  decision-support and correctly-dated drafts, never a "clean replacement" of a
  legal record. Route substantive/legal calls to a human/counsel.
- **Services-first MVP sells before the SaaS is done.** Don't gate first revenue
  on infrastructure.
- **Real spend/infra is the user's to authorize.** You cannot create accounts,
  enter credentials, or provision paid infra. Never pull live secrets into the
  transcript; have the user place them in a git-ignored `.env` and read them only
  at runtime. Deploy/DB/SSO/KMS wiring proceeds once the user provisions.

## Guardrails (default; the user can widen them)
No new spending · publish nothing (local only) unless the user explicitly opts
in to deploy · **invent nothing** (verify every fact/stat or mark it an
assumption) · work only inside the project dir · never fabricate credentials or
data. When the user later authorizes real deployment, that explicit instruction
overrides "publish nothing" for that step only.

## Report (Gate 5)
Lead with the answer. State what was verified, what was assumed, what's blocked
and on whom. When something failed, say so plainly with the evidence. Close every
working session with a one-line **Money Delta**: what moved toward cash, what
didn't, the next revenue action and by when.

See `references/playbook.md` (per-phase orchestration scripts, the trademark
clearance checklist, the security/architecture checklist, the productization
ladder) and `references/goal-template.md` (the fill-in mission file).
