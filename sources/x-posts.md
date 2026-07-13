### Entry 023: Wigolo — Local-First MCP Web Search, Crawl & Research Server

- **URL**: https://x.com/i/status/2076346769970253947
- **Date**: 2026-07-12
- **Poster**: @0x0SojalSec (highlighting Wigolo by @yourtowhid / KnockOutEZ)
- **Summary / Key Claims**: Local-first MCP server that gives any AI agent full web capabilities (search, page fetch, full-site crawling, structured extraction) with zero API keys or cloud calls. Multi-engine search (18 sources) with local ML model reranking, aggressive caching (instant repeats), and headless browser escalation for blocked sites. Everything stays on your machine. Works out-of-the-box with Claude Code, Cursor, Codex, Gemini CLI, VS Code, Windsurf, Zed, Antigravity, and any MCP-compatible agent.
- **Extracted Repos / Tools**: Primary: https://github.com/KnockOutEZ/wigolo (local MCP server for web intelligence). npm: @staticn0va/wigolo. Strong local-first, keyless design with caching and fallback mechanisms.
- **TOOLS.md Link**: New row under Research/Search & Answer Engines or MCP Servers & Tooling (high-signal local tool). Strong fit for context augmentation and agent research workflows.
- **Notes**: **Excellent addition — directly relevant to our MCP-heavy AgenC integration and local agent goals.** Provides a complete local replacement for paid web search APIs. The caching + ML reranking + headless fallback combo is practical and production-oriented. Strong overlap with general MCP tool servers but stands out for its focus on reliable, cached, multi-engine web research without any external dependencies or costs. High fit for evaluation criteria: Very High Relevance (local web capabilities for agents), Very High Integration Ease (plain MCP, works with many agents including our AgenC target), High Reproducibility (open source, simple init), Low Redundancy (fills a clear gap in local research tooling). Perfect for the repo's self-hosted/local emphasis. Recommend: (1) Catalog as core local MCP research tool. (2) Strong candidate for integration testing with AgenC (add as MCP server in our augmentation layer). (3) Evaluate caching behavior and reranking quality in real agent loops. (4) Synergistic with loop engineering and skills for autonomous research tasks.
- **Status**: Processed and cataloged (added as high-value local MCP web research server; priority for MCP ecosystem expansion)

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