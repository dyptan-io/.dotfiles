
## Strip obvious comments and compact verbose ones, editing files directly

Clean up comments in the current diff's changed files (or given file/path args, if any).

1. Find changed files: use args if given, else `git status`/`git diff`.
2. Per file, per comment:
   - Obvious/restates-the-code → delete.
   - Genuinely useful but verbose (non-obvious why, invariant, workaround) → compact to shortest wording that keeps the meaning.
   - Already short and useful → leave as-is.
3. Edit directly, no per-file confirmation.
4. Report comments removed/compacted per file, briefly.
