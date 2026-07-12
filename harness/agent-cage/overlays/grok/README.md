# Overlay: Grok CLI inside agent-cage

Versioned agent image with Grok preinstalled. **API keys at runtime only.**

## Prerequisites

1. Base cage works: `make cage-up-mcp` + policy tests green (once).
2. Base image `agent-cage-agent:latest` exists (from a prior `up` build).
3. `XAI_API_KEY` in environment or `~/.agentcage/.env` (gitignored on host).

## Install overlay into runtime project

```bash
export PATH="$HOME/.local/bin:$PATH"
cd ~/DEVELOP/local-llm-dev-tools
git checkout feature/agent-cage-grok-image   # or main after merge

make cage-grok-install    # copies overlay into $AGENTCAGE_DIR
make cage-grok-build      # docker build local-llm-dev-tools/agent-cage-grok:0.1.0
# put key in ~/.agentcage/.env:
#   echo "XAI_API_KEY=xai-..." >> ~/.agentcage/.env

POLICY=coding-agent-grok make cage-up-mcp   # or: make cage-grok-up
make cage-shell
# inside [cage]:
grok --version
# headless smoke (if network policy allows x.ai):
# grok -p "Reply with the single word pong" --always-approve
```

## Files

| File | Purpose |
|------|---------|
| `Dockerfile` | FROM `agent-cage-agent:latest` + install Grok CLI |
| `docker-compose.override.yaml` | Build/tag agent image + pass `XAI_API_KEY` |
| `coding-agent-grok.yaml` | Policy whitelist + xAI/Grok hosts |

## Remove overlay

```bash
make cage-grok-uninstall
make cage-down
# next up uses stock agent image again
```

## Security

- Do **not** bake keys into the image.
- Prefer API key over mounting host `auth.json` unless you accept session token exposure to the container.
- Write-guard (ADR-0007) still recommended for FS mediation later.
