### Entry 048: HERMES AGENT — Three Feedback Loops for Continuous Self-Improvement (Auto-Memory, Auto-Skill, Curator)

- **URL**: https://x.com/i/status/2077132507343134788
- **Date**: 2026-07-14
- **Poster**: YanXbt (@IBuzovskyi)
- **Summary / Key Claims**: Hermes Agent has three built-in feedback loops that make it smarter every week if enabled:
  1. **AUTO-MEMORY**: After every response, saves learnings (timezone, stack, preferences, tools, mistakes, projects) to memory.md and user.md. Loaded automatically in future context.
  2. **AUTO-SKILL CREATION**: After complex tasks (5+ tool calls), creates reusable SKILL.md files for procedures, tools used, and pitfalls. Next similar task uses the saved skill instead of re-deriving.
  3. **CURATOR**: Background maintenance (every 7 days) that tracks skill usage and archives unused agent-created skills after 90 days (recoverable). Supports pinning critical skills and optional LLM-based consolidation of duplicates.
  The post emphasizes that most users disable these (to save tokens) or ignore them, causing the agent to stop improving. With all three running, the agent compounds knowledge: facts are remembered, procedures are reused, and bloat is pruned.
- **Extracted Repos / Tools**: Hermes Agent (framework with built-in auto-memory, auto-skill, and curator loops). Strong emphasis on self-improving agent architecture via feedback loops and skill/memory management.
- **TOOLS.md Link**: New row under Agent Frameworks & Orchestration / Self-Improving Agents & Feedback Loops (high-signal self-improvement pattern).
- **Notes**: **Extremely high relevance — direct reinforcement of loop engineering.** The three feedback loops (auto-memory, auto-skill creation, curator pruning) are a concrete, production-grade implementation of the self-improving / compounding agent patterns we've been building toward. Maps beautifully to our 4-tier autonomy, 14-step roadmap, goal-based evaluators, and skills work. The curator's git-like pruning + pinning is especially elegant for long-term maintainability. High fit for evaluation criteria: Very High Relevance (self-improving feedback loops + skill/memory management), High Integration Ease (patterns are portable), High Reproducibility (detailed implementation described), Low Redundancy. Recommend: (1) Catalog as major self-improving agent framework. (2) Strong candidate for direct adaptation into our loop-engineering skill pack (e.g., auto-memory patterns, auto-skill creation, curator-style maintenance). (3) Excellent reference for building compounding intelligence into AgenC-based agents.
- **Status**: Processed and cataloged (added as high-value self-improving agent framework; priority for loop engineering and skills integration)

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