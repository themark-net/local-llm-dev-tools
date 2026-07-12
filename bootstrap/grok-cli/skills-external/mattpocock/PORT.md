# mattpocock skills subset (paths snapshot)

- **Upstream:** https://github.com/mattpocock/skills
- **Pin:** 391a2701dd94
- **License:** MIT
- **Curated skills:** tdd, code-review, to-spec
- **Install:** Grok `[skills].paths` → this directory (not copied into ~/.grok/skills)
- **Refresh:**
  ```bash
  git clone https://github.com/mattpocock/skills.git /tmp/mattpocock-skills
  git -C /tmp/mattpocock-skills checkout 391a2701dd94
  for s in tdd code-review to-spec; do
    rsync -a --delete /tmp/mattpocock-skills/skills/engineering/$s/ \
      bootstrap/grok-cli/skills-external/mattpocock/$s/
  done
  ./bootstrap/grok-cli/install.sh --skills-only
  ```
- **Policy:** ADR-0009 hybrid; T-0011
