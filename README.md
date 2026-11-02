# Human in the Loop Scientific Research Agent

**Human intuition. Rigorous experiments. Evidence you can inspect.**

This project is a small set of research instructions and readable document examples for coding agents, especially Codex. Drop the files into a research project and let the agent use the tools already available there. It helps turn a researcher's intuition into testable hypotheses, informative experiments, working code, and evidence the researcher can inspect and reproduce.

The agent may propose hypotheses, design experiments, inspect prior implementations, write code, run authorized work, and interpret results. **The human owns the scientific direction, approves the plan and substantive compute, and makes the final scientific judgment.**

## The research loop

| Step | What matters |
| --- | --- |
| **Research brief** | The human shares the question, intuition, intended novelty, key prior work, and constraints, in chat or a project file. A complete plan is not required. |
| **Research planning** | The agent proposes competing hypotheses and experiments that could distinguish them. It produces a concise, human-readable `PLAN.md`. |
| **Plan approval** | The human can revise, reject, or approve the plan before substantive implementation. |
| **Implementation and execution** | The agent chooses suitable methods and tools, writes code, runs lightweight checks, and prepares substantive CPU/GPU or remote work for approval. |
| **Compute approval** | The human reviews the purpose, command, resources, expected budget, and output location for a job or bounded batch. |
| **Evidence and reporting** | The agent returns a readable `REPORT.md` covering every approved experiment and actual run, including negative, inconclusive, failed, and skipped work. |
| **Scientific review** | The human decides what the evidence means and whether to pursue, rethink, or stop. |

The agent should understand the scientific context the human provides. It does not need to rebuild a field's knowledge base for every project. When a paper or repository matters, it should inspect the relevant method and source code closely enough to judge whether the implementation is usable. It should also challenge a weak premise, recommend a better experiment, or say when a direction should stop.

The two firm boundaries are straightforward: **no substantive implementation of an unapproved plan or unapproved compute**, and **no selective return of evidence**. The agent can organize routine work and interaction in the way that best fits the project. The critical proposals and results must remain clear to the researcher.

## Use it in your project

Copy these files to the **root** of a research repository, or merge their instructions with files already there:

```text
AGENTS.md
GENERAL_REQUIREMENTS.md
PLAN.md
REPORT.md
gpu/GPU_REQUIREMENTS.md   # when GPU or Slurm work is relevant
```

Open that directory as a Codex project, with the repository root as its primary folder. Codex automatically reads the root `AGENTS.md`, which directs it to the other files when relevant. The root `PLAN.md` and `REPORT.md` are examples until you fill them for a study. If your project has its own versions, keep those as the authoritative copies. For Claude Code, add a short `CLAUDE.md` that asks it to read `AGENTS.md` and `GENERAL_REQUIREMENTS.md`.

Codex loads `AGENTS.md` as project guidance when a chat starts; the other Markdown files are read in response to that guidance, not injected automatically. Start a new chat after changing the entry file if the current chat appears to be using older instructions. See the official [AGENTS.md guide](https://learn.chatgpt.com/docs/agent-configuration/agents-md) and [local project guidance](https://learn.chatgpt.com/docs/projects).

Start by describing the research direction and pointing the agent to the relevant papers, repositories, data, and constraints. Ask it to read `GENERAL_REQUIREMENTS.md`, inspect the technical resources that matter, and draft a plan you can judge without reading code. Once you approve that plan, the agent can implement the agreed work. It should present substantive compute requests before running them and return a report that accounts for the full evidence.

There is no package to install and no required command runner, schema, or record format. Your project retains its own code layout, experiment tools, and way of tracking provenance. The [general requirements](GENERAL_REQUIREMENTS.md) state the scientific standards; the [plan](PLAN.md) and [report](REPORT.md) show what should be readable at the two most important handoffs. [GPU requirements](gpu/GPU_REQUIREMENTS.md) add practical guidance for compute-intensive work.

## Repository files

| File | Purpose |
| --- | --- |
| [GENERAL_REQUIREMENTS.md](GENERAL_REQUIREMENTS.md) | Central scientific and engineering contract |
| [AGENTS.md](AGENTS.md) | Codex entry point that points to the research requirements and stage-relevant files |
| [PLAN.md](PLAN.md) | Human-readable plan example |
| [REPORT.md](REPORT.md) | Complete evidence and scientific review example |
| [gpu/GPU_REQUIREMENTS.md](gpu/GPU_REQUIREMENTS.md) | Additional GPU and cluster guidance |

Site-specific cluster instructions belong in `gpu/private/`; the Git ignore rule keeps that directory out of this repository. Review any manually created archive before sharing it.

## License

[MIT](LICENSE).
