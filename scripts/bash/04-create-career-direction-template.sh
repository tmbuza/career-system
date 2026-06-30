#!/usr/bin/env bash

##############################################################################
# Career System
# Chapter 04: Create Career Direction Template
##############################################################################

set -euo pipefail

TEMPLATE_DIR="data/templates"
RESULTS_DIR="results/career-direction"

mkdir -p "$TEMPLATE_DIR" "$RESULTS_DIR"

TEMPLATE_FILE="$TEMPLATE_DIR/career-direction-map-template.csv"
EXAMPLE_FILE="$RESULTS_DIR/example-career-direction-map.csv"
README_FILE="$RESULTS_DIR/README-career-direction.md"

cat > "$TEMPLATE_FILE" <<'CSV'
direction_id,career_direction,why_interesting,current_supporting_skills,current_evidence,major_skill_gaps,opportunity_signals,constraints,mentor_or_reference_person,first_test_action,priority_score,status
DIR-001,,,,,,,,,,,Explore
DIR-002,,,,,,,,,,,Hold
DIR-003,,,,,,,,,,,Hold
DIR-004,,,,,,,,,,,Hold
DIR-005,,,,,,,,,,,Hold
CSV

cat > "$EXAMPLE_FILE" <<'CSV'
direction_id,career_direction,why_interesting,current_supporting_skills,current_evidence,major_skill_gaps,opportunity_signals,constraints,mentor_or_reference_person,first_test_action,priority_score,status
DIR-001,Data analyst,"I enjoy working with structured data and explaining patterns clearly.","Excel; basic R; data cleaning; report writing","Skills inventory project; cleaned dataset summary","SQL; dashboard design; stronger statistics foundation","Many entry-level roles request Excel, SQL, reporting, and communication.","Limited weekly study time; needs low-cost learning resources","Data professional or analytics lecturer","Build one small public analysis project and request review",4,Explore next
DIR-002,Clinical data coordinator,"I am interested in health data and organized study documentation.","Documentation; spreadsheet organization; careful record checking","Career readiness assessment; skills inventory","Clinical research terminology; data quality workflows; regulatory awareness","Hospitals, research projects, and NGOs often need organized data support.","Needs exposure to clinical data workflows","Clinical research coordinator or health data mentor","Create a mock data tracking log and quality checklist",3,Explore later
DIR-003,Technical writer,"I like explaining complex topics in simple language.","Writing; summarizing; documentation; communication","Short project summaries and learning notes","More public writing samples; stronger editing process","Organizations need clear documentation, guides, and training materials.","Needs a visible writing portfolio","Editor, trainer, or documentation specialist","Write a one-page guide explaining one technical workflow",3,Explore later
CSV

cat > "$README_FILE" <<'MD'
# Career Direction Outputs

This folder contains starter outputs for Chapter 04 of the Career System guide.

## Files

- `data/templates/career-direction-map-template.csv` — blank career direction mapping template
- `results/career-direction/example-career-direction-map.csv` — completed example direction map

## How to Use

1. List three to five possible career directions.
2. Explain why each direction is interesting.
3. Connect each direction to current skills and evidence.
4. Record major skill gaps.
5. Add opportunity signals and constraints.
6. Define one first test action.
7. Add a priority score from 1 to 5.
8. Mark the status as `Explore next`, `Explore later`, `Hold`, or `Drop`.

## Direction Principle

A career direction is not a permanent identity. It is a testable hypothesis for the next growth cycle.
MD

printf "\nCareer System: Career Direction Template Created\n"
printf "Template: %s\n" "$TEMPLATE_FILE"
printf "Example:  %s\n" "$EXAMPLE_FILE"
printf "README:   %s\n\n" "$README_FILE"
