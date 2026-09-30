# Company Builder — Detailed Playbook

Load per-phase as you run it. Orchestration uses the `Workflow` tool (parallel /
pipeline fan-out) with the orchestrator integrating + verifying. If `Workflow`
isn't available, use parallel `Agent` subagents instead, or run the angles
sequentially if neither is available.

## Phase 1 — Pain hunt (parallel, sourced)
Fan out one researcher per angle/community. Each returns structured candidates,
each with ≥1 **real retrieved source URL** (drop anything unverifiable).
```
phase('Hunt')
const hunts = await parallel(ANGLES.map(a => () =>
  agent(`Pain-hunt researcher. ANGLE: ${a.prompt}. Use WebSearch/WebFetch.
    Find 2-4 real, painful, underserved problems where a specific buyer is
    actively complaining and likely has budget. Every evidence item needs a REAL
    source_url you retrieved. Favor buyers the founder can reach warm.`,
    { label:`hunt:${a.key}`, phase:'Hunt', schema: PAIN_SCHEMA })))
```
Angles = the founder's ICPs + adjacent communities (Reddit, HN, G2, Blind,
practitioner forums) + an idea-corpus scan (e.g. a relevant ideas podcast).

## Phase 2-3 — Tournament, duel, decide
- Judge panel scores every candidate 1-10 on: pain, urgency, willingness-to-pay,
  reachability via the founder's channels, solo-buildability, competitive
  weakness. total = sum. Punish vague buyers and crowded markets.
- Advocate + skeptic on the top 3 (parallel), then a decider picks the winner on
  **ER30 against a named buyer**, and names the runner-up ideas worth grafting.

## Phase 4 — Verify the anchor fact (Evidence gate)
The decider almost always flags one load-bearing claim (a regulation, a market
shift, a stat). Confirm it **independently against multiple sources** with
WebFetch/WebSearch before it anchors brand/site/copy. If it's soft, reposition
so the pitch leads with something true regardless (e.g. a dollarized,
always-true exposure), and cite the catalyst only as the "why now".

## Phase 5 — Red team (parallel skeptics, distinct axes)
```
const AXES = ['market size & TAM realism','buyer will-actually-pay & pricing',
  'incumbent/competitive kill-risk','solo-buildability & delivery risk',
  'distribution & CAC via the founder\'s channels']
```
Each skeptic gives its harshest critique, whether it's fatal, and a concrete
fix. Fold every non-fatal fix into plan/positioning/site. Kill on a fatal one.
Log it all in `research/red-team-log.md`.

## Phase 6 — Naming + trademark clearance (where naive runs fail)
**This is a knockout search, not legal clearance.** Always tell the user to
confirm with a trademark attorney (USPTO TESS/TSDR, classes **IC 035/042/045**,
plus common-law + state) before adoption.

Process:
1. **Generate candidates** away from crowded roots. In verification/identity/
   compliance, avoid `verify / veri / id / attest / vouch / clear / guardian /
   trust / ledger` etc. — they're occupied or descriptive.
2. **Domain reality first** (the binding constraint). Check exact `.com` with a
   domain-availability tool. Short dictionary and short coined `.com`s are
   essentially extinct; expect to need a longer coined word, a compound, or a
   `getX / Xhq / useX` variant.
3. **Knockout screen each survivor** (parallel `Workflow`): exact-name use;
   confusingly-similar names **in the same lane**; findable USPTO/Trademarkia
   records; and **distinctiveness class** (arbitrary/fanciful > suggestive >
   descriptive > generic). Conservative rule: a same-field exact/near hit = HIGH.
4. **Rank by protectability, not vibes.** The mark is only as strong as its
   **distinctive element**. Two winning archetypes:
   - **Fanciful/arbitrary coined word** (Vanta/Drata/Xerox) — strongest mark,
     best domain odds. Decouple brand from exact-.com if needed.
   - **"[Distinctive word] + category"** (e.g. "Tracker I-9", "Clear I-9") — the
     category term (often a govt form / generic) is disclaimed and carries SEO;
     the distinctive word carries the trademark. Only works if that word is
     clean in-lane. A house-of-brands tie to an existing product is a real edge.
