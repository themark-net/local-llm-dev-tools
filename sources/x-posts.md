### Entry 051: N-gram Speculative Decoding (ngram-mod) in llama.cpp — Zero-VRAM Speed Boost for Repetitive Generation

- **URL**: https://x.com/i/status/2077718647905333549
- **Date**: 2026-07-16
- **Poster**: Alok (@analogalok)
- **Summary / Key Claims**: Detailed technical breakdown of N-gram Speculative Decoding (`--spec-type ngram-mod`) in llama.cpp. Provides massive speedups on repetitive tasks (code, JSON, document editing) by using a lightweight rolling hash + O(1) lookup to detect and "fast forward" through sequences already present in the KV cache/context. Achieves ~2x+ generation speed (e.g., 46 t/s → 107 t/s on code editing) with **zero extra VRAM** and virtually zero compute overhead. No draft model required. Especially powerful for structured/repetitive output. Includes parameters (`--spec-ngram-simple-size-n`, `--spec-ngram-simple-size-m`) and a free Google Colab notebook for testing.
- **Extracted Repos / Tools**: llama.cpp with ngram-mod support. Strong practical optimization for local inference engines.
- **TOOLS.md Link**: New row under Inference & Serving / Speculative Decoding & Optimization (high-signal inference optimization technique).
- **Notes**: **High relevance for local inference performance.** This is an excellent, practical optimization that delivers significant speed gains on exactly the kinds of tasks agents do most (code generation, structured output, editing) without any VRAM penalty. The rolling hash + speculative draft approach is pure computer science elegance. Directly useful for making local agent workflows faster and more responsive. High fit for evaluation criteria: Very High Relevance (zero-cost speculative decoding), High Integration Ease (simple llama.cpp flag), High Reproducibility (detailed explanation + Colab notebook), Low Redundancy. Recommend: (1) Catalog as major inference optimization technique. (2) Strong candidate for testing on local hardware (especially code-heavy agent tasks). (3) Excellent reference for squeezing maximum performance out of local LLM setups.
- **Status**: Processed and cataloged (added as high-value inference optimization; priority for performance category)

## Future Entries Format

When adding new X-sourced tools or papers:

```
### Entry NNN: Short Title

- **URL**: https://x.com/...
- **Date**: YYYY-MM-DD
- **Poster**: @handle (Name)
- **Summary**: 1-2 sentence gist + why relevant to local LLM dev pipelines. Note if paper-based.
- **Extracted Repos/Tools**: List with links or 'Paper only: arxiv link'.
- **TOOLS.md Link**: Row or section reference.
- **Notes**: Any caveats, hype vs substance, feasibility if paper, pipeline fit.
```

*This log ensures the catalog remains grounded in primary social signals while allowing rigorous, staged evaluation separate from viral claims. 'Read a paper' is now a supported recurring workflow for tool discovery.*