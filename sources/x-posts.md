### Entry 055: Hermes Agent Credential Pools — Scoped, Revocable API Key Management for Sub-Agents

- **URL**: https://x.com/i/status/2077583294137291175
- **Date**: 2026-07-16
- **Poster**: Hermes Agent Tips (@HermesAgentTips)
- **Summary / Key Claims**: Hermes Agent's credential pools give each sub-agent a scoped, revocable key instead of exposing your real API key. This limits blast radius — one leaked session only compromises one account. "iron-proxy" handles rotation automatically so you never touch raw secrets. Strong security best practice for multi-agent systems.
- **Extracted Repos / Tools**: Related to Hermes Agent (NousResearch/hermes-agent). PR: https://github.com/NousResearch/hermes-agent/pull/30179. Focus on credential management and secret rotation for agent security.
- **TOOLS.md Link**: New row under Safety & Guardrails or Agent Frameworks & Orchestration (security pattern for multi-agent systems).
- **Notes**: **High relevance for safety and Hermes integration.** Directly enhances our Hermes Agent work (Entry 048) and the lightweight harness. The scoped/revocable credential pools + automatic rotation is an excellent security pattern for systems with multiple sub-agents or long-running loops. Complements destructive_command_guard and other guardrails. High fit for evaluation criteria: High Relevance (agent security best practices), High Integration Ease (can be adopted as a pattern), High Reproducibility (open source in Hermes ecosystem), Low Redundancy. Recommend: (1) Catalog as key security pattern. (2) Consider integrating credential pool concepts into safety_guards module of the lightweight harness. (3) Strong addition for any multi-agent or sub-agent workflows.
- **Status**: Processed and cataloged (added as high-value agent security pattern; useful for harness safety layer)

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