5. Then build `brand/BRAND_GUIDE.md`, an SVG logo, and rasterize to PNG
   (favicon + wordmark + dark variant). Keep a `NAMING_CLEARANCE.md` /
   `NAMING_STRATEGY.md` with the full screened field and the final pick.

## Phase 7 — Build the working MVP (verify end-to-end)
- Prefer a **self-contained, runnable** artifact (single-file HTML app, or a
  real service with a tested core). No mocks presented as working.
- **Sensitive data → client-side-first.** "100% in your browser, nothing
  uploaded, metadata only" is both the trust story and a real architecture, and
  it's the free-tier lead magnet.
- **Verify by running it**: drive the flow in a browser (or headless), unit-check
  the core logic against known inputs, watch the console for errors. Verification
  routinely catches real bugs here — treat a failed check as a found defect, fix
  the root cause, re-verify.

## Phase 9 — Package
`recap.html` is the single entry point: exposure/summary, links to the working
site/demo, the plan, the research + decision record, the red-team log, brand,
video scripts, and (if productized) the platform repo. Definition of done: a
stranger opens it and can understand → run → demo → follow the reasoning.

## Phase 10 — Productization ladder (optional; regulated-data safe)
Turn the MVP into a real, deployed platform. Each phase is independently
revenue-bearing; don't build ahead of a buyer.
- **P0 — Diagnostic (free, client-side):** the trust on-ramp / lead magnet.
- **P1 — Services tooling:** turn diagnostic output into a counsel/expert
  deliverable (worklists, current-dated draft artifacts, an audit trail). Powers
  paid done-for-you engagements now.
- **P2 — Secure platform:** a real multi-tenant SaaS. Build the security-critical
  domain **core** as tested, dependency-free modules first (they must be correct),
  then a thin app shell, then wire the DB.
- **P3 — Enterprise:** SSO/SAML, portfolio/multi-entity rollup, BYO-storage,
  single-tenant VPC option, SOC 2 Type II, DPA package.

### Security & architecture checklist (regulated / PII products)
- **Tier data by sensitivity.** Free tier can be client-side-only. Paid tiers get
  real infra; the most sensitive can keep data in the customer's own tenant
  (BYO-storage / BYO-KMS).
- **The audit trail is a control AND the product**: append-only, hash-chained,
  tamper-evident (verify() detects any edit). Federally required for many
  record systems; also your defensible record.
- **Enforce invariants in code, not discipline:** server-stamped timestamps (no
  backdating), role/actor boundaries at the write path, retention auto-purge, no
  SSN/PII stored that isn't needed, field-level encryption (AES-256-GCM), managed
  secrets (no plaintext).
- **Enterprise controls to architect from commit one:** SOC 2 (Security +
  Confidentiality + Privacy), TLS 1.2/1.3, SSO/SAML, RBAC/MFA, US data residency,
  DPA + sub-processor list, pentest, AI-governance for any model in the loop.
- **Never build the fabrication button.** Generate decision-support and
  correctly-dated drafts; route legal/substantive calls to a human/counsel.

### Verification for the platform
Write the security-critical core (crypto, audit-chain, access/actor-boundary,
retention, domain rules) as runnable modules with a real test suite; run it
(`node --test` or equivalent) and show it green. Validate any schema
(`prisma validate`). Compile the app (`next build`). Only claim "done" on green.

## Deploy / DB / infra (needs the user)
You cannot create accounts, mint tokens, or provision paid infra, and you must
never pull live secrets into the transcript. Scaffold everything so activation
is one command; have the user place `DATABASE_URL`, deploy token, SSO and KMS
values in a **git-ignored `.env`**; read them only at runtime. A personal deploy
token + CLI usually creates the project and deploys in one shot where an
OAuth connector's create permission is missing.
