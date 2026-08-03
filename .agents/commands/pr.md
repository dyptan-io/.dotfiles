# Commit all diffs on the current branch and open a PR with a simple, human-sounding description

Open a PR for all changes on the current branch. Use what you already know from this conversation about what changed and why — don't re-derive it via `git diff`.

1. `git status` to see changes.
2. Stage all changed files except handoff/notes-to-self docs (`HANDOFF.md`, `HANDOVER.md`, etc.) — those stay local.
3. Commit: short, plain message, no fluff.
4. Push, then `gh pr create`.
5. Title/body: casual, human, what+why, a few bullet points. Nno scaffolding unless the repo expects it.
6. No AI/assistant attribution anywhere (no `Co-Authored-By`, no mention of AI).
7. Return the PR URL.
