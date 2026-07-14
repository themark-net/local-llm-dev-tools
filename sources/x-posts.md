### Entry 027: Four Types of Agent Loops — Turn-based, Goal-based, Time-based, Proactive (Detailed Breakdown)

- **URL**: https://x.com/i/status/2076748259377516782
- **Date**: 2026-07-13
- **Poster**: Akshay Pachaar (@akshay_pachaar)
- **Summary / Key Claims**: Excellent structured breakdown of the four main types of agent loops in "loop engineering." Clarifies that loop engineering is about designing the system that steers the agent (answering "what starts a run" and "what decides the work is done") rather than hand-holding move-by-move. The four types progressively hand off more control to the system:
  1. **Turn-based**: User prompt triggers; agent acts + self-checks in one turn; human reviews and writes next prompt. Best for exploratory work where requirements are still forming.
  2. **Goal-based**: /goal command with success criteria + budget triggers; evaluator model checks output and loops back if goal not met. Best for measurable outcomes.
  3. **Time-based**: Clock/interval triggers fixed prompt (e.g., "check PR, fix CI"); /loop locally or /schedule to cloud. Best for recurring known tasks.
  4. **Proactive**: Event/schedule triggers with no human present; spawns workflow with triage/fix/reviewer agents that adversarially judge work. Best for standing responsibilities.
  Emphasizes choosing the right loop structure based on task type (exploratory, measurable, recurring, or standing) rather than chasing the "most advanced" one.
- **Extracted Repos / Tools**: No new standalone repo (pattern/framework explanation). References a full loop engineering article. Strong conceptual alignment with existing autonomous loop resources.
- **TOOLS.md Link**: New row under Agent Frameworks & Orchestration / Autonomous Loops & Agentic Workflows (high-signal reinforcement of loop engineering patterns).
- **Notes**: **Very strong addition — directly reinforces and expands our existing loop engineering work (Entries 018, 021, 024).** The four-type breakdown (turn-based → goal-based → time-based → proactive) maps cleanly onto our 4-tier autonomy model and 14-step roadmap. The emphasis on system design over manual steering, plus concrete triggers and use-case mapping, is highly actionable for building robust skills and harnesses on top of AgenC. Strong overlap with goal-based evaluators, scheduled loops, and proactive router patterns we're already cataloging. Low redundancy — this is excellent pedagogical reinforcement with clear task-type mapping. High fit for evaluation criteria: Very High Relevance (structured loop types + decision framework), High Integration Ease (patterns directly portable to skills), High Reproducibility (clear breakdown + use cases), Low Redundancy. Perfect for the repo's reproduction and skills development goals. Recommend: (1) Catalog as major loop engineering resource. (2) Strong candidate for direct integration into our loop-engineering skill pack (e.g., as a decision guide or expanded 4-tier documentation). (3) Use as reference when refining autonomy tier definitions and evaluator patterns.
- **Status**: Processed and cataloged (added as high-value reinforcement of loop engineering patterns; priority for skills integration)

## Future Entries Format

When adding new X-sourced tools or papers:

```
### Entry NNN: Short Title

- **URL**: https://x.com/...
- **Date**: YYYY-MM-DD
- **Poster**: @handle (Name)
- **Summary**: 1-2 sentence gist + why relevant to local LLM dev pipelines. Note if paper-based.
- **Extracted Repos/Tools**: List with links or 'Paper only: arxiv link'.
- **TOOLS.md Link**: Row or section reference.
- **Notes**: Any caveats, hype vs substance, feasibility if paper, pipeline fit.
```

*This log ensures the catalog remains grounded in primary social signals while allowing rigorous, staged evaluation separate from viral claims. 'Read a paper' is now a supported recurring workflow for tool discovery.*