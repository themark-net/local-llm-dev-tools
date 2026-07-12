# OQ-0005: Grok participation in agent-cage

- **Priority:** P1
- **Status:** open
- **Created:** 2026-07-12
- **Updated:** 2026-07-12
- **Blocks:** T-0020 completion criteria, T-0021, T-0022
- **Blocked-by:** —
- **Related-ADR:** ADR-0002
- **Related-code:** `harness/agent-cage/`, `harness/agent-cage/overlays/`
- **Feature/runbook:** harness-integration
- **Related-TODO:** T-0020, T-0021, T-0022

**Question:** How should Grok CLI interact with the PNNL agent-cage sandbox?

**Context:** Upstream agent-cage is harness-agnostic but docs emphasize Claude/Cline/LangGraph. We already have Grok as primary operator on the host. Need a default so integration tests are consistent.

**Options:**

1. **Host-Grok + cage workspace** — Grok on host; untrusted installs/MCP/network-sensitive work inside cage; mount/sync workspace
2. **Grok installed inside agent image** — custom Dockerfile overlay; API key via env; full in-cage sessions
3. **Claude/Cline inside cage for adversarial tests only; Grok stays host** — dual-harness
4. **Defer** — use cage for policy/MCP/network tests without a coding agent until later

**Recommendation:** Start with **(1)** for speed; add **(2)** as optional versioned overlay.

**Resolution notes:**

- **2026-07-12:** Operator chose to pursue **(2) Grok-in-image** now that cage baseline is green. Scaffold under `harness/agent-cage/overlays/grok/` on branch `feature/agent-cage-grok-image`. Host-Grok remains valid for catalog work. Status remains open until smoke (`grok --version` + optional headless ping) passes under policy `coding-agent-grok`.
