# Solo Founder Toolkit - Plugin Documentation

Detailed documentation for the Solo Founder Toolkit Claude Code plugin.

## Commands

### `/solo-build-in-public-tweet`
Generates 3-5 tweet ideas from recent commits for indie hacker Twitter. Analyzes last 10-15 commits and emulates the style of @levelsio and prominent builders.

### `/solo-feature-ideas`
Analyzes codebase and pitches features using LIC framework (Lift, Impact, Conviction). Identifies 3-5 high-impact feature opportunities.

## Skills

### solo-decision-framework
Helps solo founders make quick product decisions without overthinking using the LIC Rubric (Lift, Impact, Conviction). Scores options out of 15 points each with decision recommendation.

**Trigger:** "decide what to build", "prioritize features", "choose an approach", "evaluate options"

### solo-landing-page
Framework for creating and optimizing landing pages for conversion. Uses 6 Conversion Pillars (first impression, messaging, social proof, CTAs, structure, solo founder readiness).

**Trigger:** "review my landing page", "create a landing page", "optimize landing page", "landing page CRO"

## Agents

### solo-landing-page-review
Analyzes landing pages through 6 Conversion Pillars and provides structured CRO feedback.

**Triggers on:** Landing page creation/review/optimization requests

## Hooks

### Auto-Documentation System

Automatically tracks metrics and user feedback mentioned in your conversations with Claude Code. No manual bookkeeping required - just talk naturally about your product progress.

**How it works:**
1. Mention actual metrics or user feedback in conversation
2. Hook detects concrete data (ignores hypotheticals and planning)
3. Files are automatically created/updated in `docs/metrics/` and `docs/user-feedback/`
4. Review and commit changes as part of your normal git workflow

**What gets tracked:**

- **Metrics** (`docs/metrics/`):
  - Revenue: MRR, ARR, pricing changes, milestones
  - Growth: MAU, DAU, signups, conversion rates
  - Engagement: Feature usage, activation rates
  - Churn: Retention, cancellation reasons

- **User Feedback** (`docs/user-feedback/`):
  - Direct user quotes and feature requests
  - Bug reports from users
  - Testimonials and compliments
  - Churn reasons and usability complaints

**Smart Detection** - The system distinguishes between actual data and planning:

| Logged | Ignored |
|--------|---------|
| "We hit $5k MRR!" | "Let's aim for $10k MRR" |
| "User complained dashboard is slow" | "We should track MAU better" |
| "Conversion rate jumped to 12%" | "Users might want dark mode" |

### File Organization

**Metrics** - Category-based files:
- `docs/metrics/revenue.md` - All revenue-related metrics
- `docs/metrics/growth.md` - User growth and conversion metrics
- `docs/metrics/engagement.md` - Feature usage and activation
- `docs/metrics/churn.md` - Retention and cancellations

**User Feedback** - Topic-based files:
- `docs/user-feedback/csv-export-requests.md` - Related feedback grouped together
- `docs/user-feedback/dashboard-performance.md` - Performance complaints
- Files created dynamically based on feedback topic

### Privacy Notes

- All files are created in your git repository
- Review docs before committing to avoid logging sensitive data
- Optional: Add `docs/metrics/` and `docs/user-feedback/` to `.gitignore` if preferred
