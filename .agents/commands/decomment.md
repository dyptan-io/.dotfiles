Clean up comments in the current diff's changed files, or in the file and directory
arguments if given.

Resolve the file list, skipping generated, vendored, lockfile, and non-source paths.
Empty list -> say so, stop. Otherwise apply your comment rules to every file, editing
in place, and report the tally.
