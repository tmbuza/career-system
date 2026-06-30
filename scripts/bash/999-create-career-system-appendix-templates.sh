#!/usr/bin/env bash
set -euo pipefail

##############################################################################
# Career System Appendix Templates
#
# Creates reusable appendix templates and review tools for the CDI Career System.
# Run from the project root:
#
#   bash scripts/bash/999-create-career-system-appendix-templates.sh
##############################################################################

mkdir -p data/templates results/appendix portfolio/project-summaries portfolio/cv-profile portfolio/evidence

cat > data/templates/career-system-master-template-index.csv <<'CSV'
template_name,chapter,primary_use,typical_output_location
career-readiness-self-assessment,02-career-readiness,assess starting point,results/career-readiness/
skills-inventory,03-skills-inventory,map skills and evidence,results/skills-inventory/
career-direction-map,04-career-direction,compare target pathways,results/career-direction/
learning-plan,05-learning-plan,connect learning to output,results/learning-plan/
portfolio-evidence-tracker,06-portfolio-building,track proof artifacts,results/portfolio-building/
project-based-proof,07-project-based-proof,structure a project artifact,results/project-based-proof/
communication-visibility-log,08-communication-and-visibility,track public and professional communication,results/communication-visibility/
networking-mentorship-map,09-networking-and-mentorship,plan feedback conversations,results/networking-mentorship/
job-market-readiness-tracker,10-job-market-readiness,compare real roles with current evidence,results/job-market-readiness/
cv-linkedin-profile-review,11-cv-linkedin-and-profile,improve professional profile,results/cv-linkedin-profile/
interview-conversation-prep,12-interviews-and-career-conversations,prepare evidence-based answers,results/interview-conversations/
workplace-performance-log,13-workplace-performance,record delivery and trust evidence,results/workplace-performance/
career-resilience-map,14-career-resilience-and-diversification,map risks and backup options,results/career-resilience/
personal-operating-system,15-personal-operating-system,maintain weekly routines,results/personal-operating-system/
opportunity-design-map,16-income-growth-and-opportunity-design,design role or income pathways,results/opportunity-design/
career-system-roadmap,18-career-system-roadmap,plan 30-day 90-day and 12-month actions,results/career-system-roadmap/
CSV

cat > results/appendix/career-system-mentor-review-checklist.csv <<'CSV'
review_area,review_question,status,notes,next_action
starting_point,Does the learner have a clear starting point?,not_reviewed,,
direction,Does the learner have one or two realistic target directions?,not_reviewed,,
skills,Does the learner have a skills inventory?,not_reviewed,,
evidence,Does the learner have visible proof of at least one skill?,not_reviewed,,
portfolio,Is the portfolio understandable to an external reader?,not_reviewed,,
profile,Does the CV or profile match the target direction?,not_reviewed,,
communication,Can the learner explain their work clearly?,not_reviewed,,
feedback,Has the learner received feedback from at least one person?,not_reviewed,,
action_plan,Does the learner have a short-term action plan?,not_reviewed,,
resilience,Does the learner have a resilience or backup plan?,not_reviewed,,
CSV

cat > results/appendix/career-system-weekly-review-template.csv <<'CSV'
week_start,week_end,what_i_learned,proof_created_or_improved,feedback_or_conversation,opportunity_action,next_action
YYYY-MM-DD,YYYY-MM-DD,,,,,
CSV

cat > results/appendix/career-system-output-folder-map.csv <<'CSV'
folder,purpose
results/career-readiness,career readiness assessment outputs
results/skills-inventory,skills inventory outputs
results/career-direction,career direction maps
results/learning-plan,learning plan outputs
results/portfolio-building,portfolio evidence tracking outputs
results/project-based-proof,project proof outputs
results/communication-visibility,visibility and communication logs
results/networking-mentorship,networking and mentorship maps
results/job-market-readiness,job market readiness trackers
results/cv-linkedin-profile,CV LinkedIn and profile review outputs
results/interview-conversations,interview preparation outputs
results/workplace-performance,workplace performance logs
results/career-resilience,resilience and diversification maps
results/personal-operating-system,personal operating system routines
results/opportunity-design,opportunity design maps
results/career-system-roadmap,career system roadmap outputs
portfolio/project-summaries,public or shareable project summaries
portfolio/cv-profile,CV profile and professional summary materials
portfolio/evidence,selected artifacts that support career claims
CSV

cat > results/appendix/README-career-system-appendix.md <<'MD'
# Career System Appendix Outputs

This folder contains reusable review tools for the CDI Career System.

## Files

- `career-system-mentor-review-checklist.csv`: mentor or coach review checklist.
- `career-system-weekly-review-template.csv`: weekly learner reflection template.
- `career-system-output-folder-map.csv`: recommended folder map for career system outputs.

The master template index is written to:

```text
data/templates/career-system-master-template-index.csv
```

## Suggested workflow

Use the appendix tools after completing the main Career System chapters.

A learner can review the roadmap weekly, update evidence monthly, and revisit career direction every 90 days.
MD

printf '\nCareer System appendix templates created.\n'
printf 'Outputs:\n'
printf '  data/templates/career-system-master-template-index.csv\n'
printf '  results/appendix/career-system-mentor-review-checklist.csv\n'
printf '  results/appendix/career-system-weekly-review-template.csv\n'
printf '  results/appendix/career-system-output-folder-map.csv\n'
printf '  results/appendix/README-career-system-appendix.md\n'
