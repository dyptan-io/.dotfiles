Clean up comments in the current diff's changed files, or in the file and directory
arguments if given.

Resolve the file list, skipping generated, vendored, lockfile, and non-source paths.
Empty list -> say so, stop. Otherwise apply the comment rules to every file, editing
in place. Lean hard toward removal: strip anything that is not a non-obvious WHY, and
compact every keeper to its shortest faithful wording in the file's own idiom.

Removal must be safe: delete only when the code reads clearly without the comment. If it
carries what the code cannot show (units, magic values, ordering, caller contracts,
external refs), compact it instead. Uncertain is a keep.

Report the tally: one line per file, `path - N removed, M compacted`, and nothing else.
