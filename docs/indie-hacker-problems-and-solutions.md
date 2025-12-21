# Indie Hacker Plugin - Problems & Solutions

## Core Problem Areas

### 1. **Shipping Fast / Velocity**
- Analysis paralysis (too many tech choices)
- Over-engineering for scale they don't have yet
- Perfectionism preventing launches
- Context switching between dev/ops/marketing
- Decision fatigue on minor details
- Scope creep and feature bloat
- Yak shaving (fixing things that don't matter)

### 2. **Production Validation / Technical Confidence**
- "Is this ready to show users?" uncertainty
- Security vulnerabilities they might miss
- Performance issues they won't catch until scale
- Missing error handling/monitoring
- Incomplete edge case coverage
- Not knowing what "good enough" looks like
- Deploy anxiety

### 3. **Marketing / Growth**
- Don't know where to distribute
- Weak copywriting skills
- SEO knowledge gaps
- Building in public but don't know what to share
- Analytics setup/interpretation
- No time for content marketing
- Landing page conversion issues

### 4. **Business / Strategy**
- Pricing uncertainty (imposter syndrome pricing)
- Which metrics actually matter
- When to pivot vs persevere
- Feature prioritization (customer requests vs vision)
- Time management (what to work on today?)
- Competitor awareness
- Revenue diversification

### 5. **Legal / Compliance**
- Privacy policies, terms of service
- GDPR, CCPA compliance
- Tax implications (stripe/payment processing)
- Entity formation questions
- Copyright/licensing confusion
- Cookie consent requirements

### 6. **Cost Management**
- Cloud cost optimization
- Tool sprawl (paying for unused SaaS)
- Hidden costs in tech decisions
- Free tier maximization
- When to pay for vs build tools

### 7. **Technical Debt vs Speed**
- When to refactor vs ship
- Which shortcuts are okay
- Database migration anxiety
- Testing coverage tradeoffs
- Documentation vs building

### 8. **Loneliness / Decision Making**
- No team to bounce ideas off
- Imposter syndrome
- Motivation during slow periods
- Accountability gaps
- Learning in public fears

## Plugin Ideas Mapped to Problems

### For Shipping Fast:
- **mvp-scope agent** - Reviews PRs/features and flags over-engineering
- **decision-maker command** - Quick frameworks for tech decisions (uses simple rubric)
- **yak-shave-detector hook** - Warns when you're 3+ levels deep from main goal
- **time-box skill** - Helps estimate and enforce time limits on tasks
- **/good-enough** - Evaluates if current state meets launch bar

### For Production Validation:
- **pre-launch-audit agent** - Security, performance, SEO, analytics checklist
- **indie-hacker-tests skill** - Pragmatic testing strategy for solos
- **/security-check** - Quick security audit (env vars, auth, rate limiting, etc.)
- **/monitor-setup** - Sets up error tracking, uptime monitoring, basic alerts
- **deploy-confidence hook** - Pre-deploy checklist based on changes

### For Marketing:
- **build-in-public agent** - Turns commits/progress into social content
- **landing-page-review agent** - CRO feedback on copy and structure
- **/launch-where** - Suggests distribution channels for product type
- **seo-audit skill** - Page-by-page SEO recommendations
- **/generate-meta** - Creates meta descriptions, og:images, titles
- **changelog-writer agent** - Turns commits into customer-friendly updates

### For Business/Strategy:
- **metric-dashboard command** - Connects to Stripe/analytics, shows what matters
- **/pricing-research** - Competitor analysis + recommendation
- **feature-prioritization agent** - Scores feature requests against strategy
- **/pivot-or-persevere** - Framework for making hard decisions
- **weekly-review skill** - Reflective questions about progress and direction

### For Legal/Compliance:
- **legal-basics agent** - Generates privacy policy, ToS, cookie consent
- **/gdpr-check** - Audits for compliance issues
- **/payment-setup** - Stripe webhook handling, tax setup guidance

### For Cost Management:
- **cost-optimizer agent** - Reviews infrastructure for savings
- **/bill-forecast** - Estimates monthly costs from current setup
- **free-tier-maximizer skill** - Suggests free alternatives and optimizations

### For Technical Debt:
- **refactor-or-ship hook** - When you touch old code, asks if refactor is necessary now
- **/debt-audit** - Maps technical debt and suggests prioritization
- **quick-win-finder agent** - Identifies high-impact, low-effort improvements

### For Loneliness/Decisions:
- **rubber-duck agent** - Structured questioning to think through problems
- **/milestone-celebrate** - Acknowledges wins (integrates with commits/launches)
- **accountability-buddy hook** - Daily/weekly check-ins on goals

## Highest Leverage Ideas

If I had to pick the **top 5 most impactful** for indie hackers:

1. **mvp-scope agent** - Prevents over-engineering (biggest time waster)
2. **/launch-where** - Solves "built it but no one knows" problem
3. **pre-launch-audit agent** - Builds confidence to ship
4. **build-in-public agent** - Makes marketing automatic while coding
5. **cost-optimizer agent** - Protects runway
