# Harness: agent-cage (PNNL)

Primary **containerized agent sandbox** for this catalog. Version images, isolate network/MCP, and run integration tests against other tools without polluting the host.

**Upstream:** https://github.com/pnnl/agent-cage  
**Pin:** see `PINNED_COMMIT` (default tracking method per ADR-0003)  
**Related (not primary):** [cleat](https://github.com/cleatdev/cleat) (Claude-focused cage), [chaserhkj/agent-cage](https://github.com/chaserhkj/agent-cage) (Podman/microVM)

## Why this one

| Need | agent-cage (PNNL) |
|------|-------------------|
| Full OS for agents | Ubuntu agent container |
| Network control | mitmproxy + policies + audit |
| MCP | First-class `up --mcp`, `mcp-servers.yaml` |
| Reproducible tests | Docker images + compose + pinned SHA |
| Multi-agent host | Harness-agnostic (Claude, Cline, LangGraph, custom; Grok via install-in-cage) |

Matches prior multi-dev experience: containers isolate CLI/agent + MCP; a **Makefile** gives OS-friendly branching (Linux / macOS / WSL) without rewriting bash conditionals for every target.

## Quick start

```bash
# From catalog repo
cd harness/agent-cage
make doctor          # docker / compose / pin checks
make setup           # shallow clone @ pin + install agentcage CLI
make up-mcp          # start sandbox with MCP overlay
make shell           # agent Ubuntu shell
make test            # quick policy connectivity tests
make down
```

Override clone location:

```bash
make setup CAGE_DIR=$HOME/src/agent-cage
```

## Layout

```
harness/agent-cage/
├── README.md
├── Makefile           # multi-OS entrypoints
├── PINNED_COMMIT
├── manifest.json
└── overlays/          # optional compose / MCP snippets for this catalog
    └── README.md
```

Upstream lives **outside** this git tree (default `~/.local/share/local-llm-dev-tools/agent-cage`) so we stay lean (no full subtree).

## Testing catalog tools (framework)

Use the cage as the **integration lab** for other TOOLS.md entries:

1. **Pin tool** in `data/tools.json` (already done for seeds).
2. **Start cage** with MCP if the tool is MCP-related: `make up-mcp`.
3. **Install tool inside agent** (or mount workspace):
   - clone/pin into `$(CAGE_DIR)/workspace/` (host-persisted), or
   - `apt`/`pip`/`npm` inside `make shell` (proxy-policy constrained).
4. **Record smoke** under `examples/integration-patterns/` or future `pipelines/smoke/<tool>/`:
   - image tag / pin used
   - commands run
   - pass/fail + tok/s or latency notes
5. **Update TOOLS.md notes** with empirical results.

Suggested first tools **inside** the cage after agent-cage itself:

| Order | Tool | Why in cage |
|-------|------|-------------|
| 1 | LiteLLM + Ollama (host Ollama via proxy policy if needed) | Hybrid routing recipe |
| 2 | codebase-memory-mcp | MCP path already native |
| 3 | repowise | Efficiency comparison |
| 4 | Skill ports (marketing-council, mattpocock subset) | Install Grok/Claude skills; no host clutter |
| 5 | colibri | Heavy/slow experiment; isolation helps |

## Grok CLI note

Upstream docs emphasize Claude/Cline/LangGraph. Patterns for Grok:

1. Install `grok` CLI **inside** the agent image (custom Dockerfile overlay) with API key via env policy, or  
2. Run Grok on **host** while mounting project/`workspace` and using cage only for untrusted tool/MCP experiments.

Add overlays under `overlays/` as we harden a preferred path (tracked as follow-up TODO).

## Make vs bash

| | Make | bash-only |
|---|------|-----------|
| Branch by OS | natural (`ifeq`, separate targets) | easy to drift |
| Documented targets | `make help` | ad-hoc flags |
| Multi-dev (Linux/macOS/WSL) | one entry surface | per-OS scripts |

We standardize on **Make** for harness lifecycle; scripts stay thin.

## Security

Upstream is a research prototype — read their SECURITY / production-hardening docs before untrusted agents. Default: run cage with least network policy that still allows the smoke under test.
