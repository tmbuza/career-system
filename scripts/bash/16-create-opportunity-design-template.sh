#!/usr/bin/env bash

##############################################################################
# Career System
# Chapter 16: Create Opportunity Design Template
##############################################################################

set -euo pipefail

TEMPLATE_DIR="data/templates"
RESULTS_DIR="results/opportunity-design"

mkdir -p "$TEMPLATE_DIR" "$RESULTS_DIR"

TEMPLATE_FILE="$TEMPLATE_DIR/opportunity-design-template.csv"
EXAMPLE_FILE="$RESULTS_DIR/example-opportunity-design-map.csv"
README_FILE="$RESULTS_DIR/README-opportunity-design.md"

cat > "$TEMPLATE_FILE" <<'CSV'
opportunity_id,opportunity_type,career_stage,capability,problem_or_need,target_person_or_organization,evidence_available,small_offer,next_action,income_or_growth_pathway,sustainability_risk,mentor_feedback_needed,status
OPP-001,,,,,,,,,,,,
OPP-002,,,,,,,,,,,,
OPP-003,,,,,,,,,,,,
CSV

cat > "$EXAMPLE_FILE" <<'CSV'
opportunity_id,opportunity_type,career_stage,capability,problem_or_need,target_person_or_organization,evidence_available,small_offer,next_action,income_or_growth_pathway,sustainability_risk,mentor_feedback_needed,status
OPP-001,Near-term realistic,Early career,Spreadsheet cleaning and summary reporting,Small programs have messy participant records,Community program coordinator,Completed portfolio project with cleaned table and one-page summary,I can help clean one participant record sheet and prepare a simple summary report,Send a short message with portfolio link,Short project support or administrative data role,Time management with existing responsibilities,Ask mentor whether the offer is too broad,Ready to test
OPP-002,Medium-term growth,Developing professional,Literature review and evidence organization,Research teams need organized study evidence before project design,University research group,Annotated study table and brief synthesis report,I can prepare a structured table of relevant studies and summarize key methods,Identify one research contact and prepare inquiry email,Research assistant or project support pathway,Requires stronger domain reading routine,Ask mentor to review example evidence table,In preparation
OPP-003,Exploratory,Professional visibility,Teaching beginner data skills,Learners need practical spreadsheet and portfolio guidance,Youth mentorship group,One published guide chapter and simple learning template,I can run a short practical session on turning a small dataset into a portfolio artifact,Discuss with program lead and define session scope,Training facilitation or community education pathway,Could distract from main job search if too frequent,Ask mentor how to keep scope small,Exploratory
CSV

cat > "$README_FILE" <<'MD'
# Opportunity Design Outputs

This folder contains starter outputs for Chapter 16 of the Career System guide.

## Files

- `data/templates/opportunity-design-template.csv` — blank opportunity design template
- `results/opportunity-design/example-opportunity-design-map.csv` — completed example opportunity map

## How to Use

1. List possible opportunities.
2. Classify each as near-term, medium-term, or exploratory.
3. Connect each opportunity to a real capability.
4. Identify the problem or need it could solve.
5. Name the target person, team, organization, or audience.
6. Add available evidence.
7. Write a small clear offer.
8. Choose one next action.
9. Check sustainability risk.
10. Ask for mentor feedback before taking a larger step.

## Career System Principle

Opportunity design turns capability into visible, useful, and sustainable professional growth.
MD

printf "\nCareer System: Opportunity Design Template Created\n"
printf "Template: %s\n" "$TEMPLATE_FILE"
printf "Example:  %s\n" "$EXAMPLE_FILE"
printf "README:   %s\n\n" "$README_FILE"
