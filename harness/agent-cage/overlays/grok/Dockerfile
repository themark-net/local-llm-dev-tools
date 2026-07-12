# Grok-in-cage: extend the built agent-cage agent image with Grok CLI.
# Secrets: pass XAI_API_KEY (or use grok login volume) at runtime — never bake keys.
#
# Build (after base cage images exist):
#   make -C harness/agent-cage grok-overlay-build
#
ARG BASE_IMAGE=agent-cage-agent:latest
FROM ${BASE_IMAGE}

USER root

# Install Grok CLI as agent user into /home/agent/.grok
USER agent
WORKDIR /home/agent
ENV HOME=/home/agent
ENV GROK_BIN_DIR=/home/agent/.local/bin
# Install script respects proxy env already set on the agent service
RUN curl -fsSL https://x.ai/cli/install.sh | bash \
    && test -x /home/agent/.local/bin/grok || test -x /home/agent/.grok/bin/grok \
    && (/home/agent/.local/bin/grok --version || /home/agent/.grok/bin/grok --version)

ENV PATH="/home/agent/.local/bin:/home/agent/.grok/bin:${PATH}"

# Runtime auth (set via compose env_file / -e) — do not COPY secrets
# XAI_API_KEY=
# Optional: mount host ~/.grok/auth.json read-only for browser session reuse (advanced)

WORKDIR /workspace
USER agent
