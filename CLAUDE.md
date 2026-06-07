## Project Overview

<One paragraph: what this project is, who it's for, and the core goal.>

## Tech Stack

- Language/Runtime: <e.g. TypeScript / Node 20>
- Framework: <e.g. React, FastAPI>
- Key libraries: <only the ones that affect how code is written>
- Package manager: <npm / pnpm / uv / ...>

## Project Structure

<Only the directories that matter for navigation. Don't mirror the whole tree.>
```
.claude/skills/karpathy-guidelines/   coding discipline (project-local skill)
src/
  <module>/   <what lives here>
docs/
  methodology.md   how this project is run (Spiral-based)
  domain.md / requirements.md / spec / daily-log
```

## Code Conventions

- <Naming, file layout, import order — only project-specific rules.>
- <Error handling pattern this project uses.>
- <Anything Claude tends to get wrong here.>

---

## Methodology Hooks (optional)

This project follows the Spiral-based methodology in `docs/methodology.md`. Respect these gates:
- Read `docs/domain.md` and `docs/requirements.md` before proposing a design.
- Write `docs/features/<feature>/spec.md` (risk + function specs + verification plan) and wait for approval **before** implementing.
- Flag any assumption that conflicts with `docs/domain.md` rules.

> Coding discipline (think-before-coding, simplicity, surgical changes, goal-driven/tests-first)
> lives in the project-local `karpathy-guidelines` skill (`.claude/skills/`), loaded on implementation tasks.
