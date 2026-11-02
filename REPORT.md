# Research Report — [Project]

**Plan:** [Link/version] · **Run records:** [Links/paths as applicable] · **Date:** [ ]

> **Purpose:** Return the evidence to the human, not a polished success story. Lead with the answer. Follow the approved questions. Make everything traceable, including disappointing and failed work.

## 1. First page — What did we learn?

### Main takeaway

[In a short paragraph: the strongest finding, why it matters, and how convincing the evidence is. Use direct language. If the core hypothesis did not survive, say so.]

### Found / not found / unresolved

- **Found:** [The specific empirical patterns supported by the data.]
- **Not found:** [Important expected patterns that were not observed under the tested conditions.]
- **Unresolved:** [Questions the experiments genuinely cannot answer, with the concrete reason.]

**Agent's recommendation:** **Pursue / Rethink / Stop** — [Why, and the one highest-value next test if appropriate. This is advice, not the final scientific decision.]

### Coverage of the approved plan

| Question / hypothesis | Experiment | Status | One-line result | Evidence |
|---|---|---|---|---|
| H1 | E1 | [Supported / Not supported / Inconclusive / Failed / Not run] | [ ] | [Run IDs and figure links] |
| H2 | E2 | [ ] | [ ] | [ ] |

[Account for **every** approved experiment, even if it failed, was skipped, or produced nothing interesting. Do not confuse “not observed” with “disproved.”]

---

## 2. Results, organized by scientific question

### E1 — [Question or sub-question]

**Question tested:** [Which hypothesis or competing explanations does this address?]

**What we did:** [Two or three plain-language sentences: intervention/comparison, essential control, and measurement.]

**Result:** [State the actual observation, including a null result when relevant. Give the magnitude, variability, and number of runs/subjects where they matter.]

**Figure 1 — [Meaningful title]**

[Insert the actual figure here, with descriptive alt text and a project-relative path.]

*How to read:* **X-axis:** [variable, units]; **Y-axis:** [variable, units and interpretation]; **Lines/colors/points:** [conditions or groups]; **Bands/error bars:** [what they represent, if present]. **What this shows:** [The visual pattern in one or two sentences.]

**Interpretation:** [The most plausible implication of this observation, and only the limitations that materially affect it. Distinguish an observed pattern from a mechanism claim.]

**Evidence:** [Run IDs, raw/processed result paths, relevant code/config; link supplementary plots if needed.]

### E2 — [Question or sub-question]

[Repeat the same compact structure for each experiment. Include failed and uninformative experiments rather than omitting them. If a figure is not useful or cannot be produced, say why.]

---

## 3. What changed during execution?

**Departures from the plan:** [What changed, why, and whether the human approved it. Write “None” if applicable.]

**New questions or analyses:** [Label as *exploratory*; do not present post-hoc analyses as if preplanned.]

**Unsuccessful work:** [Brief account of failed runs, invalid controls, implementation problems, or experiments that turned out not to distinguish the hypotheses. Link to records rather than narrating every debugging step.]

## 4. Concise implementation and reproducibility

| Item | Essential detail |
|---|---|
| Models / data | [Versions, origin, splits, preprocessing that changes interpretation] |
| Methods | [Definitions of important measures; essential controls and baselines] |
| Software reuse | [Repositories/commits/files actually adapted; important changes and attribution] |
| Execution | [Code commit, environment, commands/configs, random seeds as relevant] |
| Compute | [Backend, resource use, job IDs, approved scope] |
| Artifacts | [Raw records, metrics, figures, checkpoints, logs] |

**Exact reproduction entry point:** [Command or path that recreates the main result; link full configs instead of copying them into this report.]

**Evidence completeness:** [How each planned experiment and actual run maps to this report, including excluded/failed attempts; state any missing artifacts explicitly.]

## 5. Scientific review — Human

**Review status:** Pending

**Human decision and rationale:** [After explicit review: pursue, rethink, stop, or request specific additional evidence. Keep this distinct from the agent's recommendation.]

**Next step, if any:** [The human may request more evidence, revise the question, or stop. A new scientific plan or substantive compute request needs the corresponding approval.]

> Leave this section pending until the human responds. The agent may summarize an explicit decision, but cannot supply the human's judgment.

> **Reporting rule:** Be selective about *what to emphasize*, never about *what happened*. Keep the main report readable; retain the complete evidence and links so the human can audit every claim.
