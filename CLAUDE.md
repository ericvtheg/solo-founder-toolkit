# Solo Founder Toolkit

A Claude Code plugin designed for solo founders, indie hackers, and small teams who are shipping fast and iterating quickly.

## CRITICAL: Always Use Available Skills and Agents

**Before doing ANY task, check if a skill or agent exists for it and use it.**

This is a plugin development project. The skills and agents listed below exist specifically to help build plugin components. **You MUST use them proactively** - don't wait to be asked.

### Mandatory Skill/Agent Usage Rules

**When creating skills** → Use `skill-development` skill FIRST
**When creating agents** → Use `agent-development` skill FIRST
**When creating commands** → Use `command-development` skill FIRST
**When creating hooks** → Use `hook-development` skill FIRST
**When adding MCP integration** → Use `mcp-integration` skill FIRST
**When adding plugin settings** → Use `plugin-settings` skill FIRST
**When scaffolding plugin structure** → Use `plugin-structure` skill FIRST

**After creating/modifying components:**
- Use `skill-reviewer` agent to validate skills
- Use `plugin-validator` agent to validate overall plugin structure

**Why this matters:** These tools exist to prevent mistakes and follow best practices. Not using them wastes time and creates technical debt.

## Plugin Location

All plugin components live in: `plugins/solo-founder-toolkit/`

## Target Audience

This toolkit is built for:
- Solo founders building and launching products independently
- Indie hackers focused on rapid iteration and revenue
- Small teams that need to move fast without over-engineering
- Bootstrapped builders who wear multiple hats (dev, ops, marketing)

## Goals

Help solo founders:
- **Ship faster** - Reduce decision fatigue and analysis paralysis
- **Build with confidence** - Validate technical decisions without a team
- **Stay lean** - Avoid over-engineering and unnecessary complexity
- **Focus on what matters** - Prioritize features that drive revenue and traction

## Example Use Cases

- Getting a quick audit before launching a new feature
- Generating marketing content from development progress
- Making pragmatic technical decisions without overthinking
- Setting up monitoring and error tracking efficiently
- Validating pricing and go-to-market strategies
- Optimizing cloud costs and infrastructure spend
- Understanding when "good enough" is actually good enough
- Building and optimizing landing pages for conversion
- Getting CRO feedback on copy and page structure
- Setting up lean analytics and conversion tracking

## Philosophy

This toolkit embraces the solo founder mindset: ship fast, iterate quickly, and focus on revenue. It's opinionated about pragmatic tradeoffs and designed to help you build profitably without a team.

**Important**: This toolkit assumes indie hackers already have their tech stack chosen. We're not here to debate React vs Vue or Postgres vs MongoDB. Instead, we focus on:
- **WHAT to build** - Which features drive revenue vs nice-to-haves
- **HOW to build it** - Implementation approach, scope, and tradeoffs
- **WHEN to ship** - Balancing quality with speed to market

Only provide tech stack advice when explicitly asked. Solo founders know their tools.

## Out of Scope

This toolkit intentionally does NOT cover:
- **Roadmap planning and management** - This is a solved problem with many excellent tools (Linear, GitHub Projects, Notion, etc.). Use existing solutions instead of building custom roadmap tooling.

## Naming Convention

All commands, skills, agents, hooks, and other features should be prefixed with `solo-*` for clear differentiation and easy discovery (e.g., `/solo-audit`, `solo-launch`, `solo-pricing`).

## Available Features

### Commands

- `/create-plugin [description]` - Guided end-to-end plugin creation workflow with component design, implementation, and validation

### Skills

These skills provide specialized knowledge and guidance:

- **agent-development** - Use when creating agents for plugins. Covers agent structure, system prompts, triggering conditions, and best practices
- **command-development** - Use when creating slash commands. Covers frontmatter, arguments, bash execution, and interactive patterns
- **hook-development** - Use when creating hooks for event-driven automation. Covers PreToolUse, PostToolUse, Stop hooks, and prompt-based patterns
- **mcp-integration** - Use when integrating Model Context Protocol servers for external tools and services
- **plugin-settings** - Use when adding user-configurable settings via `.local.md` files with YAML frontmatter
- **plugin-structure** - Use when scaffolding plugins or understanding directory layout and manifest configuration
- **skill-development** - Use when creating skills with progressive disclosure, references, and examples

### Agents

These specialized agents help automate plugin development tasks:

- **agent-creator** - Creates agent configurations from user requirements. Generates identifier, triggering examples, and system prompts
- **plugin-validator** - Validates plugin structure, manifest, components, naming, and security. Provides comprehensive validation reports
- **skill-reviewer** - Reviews skill quality including description triggering, progressive disclosure, and best practices adherence
