---
description: Analyze codebase and pitch feature ideas using the LIC decision framework
---

Analyze the codebase to identify 3-5 high-impact feature opportunities that users will deeply care about. Use the **solo-decision-framework** skill to evaluate each feature with the LIC rubric (Lift, Impact, Conviction). Present features ranked by score.

## Analysis Steps

### 1. Understand the Product

Read key files to understand what this product does:
- README, documentation, or marketing copy
- Main application files (entry points, core logic)
- Data models (what user data is stored tells you what the product does)
- Configuration files reveal tech stack and integrations

Answer:
- What problem does this solve for users?
- Who is the target user and what do they care about?
- What's the core user workflow?
- How does this make money (or plan to)?

### 2. Find Sources of User Insight

Look for evidence of what users actually want:

**Documentation sources:**
- README roadmap or future plans
- CHANGELOG for recent priorities
- Issue templates or contributing guides
- Product documentation gaps

**User feedback sources:**
- GitHub issues (open and closed)
- TODO/FIXME comments mentioning user requests
- Support-related code comments
- Feature flags or A/B tests in progress

**Metrics and analytics:**
- Analytics events being tracked (what's measured = what matters)
- Conversion funnels in code
- Error tracking and monitoring
- Performance monitoring focus areas

**Business signals:**
- Pricing tiers and what unlocks them
- Onboarding flow structure
- Email templates (what communication exists?)
- Integration points (what tools do users connect?)

### 3. Identify User-Centered Opportunities

Focus on features users will deeply value, not technical improvements.

Ask yourself:
- What user pain point does this solve?
- What prevents users from getting value faster?
- What stops users from inviting others or paying more?
- What makes users churn or get frustrated?
- What do competitors offer that this doesn't?

Generate 3-5 **specific, user-focused features**:
- Not "refactor exports" → "Let users export to Excel so they can share with their team"
- Not "add OAuth" → "Let users sign in with Google so onboarding is faster"
- Not "improve notifications" → "Send users weekly summaries so they stay engaged"

### 4. Evaluate with LIC Rubric

Use the **solo-decision-framework** skill to score each feature.

Reference the skill's rubric:
- 🏋️ **Lift** (1-5): Implementation effort
- 💥 **Impact** (1-5): User and business value
- 🎯 **Conviction** (1-5): Confidence in the impact

Consider:
- **Lift**: How much code exists already? Can you build on existing patterns?
- **Impact**: Does this drive sign-ups, retention, revenue, or referrals?
- **Conviction**: Is there evidence users want this? GitHub issues, TODOs, competitor analysis?

### 5. Rank Features

Sort by total LIC score (max 15), highest to lowest. Present as ranked list of possibilities.

## Output Format

```markdown
# Feature Ideas for [Product Name]

## Product Context
[2-3 sentences: what the product does, who uses it, what they care about]

---

## Ranked Feature Ideas
[Sorted by LIC score, highest to lowest]

### 1. [User-Facing Feature Name] - Score: X/15

**What:** [1-2 sentences from the user's perspective - what can they do that they can't today?]

**Why users care:** [How does this solve a user problem or delight them?]

**LIC Breakdown:**
- 🏋️ Lift: X/5 - [effort estimate based on existing code patterns]
- 💥 Impact: X/5 - [user value + business value reasoning]
- 🎯 Conviction: X/5 - [evidence: user requests, competitor analysis, metrics, logic]

**Evidence:** [What you found - GitHub issues, TODOs, analytics events, missing features]

**First step:** [Concrete next action to validate or start building]

---

### 2. [Feature Name] - Score: X/15

[Same format]

---

### 3. [Feature Name] - Score: X/15

[Same format]

---

[Continue for all features, ranked by score]

```

## Principles

**User-focused thinking:**
- Features should solve user problems, not technical problems
- Think about what users complain about or wish they could do
- Consider onboarding, conversion, retention, referral impacts
- Avoid recommendations that only matter to developers

**Evidence-driven:**
- Prioritize features with user requests or competitive validation
- Low conviction = need to validate before building
- Look for patterns in issues, TODOs, and metrics

**Solo founder pragmatic:**
- Quick wins that drive revenue beat long projects
- "Good enough" that ships beats perfect that doesn't
- Features that unlock pricing/growth > polish features
- Time is the constraint - every hour counts

**Product over tech:**
- Not "add caching layer" → "Let users export to Excel"
- Not "implement OAuth flow" → "Let users sign in with Google"
- Not "build notification system" → "Send users weekly activity summaries"

Begin analysis now.
