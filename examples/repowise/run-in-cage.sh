#!/usr/bin/env bash
# In-cage smoke: repowise install + zero-LLM health graph on fixture.
set -euo pipefail

SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
FIXTURE="${RW_FIXTURE:-${SCRIPT_DIR}/fixture}"
VENV_DIR="${RW_VENV:-/workspace/.venvs/repowise-smoke}"
PIP_SPEC="${REPOWISE_PIP_SPEC:-repowise==0.30.0}"

echo "== repowise in-cage smoke =="
echo "  fixture=$FIXTURE"
echo "  venv=$VENV_DIR"
echo "  pip=$PIP_SPEC"
echo "  python=$(python3 --version)"

if [[ ! -x "${VENV_DIR}/bin/python" ]]; then
  mkdir -p "$(dirname "$VENV_DIR")"
  python3 -m venv "$VENV_DIR"
fi
# shellcheck disable=SC1091
source "${VENV_DIR}/bin/activate"
python -m pip install -q --upgrade pip
python -c "import repowise" 2>/dev/null || python -m pip install -q "$PIP_SPEC"

echo "== version =="
repowise --version

# git helps health avoid "not a repository" noise (optional but cleaner)
if [[ ! -d "${FIXTURE}/.git" ]]; then
  (cd "$FIXTURE" && git init -q && git add -A && git -c user.email=smoke@local -c user.name=smoke commit -qm 'smoke fixture') || true
fi

echo "== health (zero LLM graph build) =="
OUT=$(repowise health "$FIXTURE" --format json 2>&1) || {
  # Some versions print table + non-zero on DB warn; retry table and accept graph lines
  OUT=$(repowise health "$FIXTURE" 2>&1) || true
}
echo "$OUT" | tail -40

# Pass criteria: graph or health scores appeared
if echo "$OUT" | grep -Eiq 'Graph built|Hotspot|Score|healthy|file_nodes|"score"'; then
  echo "smoke: PASS (repowise health)"
  exit 0
fi

echo "error: repowise health output did not look successful" >&2
exit 1
