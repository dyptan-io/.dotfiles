---
name: handover
description: Write a handover doc to docs/handovers/ so the next agent can resume from a clean context. Optional argument names the target agent.
---

# Write a handover doc so the next agent can resume from a clean context

Argument: the target agent this is written for (e.g. `simplify`, `code-review`). Optional.

Everything needed is in this context. No re-reading, no `git diff`, no re-deriving. One turn.

## Output

`docs/handovers/<branch-or-short-slug>.md`, creating the directory if needed. Overwrite an
existing handover for the same slug. Commit only if asked.

40-80 lines. A handover that costs as much to read as the history it replaces has failed.
Cut anything the next agent learns faster from the code.

## Structure

```markdown
# <task in one line>

**Original request:** <the prompt that started the session, verbatim if short, condensed if long>
**Branch:** <branch> - **Status:** <in progress | blocked | ready for review>

## Scope
What we set out to do, and what is explicitly out of scope.

## Done
Bullets, concrete, past tense, naming the files touched.

## Left
Bullets, ordered, each actionable on its own without asking questions.

## Key decisions
Only what constrains future work: why this approach over the obvious one, invariants,
constraints the user imposed.

## Dead ends
What was tried and abandoned, one line each with the reason. Unrecoverable from the code.

## Gotchas
Failing tests, flaky steps, env or config setup, anything that wastes the next agent's time.
```

Drop empty sections. Leave out tool output, file contents, diffs, resolved back-and-forth,
anything reverted, and process narration. Iterations matter only where they changed direction:
record the conclusion, not the path.

## Tailoring

With an agent named, write for that agent's job: keep what it needs to act, cut what it cannot
act on. Read its description if you do not know the job. With no argument, write a general
handover with all sections.

Finish by printing the path and one line telling the user to clear context and point the next
agent at it.
