# Overlays for pfy-mentat

Place docker-compose overrides, MCP server snippets, and Grok/LiteLLM wiring here as they stabilize.

| Planned | Purpose |
|---------|---------|
| `docker-compose.grok.yaml` | Optional agent image with Grok CLI preinstalled |
| `mcp-servers.catalog.yaml` | codebase-memory + filesystem servers tuned for catalog workspace |
| `policy-coding-local.yaml` | Policy preset allowing Ollama/LiteLLM host endpoints |

Until then, edit upstream `mcp-servers.yaml` in the clone or pass policies via `agentcage policy set`.
