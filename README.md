# Solo Founder Toolkit

A Claude Code plugin that helps indie hackers stop overthinking and start shipping. Instead of getting lost in the engineering weeds, this toolkit keeps you focused on what actually moves the needle: revenue, users, and shipping.

## What's Included

### Commands

| Command | What It Does |
|---------|--------------|
| `/solo-feature-ideas` | Analyzes your codebase and generates 3-5 prioritized feature ideas scored with the LIC framework (Lift/Impact/Conviction). Helps you decide what to build next based on evidence, not gut feeling. |
| `/solo-validate-idea` | Validates any product idea or feature against common solo founder anti-patterns. Calculates a Solo Founder Risk Index (SFRI) score and tells you whether to ship it, simplify it, or kill it. |
| `/solo-build-in-public-tweet` | Reads your last 10-15 commits and generates 3-5 tweet ideas in the @levelsio style. Turn your shipping activity into marketing without extra work. |

### Agents

| Agent | Trigger | What It Does |
|-------|---------|--------------|
| Landing Page Reviewer | "review my landing page", "optimize my landing page", sharing a URL | Automatically fetches your landing page and provides structured CRO feedback using a 6 Conversion Pillars framework. Gives you critical issues, quick wins, and specific copy rewrites. |

### Skills (Background Knowledge)

These skills are automatically used when relevant:

- **solo-decision-framework** - The LIC Rubric (Lift/Impact/Conviction) for making quick decisions about what to build
- **solo-landing-page** - 6 Conversion Pillars framework for creating and optimizing landing pages that convert
- **solo-founder-anti-patterns** - Common failure patterns (Indie Hacker Bubble, Infrastructure Sophistication Trap, 95% Ready Trap, etc.) and how to avoid them

## Philosophy

We don't debate tech stacks. You already know your tools.

We focus on what solo founders actually struggle with:
- **WHAT to build** - Which features drive revenue vs nice-to-haves
- **HOW to scope it** - Ship the 80% solution, not the 100% solution
- **WHEN to ship** - Good enough today beats perfect next month

This toolkit is opinionated. It favors speed over polish, revenue over vanity metrics, and shipping over planning.

## Installation

1. Start a Claude Code session
2. Run `/plugins`
3. Select "Add from marketplace"
4. Paste: `https://github.com/ericvtheg/solo-founder-toolkit`
5. Select the `solo-founder-toolkit` plugin

## Quick Start

```
/solo-feature-ideas
```
Get prioritized feature suggestions for your codebase, scored by effort and impact.

```
/solo-validate-idea "add a free tier to get more users"
```
Validate whether an idea is worth building or a trap.

```
/solo-build-in-public-tweet
```
Generate tweet ideas from your recent commits.

## Who This Is For

- Solo founders building and launching products independently
- Indie hackers focused on rapid iteration and revenue
- Small teams that need to move fast without over-engineering
- Bootstrapped builders who wear multiple hats

## Who This Is NOT For

- Teams with dedicated PMs, designers, and marketing departments
- Enterprises that need committee approval for every decision
- Builders who prefer to plan for months before writing code

---

**Ship fast. Iterate faster. Build profitably.**

[Report Issues](https://github.com/ericvtheg/solo-founder-toolkit/issues) · [Contribute](https://github.com/ericvtheg/solo-founder-toolkit)
