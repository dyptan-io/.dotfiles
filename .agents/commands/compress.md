# Compress a prose file into caveman speak, preserving code/paths/URLs

Compress a prose file (`.md`/`.txt`, given as argument, or ask which) into caveman speak to
cut input tokens. Prose only: a file whose content is code, config, or data is not a target,
whatever its extension.

Remove: articles, filler ("just", "basically", "really"), pleasantries ("sure!", "I'd recommend"),
hedging ("it might be worth"), connective fluff ("however", "furthermore"). Use fragments over
full sentences; drop "you should"/"make sure to".

Preserve byte-exact: code blocks, inline code, URLs, paths, commands, version numbers, dates,
env vars, frontmatter. Keep headings, list, and table structure, compressing the prose inside.
Unsure whether a span is code -> leave it.

Example: "You should always make sure to run tests before pushing to main, since it helps catch
bugs early." -> "Run tests before push to main. Catches bugs early."

Back up first: `cp <file> <file>.bak`. After writing, `wc -w <file>.bak <file>` gives both
counts in one call. Report them and the backup path.
