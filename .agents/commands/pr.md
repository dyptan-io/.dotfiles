# Commit all diffs on the current branch and open a PR

Delegate to the `pr-author` sub-agent with a real brief. It has no conversation context, and
a thin brief forces it to read the whole diff.

## 1. Write the brief

From conversation memory only, no `git diff`:

- **What changed**, grouped by area, one line each.
- **Why**: the bug, the request, the constraint a reviewer would not guess.
- **Decisions and tradeoffs**, and anything deliberately deferred.
- **Gotchas**: migrations, config or env changes, breaking changes, follow-ups.
- **Omit**: dead ends, reverted attempts, anything not in the final diff.

Be concrete: "fixed the auth timeout", not "made some fixes". Flag any part of the branch
that predates this conversation so the agent knows where to look.

The brief is working context, not draft copy. Name files only where the agent needs them to
find something. Say so explicitly: the brief's structure and any paths in it must not survive
into the PR description.

## 2. Dispatch

Launch `pr-author` with the brief as the whole prompt. Do not paste the diff.

## 3. Report

Return the PR URL.

Always delegate. Never stage, commit, push, or run `gh pr create` yourself: holding the diff
is the cost this exists to avoid, and a one-file change is not an exception worth the habit.
