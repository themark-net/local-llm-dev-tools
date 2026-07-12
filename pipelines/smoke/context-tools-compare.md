# T-0013 — repowise vs codebase-memory-mcp (in-cage smoke notes)

**Date:** 2026-07-12  
**Lab:** agent-cage (PNNL)  
**Smokes:** `make smoke-codebase-memory` · `make smoke-repowise`

## Roles (complement, not replace)

| Dimension | codebase-memory-mcp | repowise |
|-----------|---------------------|----------|
| **Primary job** | Persistent **code knowledge graph** + structural MCP tools for agents | **Context intelligence layer**: graph + git + health + optional wiki/MCP |
| **Install** | Single static binary (~270 MB), zero runtime deps | Python package (`pip install repowise`), heavier deps (needs Py≤3.13 in practice) |
| **Smoke path** | `cli index_repository` + `search_code` | `health` (zero LLM; graph + markers) |
| **Grok stack fit** | First-party MCP in `bootstrap/grok-cli` config | Optional second MCP / CLI for health + efficiency; not required for Grok bootstrap |
| **Overlap** | Both build structural graphs / reduce blind file walks | Both claim fewer tokens vs naïve exploration |
| **Differentiation** | Extreme index speed, pure C binary, 14 MCP tools, ADR helpers | Code-health scores + refactoring targets; multi-layer product (wiki/decisions) |
| **License posture** | MIT (engine) | AGPL-3.0 (product) — note for commercial embeds |

## Smoke outcomes (this run)

Recorded in `pipelines/smoke/*/results.latest.md` after green Make targets.

## Catalog recommendation

- Keep **codebase-memory-mcp** as default Grok MCP memory (S-tier, bootstrap-owned).  
- Keep **repowise** as **A-tier complement** for health/risk and efficiency experiments.  
- **Do not** remove either solely due to overlap; re-score after longer eval (T-0003) if needed.

## Non-goals of this smoke

- Full published repowise efficiency harness vs Claude  
- MCP-host multi-server wiring of both at once  
- LLM-backed `repowise init` wiki generation (needs cloud or local LLM budget)
