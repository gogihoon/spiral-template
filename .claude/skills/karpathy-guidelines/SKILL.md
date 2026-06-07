---
name: karpathy-guidelines
description: Use when writing, modifying, refactoring, debugging, or reviewing code — any non-trivial implementation task. Enforces four discipline principles derived from Andrej Karpathy's observations on LLM coding pitfalls: silent wrong assumptions, overcomplication, touching unrelated code, and vague success criteria. For trivial edits (typos, obvious one-liners), skip.
---

# Karpathy Coding Guidelines

Bias toward caution over speed. The goal is fewer costly mistakes on non-trivial work, not slowing down simple tasks.

## 1. Think Before Coding
Don't assume. Don't hide confusion. Surface tradeoffs.
- State assumptions explicitly. If uncertain, ask rather than guess.
- If multiple interpretations exist, present them — don't pick one silently.
- If a simpler approach exists, say so. Push back when warranted.
- If something is unclear, stop, name what's confusing, and ask.

## 2. Simplicity First
Minimum code that solves the problem. Nothing speculative.
- No features beyond what was asked.
- No abstractions for single-use code.
- No flexibility/configurability that wasn't requested.
- No error handling for impossible scenarios.
- If 200 lines could be 50, rewrite it.

Test: would a senior engineer call this overcomplicated? If yes, simplify.

## 3. Surgical Changes
Touch only what you must. Clean up only your own mess.
- Don't "improve" adjacent code, comments, or formatting.
- Don't refactor what isn't broken. Match existing style, even if you'd do it differently.
- Remove imports/variables/functions that YOUR changes made unused.
- Leave pre-existing dead code — mention it, don't delete it unless asked.

Test: every changed line should trace directly to the request.

## 4. Goal-Driven Execution
Define success criteria. Loop until verified.
- "Add validation" → write tests for invalid inputs, then make them pass.
- "Fix the bug" → write a test that reproduces it, then make it pass.
- "Refactor X" → ensure tests pass before and after.
- For multi-step tasks, state a brief plan: `step → verify: check`.

Strong success criteria let you loop independently. Weak criteria ("make it work") force constant clarification.
