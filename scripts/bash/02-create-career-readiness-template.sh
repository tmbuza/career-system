#!/usr/bin/env bash
set -euo pipefail

mkdir -p data/templates results/career-readiness

cat > data/templates/career-readiness-self-assessment.csv <<'CSV'
readiness_area,guiding_question,score_1_to_5,current_evidence,next_action
Career Direction,Can I clearly explain where I am trying to grow?,,,
Skills and Knowledge,Can I list and demonstrate relevant skills?,,,
Portfolio Evidence,Do I have visible proof of applied work?,,,
Professional Communication,Can I explain my value clearly?,,,
Mentorship,Do I have people who can guide or advise me?,,,
Network Support,Am I visible to people connected to opportunities?,,,
Job-Market Readiness,Are my CV profile and examples ready to share?,,,
Interview Readiness,Can I discuss my work and learning journey confidently?,,,
Consistency,Do I have a routine for growth and improvement?,,,
Resilience,Can I adapt when plans change or opportunities fail?,,,
CSV

cat > results/career-readiness/README-career-readiness.md <<'MD'
# Career Readiness Outputs

This folder is used for outputs from Chapter 02: Career Readiness.

Start by completing:

```text
data/templates/career-readiness-self-assessment.csv
```

Suggested scoring:

```text
1 = not started
2 = started but weak
3 = developing
4 = strong enough to use
5 = strong and visible
```

After completing the template, identify the two lowest scoring areas and choose one next action for each.
MD

echo "Created data/templates/career-readiness-self-assessment.csv"
echo "Created results/career-readiness/README-career-readiness.md"
