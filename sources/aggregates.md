# Aggregate & List Repo Sources Log

This file logs external repositories that are themselves curated lists, awesome-lists, comparison tables, or aggregations of local LLM tools, agents, frameworks, hardware, or related resources.

**Purpose**: Provide traceability from social signals (X posts) or discoveries to your central rubric-scored catalog. Aggregates are treated as *input feeds* that populate or enrich `TOOLS.md` and `data/tools.json`, not as parallel sources of truth.

**Handling Philosophy** (see also SUBTREES.md and CATEGORIZATION.md):
- Aggregates are usually small (mostly markdown). They are cheap to submodule, subtree, or statically archive.
- Their primary value is the structured list of *other* tools. Extract, score, and synthesize into the central catalog using the staged rubric.
- Keep your tracking repo focused: one high-quality, ranked, pipeline-oriented catalog rather than a collection of raw lists.

## Intake Template for New Aggregate

When saving an aggregate (from X post, search, or manual discovery):

```
### Entry NNN: <Short Slug or Title>

- **URL**: https://github.com/org/repo
- **Date Saved**: YYYY-MM-DD
- **Source**: X post <url or id> | Manual | Other
- **Poster / Discoverer**: @handle or name
- **Key Categories Covered**: Inference, Agents, MCP, RAG, Coding Assistants, Hardware, etc. (list relevant ones)
- **Why Saved**: Brief reason (new MCP tools? strong agent coverage? hardware comparisons? complements existing rubric?)
- **Initial Extraction Notes**: Any standout tools, gaps vs your categories, or immediate scoring candidates.
- **Handling Tier** (decided on intake):
  - Tier A: Submodule or subtree under aggregates/<slug>/ (full versioned copy)
  - Tier B: Pin commit/SHA + archive key README sections here or in dated file
  - Tier C: Extract relevant entries only into TOOLS.md / data/tools.json; light reference only
- **Action Taken**: 
  - Added to data/tools.json under aggregates array (if applicable)
  - Synthesized N new tools into TOOLS.md with scores and "source_aggregate" field
  - Submodule/subtree path (if Tier A)
- **Status**: Active | Superseded | Archived
```

## Current Aggregates

*(No aggregates logged yet. The first X seed post or next saved list will populate the first entry. Use the template above.)*

## Synthesis Process (Mandatory for All Aggregates)

1. Review the aggregate's structure and entries against your Primary Categories + Cross-cutting Tags (CATEGORIZATION.md).
2. For each promising or novel tool: apply full Stage 0–4 scoring.
3. Add or update row in TOOLS.md with integration notes (Grok CLI, MCP code memory, DSPy/LiteLLM fit, pipeline use).
4. Record in data/tools.json with at minimum: name, github, scores, tier, tags, notes, and `source_aggregate: "<slug>"` or `x_post_id`.
5. Update this log with the number of tools synthesized and any rubric refinements triggered.

This ensures aggregates accelerate discovery without fragmenting the catalog or duplicating maintenance effort.

## Relationship to X Posts & Individual Tools

- X posts often surface either individual tools or aggregates. Both flow through the same rubric and central files (TOOLS.md + data/tools.json).
- The pending first X post (https://x.com/i/status/2075994424484732984) will be processed the same way once content is available — either as individual tool(s) or as an aggregate trigger.

*This log + the synthesis step keeps the methodology consistent and your catalog authoritative.*