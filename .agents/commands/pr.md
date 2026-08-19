# Commit the current branch and open a PR

`pr-author` commits, pushes, and writes the description. You run `gh pr create` yourself -
it has no permission for that.

## 1. Write the brief

From conversation memory only, no `git diff`:

- **What changed**, grouped by area, one line each.
- **Why**: the bug, the request, the constraint a reviewer would not guess.
- **Decisions and tradeoffs**, and anything deliberately deferred.
- **Gotchas**: migrations, config or env changes, breaking changes, follow-ups.
- **Omit**: dead ends, reverted attempts, anything not in the final diff.

Be concrete: "fixed the auth timeout", not "made some fixes". Flag any part of the branch
that predates this conversation so the agent knows where to look.

The brief is working context, not draft copy: its structure and any paths in it must not
survive into the PR description.

## 2. Dispatch

Launch `pr-author` with the brief as the whole prompt. Do not paste the diff.

## 3. Open the PR

Run the returned `gh pr create` command verbatim. Return the PR URL.

Always delegate the writing. Reading the whole diff yourself is the cost this exists to
avoid, and a one-file change is not an exception worth the habit.
