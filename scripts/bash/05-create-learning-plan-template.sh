#!/usr/bin/env bash

##############################################################################
# Career System
# Chapter 05: Create Learning Plan Template
##############################################################################

set -euo pipefail

TEMPLATE_DIR="data/templates"
RESULTS_DIR="results/learning-plan"

mkdir -p "$TEMPLATE_DIR" "$RESULTS_DIR"

TEMPLATE_FILE="$TEMPLATE_DIR/learning-plan-template.csv"
EXAMPLE_FILE="$RESULTS_DIR/example-learning-plan.csv"
README_FILE="$RESULTS_DIR/README-learning-plan.md"

cat > "$TEMPLATE_FILE" <<'CSV'
learning_id,career_direction,skill_gap,priority_level,learning_objective,resource_or_activity,practice_task,portfolio_evidence,support_needed,time_budget_per_week,target_completion_date,review_method,status
LP-001,,,,,,,,,,,,Planned
LP-002,,,,,,,,,,,,Planned
LP-003,,,,,,,,,,,,Planned
LP-004,,,,,,,,,,,,Hold
LP-005,,,,,,,,,,,,Hold
CSV

cat > "$EXAMPLE_FILE" <<'CSV'
learning_id,career_direction,skill_gap,priority_level,learning_objective,resource_or_activity,practice_task,portfolio_evidence,support_needed,time_budget_per_week,target_completion_date,review_method,status
LP-001,Data analyst,SQL basics,High,"Understand SELECT, WHERE, GROUP BY, JOIN, and simple aggregation","Complete one beginner SQL tutorial and practice with a small public dataset","Write five queries that answer practical questions from the dataset","SQL file, result tables, and a short README explaining the questions and answers","Mentor or peer review of query clarity",4 hours,End of month,"Review completed queries and explanation with mentor",Planned
LP-002,Data analyst,Dashboard communication,Medium,"Create one simple dashboard that communicates three useful findings","Study one dashboard example and sketch a simple layout","Build a one-page dashboard from a cleaned dataset","Dashboard screenshot, source file, and interpretation note","Feedback from a data or project mentor",3 hours,Next month,"Check whether the dashboard answers a clear user question",Planned
LP-003,Clinical data coordinator,Data quality workflows,High,"Understand basic checks for missing values, duplicate records, and inconsistent entries","Read an introductory data quality checklist and inspect a sample spreadsheet","Create a mock data quality checklist for a small clinical-style table","Checklist, flagged issue table, and short quality summary","Review from health data or research coordinator",3 hours,End of month,"Compare checklist against mentor feedback",Planned
CSV

cat > "$README_FILE" <<'MD'
# Learning Plan Outputs

This folder contains starter outputs for Chapter 05 of the Career System guide.

## Files

- `data/templates/learning-plan-template.csv` — blank learning plan template
- `results/learning-plan/example-learning-plan.csv` — completed example learning plan

## How to Use

1. Choose one career direction from the career direction map.
2. Identify three to five important skill gaps.
3. Convert each gap into a specific learning objective.
4. Define a practice task for each learning objective.
5. Define the portfolio evidence that will be created.
6. Add support needed, time budget, target completion date, and review method.
7. Update the status as `Planned`, `In progress`, `Completed`, `Hold`, or `Dropped`.

## Learning Principle

A learning plan should not only list what the learner will consume. It should define what the learner will practice, produce, document, and review.
MD

printf "\nCareer System: Learning Plan Template Created\n"
printf "Template: %s\n" "$TEMPLATE_FILE"
printf "Example:  %s\n" "$EXAMPLE_FILE"
printf "README:   %s\n\n" "$README_FILE"
