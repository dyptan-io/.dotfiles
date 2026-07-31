Compress a prose file (`.md`/`.txt`, given as argument, or ask which) into caveman speak to
cut input tokens. Only touch prose files — never `.py`/`.js`/`.ts`/`.json`/`.yaml`/`.sh`/etc.

Before overwriting, copy the file to `<file>.original.md` as a backup.

Remove: articles, filler ("just", "basically", "really"), pleasantries ("sure!", "I'd recommend"),
hedging ("it might be worth"), connective fluff ("however", "furthermore"). Use fragments over
full sentences; drop "you should"/"make sure to".

Preserve byte-exact, never touch: code blocks, inline code, URLs, file paths, commands, version
numbers, dates, env vars, frontmatter. Keep headings, bullet/numbered structure, and table shape
— compress only the prose inside them. If a file mixes prose and code, compress prose only; if
unsure whether a span is code, leave it untouched.

Example: "You should always make sure to run tests before pushing to main, since it helps catch
bugs early." → "Run tests before push to main. Catches bugs early."

After writing, re-read the result and confirm nothing preserved was altered; if it was, fix and
re-check once more. Report before/after word count and the backup path.
