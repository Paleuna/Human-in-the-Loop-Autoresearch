# Research Plan — [Project]

Note: this file is read-only as template for generating plan file

**Status:** Proposed · **Owner/reviewer:** [Human] · **Version/date:** [ ]

> **Purpose:** A short scientific argument for why these experiments are worth doing. Write for a researcher, not for a workflow engine. The plan should make the research *decidable* without prescribing every implementation detail.

## 1. Core question

**Research question:** [One clear question.]

**Why it matters / intended novelty:** [What important uncertainty or limitation of existing work are we addressing? What would make the answer nontrivial?]

**Starting knowledge:** [The few facts, supplied prior works, or known constraints that materially shape the experiments. No general literature survey.]

## 2. Working hypotheses

Describe the most useful hypotheses or competing explanations. Keep only those that change experimental choices.

- **H1 — [Name]:** [What we think might be true, and the intuition behind it.]
- **H2 — [Name or alternative]:** [What could instead explain the phenomenon?]

[During drafting, add or remove hypotheses freely. After approval, preserve earlier versions and experiment IDs when revising. Include human-proposed expectations, but do not treat them as guaranteed.]

## 3. Experiments and their logic

For each experiment, briefly connect the **question → design → discriminative outcome**. Prefer a clear test over an exhaustive menu of methods.

### E1 — [Descriptive title]

- **Addresses:** [H1 / H2 / sub-question]
- **Idea:** [What will be compared or manipulated? Which model, task, data, or training stage matters?]
- **Why this test is informative:** [Which outcomes would favor or weaken which explanations? What important confound/control needs attention?]
- **Output:** [The key plot, measurement, or comparison a human will inspect.]

### E2 — [Descriptive title]

- **Addresses:** [ ]
- **Idea:** [ ]
- **Why this test is informative:** [ ]
- **Output:** [ ]

[Repeat only as needed. Experiments need not all be equally large; sequence them so early evidence can eliminate bad directions.]

## 4. Techniques and reusable resources

Explain techniques **intuitively**: what they measure or enable, and why they fit the hypothesis. Avoid pseudocode or detailed parameter lists unless a detail determines validity.

| Technique / resource | Why it fits | Reuse assessment |
|---|---|---|
| [Method, paper, or repo link] | [Scientific role] | [Direct reuse / adapt / conceptual only; what source code or assumptions were actually inspected?] |

**Important adaptation risk, if any:** [One or two real compatibility issues; no generic risk laundry list.]

## 5. Execution strategy and decision points

**First useful test:** [What is the quickest credible experiment that could change the direction?]

**Dependencies and scope:** [What must work before the main experiments? Any essential validity check or baseline?]

**When to pivot or stop:** [What result would make the current approach unpromising? When should the agent return to the human rather than keep polishing?]

**Compute outline:** [Local/CPU/GPU; broad scale and expected cost or time if known. Detailed job requests come separately for approval.]

> **Plan approval:** No substantive implementation until the human explicitly approves this plan. Routine details may be resolved by the agent afterward; substantive changes return for review. Approval of the plan alone does not authorize substantive compute jobs.
