#!/usr/bin/env bash

##############################################################################
# Career System
# Chapter 06: Create Portfolio Building Template
##############################################################################

set -euo pipefail

TEMPLATE_DIR="data/templates"
RESULTS_DIR="results/portfolio-building"

mkdir -p "$TEMPLATE_DIR" "$RESULTS_DIR"

TEMPLATE_FILE="$TEMPLATE_DIR/portfolio-building-template.csv"
EXAMPLE_FILE="$RESULTS_DIR/example-portfolio-building.csv"
README_FILE="$RESULTS_DIR/README-portfolio-building.md"

cat > "$TEMPLATE_FILE" <<'CSV'
portfolio_item_id,career_direction,portfolio_category,item_title,evidence_type,problem_or_context,skills_demonstrated,artifact_location,short_description,audience,review_status,improvement_needed,visibility_status,next_action
PF-001,,,,,,,,,,,,Private draft,
PF-002,,,,,,,,,,,,Private draft,
PF-003,,,,,,,,,,,,Private draft,
PF-004,,,,,,,,,,,,Hold,
PF-005,,,,,,,,,,,,Hold,
CSV

cat > "$EXAMPLE_FILE" <<'CSV'
portfolio_item_id,career_direction,portfolio_category,item_title,evidence_type,problem_or_context,skills_demonstrated,artifact_location,short_description,audience,review_status,improvement_needed,visibility_status,next_action
PF-001,Data analyst,Technical evidence,Cleaned and summarized public health dataset,Project report,A messy spreadsheet needed cleaning and summary before analysis,"Data cleaning, missing value checks, summary tables, written interpretation",portfolio/data-cleaning-public-health/,A small project showing how raw tabular data can be checked cleaned summarized and explained,"Mentor, hiring manager, peer reviewer",Needs mentor review,Add clearer README and one visualization,Private draft,Request feedback and revise README
PF-002,Data analyst,Communication evidence,One-page explanation of data quality checks,Writing sample,A non-technical audience needs to understand why data quality checks matter,"Plain-language explanation, structure, audience awareness",portfolio/writing/data-quality-explainer.md,A short explanation that translates technical quality checks into practical decision language,"Mentor, non-technical stakeholder",Draft complete,Reduce jargon and add one example,Shared with mentor,Revise after mentor feedback
PF-003,Project coordinator,Professional readiness evidence,Career direction profile,Profile summary,A learner needs a clear professional summary for mentorship and opportunity conversations,"Career framing, self-presentation, concise writing",portfolio/profile/career-direction-summary.md,A short profile connecting interests strengths learning goals and target opportunities,"Mentor, recruiter, program lead",Needs review,Make the target role more specific,Private draft,Update with stronger role language
CSV

cat > "$README_FILE" <<'MD'
# Portfolio Building Outputs

This folder contains starter outputs for Chapter 06 of the Career System guide.

## Files

- `data/templates/portfolio-building-template.csv` — blank portfolio item tracker
- `results/portfolio-building/example-portfolio-building.csv` — completed example portfolio tracker

## How to Use

1. Choose one career direction from the career direction map.
2. List possible portfolio items that support that direction.
3. Assign each item to a portfolio category.
4. Describe the problem or context behind the item.
5. Record the skills demonstrated.
6. Add the artifact location.
7. Define the audience and review status.
8. Decide whether each item is private, shared, or public.
9. Choose the next action for improvement.

## Portfolio Principle

A portfolio is not a storage folder. It is a structured evidence system that helps learners show what they can do, explain how they think, and create stronger career conversations.
MD

printf "\nCareer System: Portfolio Building Template Created\n"
printf "Template: %s\n" "$TEMPLATE_FILE"
printf "Example:  %s\n" "$EXAMPLE_FILE"
printf "README:   %s\n\n" "$README_FILE"
