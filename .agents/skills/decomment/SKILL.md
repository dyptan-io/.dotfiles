---
name: decomment
description: Strip obvious comments and compact verbose ones in the given files, or the current diff's changed files, editing them directly. Use when asked to decomment, clean up comments, or remove comment noise.
allowed-tools: Agent
---

# Decomment

Dispatch only. Launch the `compressor` subagent with the rest of this file as its prompt,
plus any file or directory arguments given. Report its output verbatim. Never strip or
compact comments yourself, not even for one file, and never edit a file in this session.

---

Clean comments in the files or directories given as arguments, or the current diff's
changed files if none were given.

Skip generated, vendored, lockfile, and non-source paths. If the resolved list is empty,
say so and stop.

This work runs in the `compressor` subagent. The dispatching session never does it inline.
