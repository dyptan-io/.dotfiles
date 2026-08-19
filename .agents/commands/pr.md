# Commit all diffs on the current branch and open a PR

Delegate to the `pr-author` sub-agent with a real brief. It has no conversation context, and
a thin brief forces it to read the whole diff.

## 1. Write the brief

From conversation memory only, no `git diff`:

- **What changed**, grouped by area, one line each. Name the files or packages touched.
- **Why**: the bug, the request, the constraint a reviewer would not guess.
- **Decisions and tradeoffs**, and anything deliberately deferred.
- **Gotchas**: migrations, config or env changes, breaking changes, follow-ups.
- **Omit**: dead ends, reverted attempts, anything not in the final diff.

Be concrete: "fixed the auth timeout", not "made some fixes". Flag any part of the branch
that predates this conversation so the agent knows where to look.

## 2. Dispatch

Launch `pr-author` with the brief as the whole prompt. Do not paste the diff.

## 3. Report

Return the PR URL.

Handle it yourself only when the agent clearly costs more than it saves, e.g. a one-file
change already in context.
