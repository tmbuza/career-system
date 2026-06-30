#!/usr/bin/env bash

##############################################################################
# Career System
# Chapter 07: Create Project-Based Proof Template
##############################################################################

set -euo pipefail

TEMPLATE_DIR="data/templates"
RESULTS_DIR="results/project-based-proof"

mkdir -p "$TEMPLATE_DIR" "$RESULTS_DIR"

TEMPLATE_FILE="$TEMPLATE_DIR/project-based-proof-template.csv"
EXAMPLE_FILE="$RESULTS_DIR/example-project-based-proof.csv"
README_FILE="$RESULTS_DIR/README-project-based-proof.md"

cat > "$TEMPLATE_FILE" <<'CSV'
project_id,career_direction,project_title,problem_or_context,target_audience,project_output,skills_demonstrated,evidence_artifact,completion_status,review_status,feedback_needed,improvement_next_step,visibility_level
PRJ-001,,,,,,,,Not started,Not reviewed,,,Private draft
PRJ-002,,,,,,,,Not started,Not reviewed,,,Private draft
PRJ-003,,,,,,,,Not started,Not reviewed,,,Private draft
PRJ-004,,,,,,,,Idea only,Not reviewed,,,Hold
PRJ-005,,,,,,,,Idea only,Not reviewed,,,Hold
CSV

cat > "$EXAMPLE_FILE" <<'CSV'
project_id,career_direction,project_title,problem_or_context,target_audience,project_output,skills_demonstrated,evidence_artifact,completion_status,review_status,feedback_needed,improvement_next_step,visibility_level
PRJ-001,Data analyst,Cleaning a messy public health dataset,A small public dataset has inconsistent column names missing values and duplicate records,Mentor or hiring manager,Cleaned CSV plus short README,"Data cleaning, documentation, missing value checks, duplicate checks, summary writing",portfolio/projects/public-health-data-cleaning/,Complete,Needs mentor review,Check whether the README explains decisions clearly,Add one simple visualization and revise README,Shared with mentor
PRJ-002,Project coordinator,Community activity planning tracker,A youth group needs a simple way to track planned activities responsibilities and follow-up actions,Program lead or mentor,Activity tracker template plus sample filled tracker,"Planning, coordination, task tracking, communication, follow-up design",portfolio/projects/community-activity-tracker/,Draft,Not reviewed,Ask if the tracker fields are practical for real use,Test with one real activity and update fields,Private draft
PRJ-003,Career development learner,Career direction profile and portfolio map,A learner needs to connect skills learning goals and portfolio evidence into one direction,Mentor,One-page career direction profile plus portfolio map,"Self-assessment, career framing, evidence planning, concise writing",portfolio/projects/career-direction-profile/,Complete,Reviewed once,Improve the target role wording,Rewrite the summary for LinkedIn and portfolio use,Shared with mentor
CSV

cat > "$README_FILE" <<'MD'
# Project-Based Proof Outputs

This folder contains starter outputs for Chapter 07 of the Career System guide.

## Files

- `data/templates/project-based-proof-template.csv` — blank project evidence tracker
- `results/project-based-proof/example-project-based-proof.csv` — completed example project evidence tracker

## How to Use

1. Choose one career direction from the career direction map.
2. Define a small project that supports that direction.
3. Write the problem or context behind the project.
4. Identify the target audience for the evidence.
5. Define the project output.
6. List the skills demonstrated by the project.
7. Record the artifact location.
8. Mark the completion and review status.
9. Identify the feedback needed.
10. Decide the next improvement step and visibility level.

## Project-Based Proof Principle

A project becomes career evidence when it is clear, complete enough to review, connected to a career direction, and explained in a way that others can understand.
MD

printf "\nCareer System: Project-Based Proof Template Created\n"
printf "Template: %s\n" "$TEMPLATE_FILE"
printf "Example:  %s\n" "$EXAMPLE_FILE"
printf "README:   %s\n\n" "$README_FILE"
