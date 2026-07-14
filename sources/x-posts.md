### Entry 039: CLAUDE.md — 192k-Star Behavioral Guidelines File for Claude Code (Karpathy-Inspired)

- **URL**: https://x.com/i/status/2077032502993256646
- **Date**: 2026-07-14
- **Poster**: Akshay Pachaar (@akshay_pachaar)
- **Summary / Key Claims**: A single CLAUDE.md file (derived from Andrej Karpathy's coding rules) has reached 192k GitHub stars. It provides structured behavioral guidelines for Claude Code to prevent common LLM coding mistakes: over-engineering, ignoring existing patterns, and adding unnecessary dependencies. You simply drop one .md file into your repo, and it shapes the AI's behavior across the entire project. Emphasizes moving from "use AI to write code" to "engineer the AI's behavior so the code is actually good." 100% open-source, prompt-engineering focused, no complex tooling required.
- **Extracted Repos / Tools**: Primary repo for the CLAUDE.md template (linked in post). Strong conceptual overlap with AGENTS.md, project context files, and structured instruction patterns.
- **TOOLS.md Link**: New row under Agent Frameworks & Orchestration / Context & Prompt Engineering (high-signal behavioral guidelines pattern).
- **Notes**: **Very high relevance.** This is an excellent real-world validation of the power of well-crafted markdown instruction files for guiding agent behavior (directly analogous to our AGENTS.md, project-process files, and skills). The Karpathy-inspired approach to preventing predictable LLM mistakes through explicit guidelines is highly aligned with our focus on reliable agent workflows and context engineering. Strong overlap with second brain patterns and structured prompting. High fit for evaluation criteria: Very High Relevance (behavioral guidelines / context files for agents), High Integration Ease (simple .md file), High Reproducibility (open source, widely adopted), Low Redundancy. Recommend: (1) Catalog as major context/instruction file pattern. (2) Strong candidate for studying and adapting into our own AGENTS.md and project scaffolding. (3) Excellent reference for improving agent output quality through better system-level instructions.
- **Status**: Processed and cataloged (added as high-value behavioral guidelines / context file resource; priority for context and agent scaffolding category)

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