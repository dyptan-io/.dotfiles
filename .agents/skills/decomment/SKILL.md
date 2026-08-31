---
name: decomment
description: Strip obvious comments and compact verbose ones in the current diff's added lines, or in the given files.
argument-hint: "[files, globs, or a described scope]"
allowed-tools: Agent, Bash, Glob
---

# Decomment

Fan out to `compressor` subagents. Do not edit, revert, or verify any file yourself.

## Files

`$ARGUMENTS` empty - the changed files: `git status --short` plus `git diff --name-only`,
or `git diff --name-only $(git merge-base HEAD main)` if both are empty.

`$ARGUMENTS` given - resolve its paths, globs, or described scope to files.

Empty list - say so and stop.

## Dispatch

One agent per file. Issue every Agent call in one message with `run_in_background: false`
so they run concurrently. Each prompt:

> Clean comments in this file:
> <the path>
>
> Scope: $ARGUMENTS

## Report

Take the agents' edits as they are. Do not inspect the diff, undo edits that fell outside
the scope, or re-run an agent to fix them.

Concatenate the agents' output lines and report them verbatim.
