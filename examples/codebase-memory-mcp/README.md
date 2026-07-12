# Example: codebase-memory-mcp in agent-cage

**TODO:** T-0021 (MCP memory smoke)  
**Upstream:** https://github.com/DeusData/codebase-memory-mcp  
**Catalog pin:** `data/tools.json` → `codebase-memory-mcp`

## What this proves

Inside **agent-cage**, the static binary:

1. Reports `--version`
2. **Indexes** the tiny fixture under `fixture/`
3. Appears in `list_projects`
4. **`search_code`** finds `greet` in the fixture

This is a **CLI smoke** of the same binary Grok uses as MCP (`codebase-memory-mcp` on stdio). Full MCP-proxy wiring into `mcp-host` is optional follow-on.

## Run

```bash
# cage must be up (policy with pypi/github allow helps install fallback)
make local-ollama-up   # or any cage up that leaves agent running
make smoke-codebase-memory
```

Host shortcut: if `~/.local/bin/codebase-memory-mcp` exists (~270 MB), the Make target **docker-cp**s it into the agent to avoid re-download.

## Files

| Path | Role |
|------|------|
| `pins.env` | pin / fixture name |
| `fixture/` | tiny Python tree |
| `run-in-cage.sh` | index + search DoD |
