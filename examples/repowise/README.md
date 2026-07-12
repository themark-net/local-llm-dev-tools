# Example: repowise in agent-cage

**TODO:** T-0021 + T-0013 (vs codebase-memory)  
**Upstream:** https://github.com/repowise-dev/repowise  
**Pin:** `repowise==0.30.0` (see `pins.env`)

## What this proves

Inside **agent-cage** (Python **3.12**):

1. `pip install repowise==0.30.0` into a workspace venv  
2. `repowise --version`  
3. **`repowise health <fixture>`** — zero-LLM graph + code-health markers (no API keys)

## Why in-cage (not host)

Host Python may be **3.14+**, where current `repowise` deps (e.g. litellm upper bounds) fail to resolve. The agent image uses **3.12**, which matches PyPI constraints.

## Run

```bash
make smoke-repowise
# or both context tools + comparison note:
make smoke-context-tools
```

## Complement, not replace

See [pipelines/smoke/context-tools-compare.md](../../pipelines/smoke/context-tools-compare.md) (T-0013).
