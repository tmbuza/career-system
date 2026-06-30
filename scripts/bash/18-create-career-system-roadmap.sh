#!/usr/bin/env bash

set -euo pipefail

mkdir -p data/templates results/career-system-roadmap

cat > data/templates/career-system-roadmap-template.csv <<'CSV'
horizon,focus_area,priority_action,evidence_output,feedback_source,review_date,status,notes
30_days,career_readiness,complete readiness self-assessment,career-readiness-summary,self-review,YYYY-MM-DD,planned,
30_days,skills_inventory,identify showable and missing skills,skills-inventory-table,self-review,YYYY-MM-DD,planned,
30_days,career_direction,select one or two realistic target pathways,career-direction-map,mentor,YYYY-MM-DD,planned,
30_days,learning_plan,choose focused learning priorities,learning-plan,mentor,YYYY-MM-DD,planned,
90_days,portfolio,complete one documented portfolio project,portfolio-case-study,mentor,YYYY-MM-DD,planned,
90_days,project_proof,turn project into visible proof,project-proof-summary,peer-review,YYYY-MM-DD,planned,
90_days,visibility,share one professional learning update,visibility-log,mentor,YYYY-MM-DD,planned,
90_days,networking,request feedback from three relevant people,mentorship-contact-log,mentor,YYYY-MM-DD,planned,
12_months,job_market,build opportunity pipeline,opportunity-tracker,mentor,YYYY-MM-DD,planned,
12_months,workplace_performance,track results and trust-building evidence,performance-log,supervisor-or-mentor,YYYY-MM-DD,planned,
12_months,resilience,identify backup and diversification options,resilience-map,self-review,YYYY-MM-DD,planned,
12_months,opportunity_design,connect skills to income and growth options,opportunity-design-map,mentor,YYYY-MM-DD,planned,
CSV

cat > results/career-system-roadmap/example-career-system-roadmap.csv <<'CSV'
horizon,focus_area,priority_action,evidence_output,feedback_source,review_date,status,notes
30_days,career_readiness,complete readiness self-assessment,career-readiness-summary,self-review,2026-07-15,in_progress,Strong motivation but needs clearer proof
30_days,skills_inventory,separate showable skills from learning gaps,skills-inventory-table,self-review,2026-07-15,in_progress,Data cleaning and reporting are showable
30_days,career_direction,compare data support and program analyst pathways,career-direction-map,mentor,2026-07-20,planned,Use market signals to choose priority
90_days,portfolio,complete one practical reporting project,portfolio-case-study,mentor,2026-09-30,planned,Document problem process output and reflection
90_days,visibility,share two learning posts and one project summary,visibility-log,peer-review,2026-09-30,planned,Keep tone practical and evidence-based
12_months,opportunity_design,build pipeline of roles freelance options and mentorship leads,opportunity-design-map,mentor,2027-06-30,planned,Review every quarter
CSV

cat > results/career-system-roadmap/README-career-system-roadmap.md <<'MD'
# Career System Roadmap Outputs

This folder contains example outputs for Chapter 18: Career System Roadmap.

## Files

- `example-career-system-roadmap.csv` — a sample roadmap showing 30-day, 90-day, and 12-month career growth actions.

## Template

The reusable blank template is available at:

- `data/templates/career-system-roadmap-template.csv`

## How to Use

Use the roadmap to connect career readiness, skills, learning, portfolio evidence, visibility, mentorship, opportunity design, workplace performance, and resilience into one reviewable plan.

Recommended review rhythm:

- Weekly: update status and next action.
- Monthly: review evidence created and feedback received.
- Quarterly: revise direction and opportunity strategy.
MD

echo "Career System Roadmap template created."
echo "Outputs:"
echo "- data/templates/career-system-roadmap-template.csv"
echo "- results/career-system-roadmap/example-career-system-roadmap.csv"
echo "- results/career-system-roadmap/README-career-system-roadmap.md"
