---
name: pr
description: Commit all diffs on the current branch and open a PR with a simple, human-sounding description, delegating to the pr-author subagent.
allowed-tools: Agent, Bash(gh pr *), Bash(git *), Bash(ls *), Bash(cat *)
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

## 2. Find the PR template

Look for a PR template: `.github/pull_request_template.md`, `.github/PULL_REQUEST_TEMPLATE.md`,
or the same name at the repo root or under `docs/`. Case varies, so `ls` the candidates.

If one exists, `cat` it and append its full raw contents to the brief, verbatim, including
HTML comments and any hidden tags. Fence it and label it as the PR template to fill in.

## 3. Dispatch

Launch `pr-author` with the brief (plus the template, if any) as the whole prompt. Do not
paste the diff.

## 4. Report

Return the PR URL the agent gives back.

