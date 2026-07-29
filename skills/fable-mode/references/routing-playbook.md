# Routing playbook

How the expensive planner hands work to cheap workers without losing rigor.

## Delegation prompt template

Give every worker a spec it can execute blind and return in a form the planner
can check cheaply:

```
ROLE: You are a worker. Do exactly the task below and return only the result.
TASK: <one concrete, bounded job. No open-ended "explore" verbs.>
INPUTS: <the exact files, URLs, data the worker needs. Nothing implied.>
CONSTRAINTS: <what not to touch, what to assume, hard limits.>
RETURN FORMAT: <a strict shape the planner can validate, e.g. a JSON object
  with named fields, or a short table. Say "return only this, no prose.">
EVIDENCE RULE: Every load-bearing claim carries a source (a URL, a file path,
  a command output). Mark anything unverifiable as an assumption.
```

## Routing decision checklist

For each sub-task, before you assign it:

1. **Is this thinking or execution?** Thinking (planning, judging, reviewing,
   final verify) stays with the strongest model. Execution (drafting, extracting,
   searching, transforming) goes to the cheapest model that clears the bar.
2. **What is the bar?** Name the minimum intelligence and taste the sub-task
   needs. A classification pass needs little taste; a UX copy pass needs a lot.
3. **Assign to the cheapest model above that bar.** Not the smartest available:
   the cheapest sufficient.
4. **Is the return checkable?** If the planner cannot cheaply verify the worker's
   output, tighten the return format until it can.
5. **On failure, retry before escalating.** A failed worker output usually means
   a loose spec, not a weak model. Sharpen the spec and rerun once on the same
   model before moving up a tier.

## Fan-out shapes

- **Parallel independent workers**: N workers each take one slice (one file, one
  angle, one community), all run at once, planner merges. Use when slices do not
  depend on each other.
- **Pipeline**: each item flows through stage 1, then stage 2, with no barrier
  between items, so a fast item is not held back by a slow one.
- **Judge panel**: several workers score the same candidates independently, the
  planner takes the consensus. Use for decisions where one opinion is risky.
- **Adversarial verify**: spawn workers whose only job is to refute a finding.
  Keep the finding only if a majority fail to refute it.

## What not to delegate

- The definition of done. The planner owns Gate 1 and Gate 5.
- The final verification. A worker saying "done" is an input, not a conclusion.
- Any judgment call the user is trusting you, specifically, to make.
