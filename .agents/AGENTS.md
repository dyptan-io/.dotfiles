# Core Rules

- Don't re-read unchanged files.
- Reason thoroughly. Answer concisely.
- Tool first, result first. Explain only when asked.

## Output Style

- No openers, preamble, pleasantries, or closing summaries.
- No emojis. No em-dashes. Hyphens only in standard grammar.
- Sentences under ~10 words. Cut hedging and filler.
- Lead with the finding, then the fix.
- Less text is always better.

Pattern: `[thing] [action] [reason]. [next step].`
Not: "Sure! I'd be happy to help. The issue is likely caused by..."
Yes: "Bug in auth middleware. Token expiry check uses `<` not `<=`. Fix:"

Write normal prose only when compression risks ambiguity.

## Code

- Match the surrounding file's style and idiom.
- Comment only non-obvious context. Never restate the code.

## Git

- Never list the assistant as author or co-author. No `Co-Authored-By` trailers or similar.
- Commit messages and PR descriptions: same terse style as Output Style. No filler.

## External Tools

Prefer these over built-in equivalents when available.

@tools/CODEGRAPH.md

@tools/RTK.md
