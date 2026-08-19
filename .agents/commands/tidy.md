# Review, simplify, and clean up a target

Target: `$ARGUMENTS`. Usually existing code, unrelated to any diff — a file,
directory, module, or symbol. Take it whole, not just recently changed lines.
Only if `$ARGUMENTS` is empty, fall back to the current diff's changed files
(`git status`/`git diff`).

Read the target first (CodeGraph if indexed, else Read/Grep). Then apply, editing
directly without per-change confirmation:

1. **Reuse** — replace hand-rolled logic with an existing helper in the codebase or
   a std/dependency API already in use.
2. **Simplify** — collapse redundant branches, dead code, needless indirection,
   over-general abstractions with one caller, unused params/fields.
3. **Refactor** — split what mixes concerns, hoist duplication, fix naming that
   misleads. Keep public APIs stable unless the target is the API itself.
4. **Comments** — obvious/restates-the-code → delete; useful but verbose → compact
   to the shortest wording that keeps the meaning; short and useful → leave.
5. **Style** — match the surrounding file's idiom, not a general ideal.

Rules:
- Behavior must not change. No new features, no speculative generality.
- Skip changes that only trade one style for an equivalent one.
- Verify it still compiles (project's check/lint task); report failures verbatim.

Report per file: what changed and why, one line each. Note anything you chose not
to touch and the reason.
