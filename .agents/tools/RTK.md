# RTK

Token-optimized CLI proxy. Saves 60-90% on dev command output.

A Claude Code hook rewrites commands automatically (`git status` becomes
`rtk git status`). In other CLIs, invoke `rtk <cmd>` yourself.

- `rtk gain [--history]` savings analytics
- `rtk discover` missed opportunities in agent history
- `rtk proxy <cmd>` raw passthrough, no filtering

If `rtk gain` errors, a different `rtk` binary is on PATH. Check `rtk --version`.
