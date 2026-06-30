#!/usr/bin/env bash

##############################################################################
# Career System
# Chapter 03: Create Skills Inventory Template
##############################################################################

set -euo pipefail

TEMPLATE_DIR="data/templates"
RESULTS_DIR="results/skills-inventory"

mkdir -p "$TEMPLATE_DIR" "$RESULTS_DIR"

TEMPLATE_FILE="$TEMPLATE_DIR/skills-inventory-template.csv"
EXAMPLE_FILE="$RESULTS_DIR/example-skills-inventory.csv"
README_FILE="$RESULTS_DIR/README-skills-inventory.md"

cat > "$TEMPLATE_FILE" <<'CSV'
skill_id,skill_name,skill_category,current_level,evidence_type,evidence_description,evidence_link,confidence_score,career_relevance,next_action,reviewer_feedback
SKILL-001,,,,,,,,,,
SKILL-002,,,,,,,,,,
SKILL-003,,,,,,,,,,
SKILL-004,,,,,,,,,,
SKILL-005,,,,,,,,,,
CSV

cat > "$EXAMPLE_FILE" <<'CSV'
skill_id,skill_name,skill_category,current_level,evidence_type,evidence_description,evidence_link,confidence_score,career_relevance,next_action,reviewer_feedback
SKILL-001,Data cleaning with R,Technical skills,3,Project,"Cleaned a public CSV dataset, handled missing values, summarized variables, and exported a tidy results table.",https://github.com/example/data-cleaning-project,3,High,"Build a second project using a messier dataset and document each cleaning decision.","Add clearer comments explaining why each cleaning decision was made."
SKILL-002,Professional communication,Communication skills,3,Report,"Wrote a short project summary explaining the question, method, result, and recommendation.",,3,High,"Turn the report into a one-page portfolio case study.","Make the recommendation more specific to the target audience."
SKILL-003,Time planning,Professional operating skills,2,Personal workflow,"Created a weekly plan with learning blocks, project work, and review time.",,2,Medium,"Use the plan for four weeks and record what was completed.","Add a weekly reflection section."
CSV

cat > "$README_FILE" <<'MD'
# Skills Inventory Outputs

This folder contains starter outputs for Chapter 03 of the Career System guide.

## Files

- `data/templates/skills-inventory-template.csv` — blank skills inventory template
- `results/skills-inventory/example-skills-inventory.csv` — completed example inventory

## How to Use

1. Copy the template.
2. Add one row for each skill.
3. Classify each skill by category.
4. Add a current level from 1 to 5.
5. Connect each skill to evidence.
6. Add one next action for improving or proving the skill.

## Skill Level Scale

1. Aware
2. Practicing
3. Functional
4. Reliable
5. Leading

## Core Principle

A skill becomes career-useful when it can be seen, explained, reviewed, and improved.
MD

printf "\nCareer System: Skills Inventory Template Created\n"
printf "Template: %s\n" "$TEMPLATE_FILE"
printf "Example:  %s\n" "$EXAMPLE_FILE"
printf "README:   %s\n\n" "$README_FILE"
