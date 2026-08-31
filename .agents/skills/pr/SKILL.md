---
name: pr
description: Commit all diffs on the current branch and open a PR with a simple, human-sounding description, delegating to the pr-author subagent.
allowed-tools: Agent, Bash(gh pr *), Bash(git *)
---

# Commit the current branch and open a PR

`pr-author` commits, pushes, writes the description, and opens the PR. It is authorized to
run `gh pr create`.

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

## 3. Report

Return the PR URL the agent gives back.

