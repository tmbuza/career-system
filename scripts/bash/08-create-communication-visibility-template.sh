#!/usr/bin/env bash

##############################################################################
# Career System
# Chapter 08: Create Communication and Visibility Template
##############################################################################

set -euo pipefail

TEMPLATE_DIR="data/templates"
RESULTS_DIR="results/communication-visibility"

mkdir -p "$TEMPLATE_DIR" "$RESULTS_DIR"

TEMPLATE_FILE="$TEMPLATE_DIR/communication-visibility-template.csv"
EXAMPLE_FILE="$RESULTS_DIR/example-communication-visibility.csv"
README_FILE="$RESULTS_DIR/README-communication-visibility.md"

cat > "$TEMPLATE_FILE" <<'CSV'
item_id,evidence_artifact,career_direction,target_audience,message_purpose,communication_channel,short_summary,skills_highlighted,visibility_level,feedback_needed,next_action,status
COM-001,,,,,,,,Private draft,,,Not started
COM-002,,,,,,,,Mentor review,,,Not started
COM-003,,,,,,,,Portfolio artifact,,,Not started
COM-004,,,,,,,,Public professional post,,,Idea only
COM-005,,,,,,,,Interview story,,,Idea only
CSV

cat > "$EXAMPLE_FILE" <<'CSV'
item_id,evidence_artifact,career_direction,target_audience,message_purpose,communication_channel,short_summary,skills_highlighted,visibility_level,feedback_needed,next_action,status
COM-001,portfolio/projects/public-health-data-cleaning/,Data analyst,Mentor,Request feedback on project clarity,Mentor update,"I cleaned and documented a small public health dataset, checked missing values and duplicates, and wrote a README explaining the data quality decisions.","Data cleaning, documentation, reproducible thinking, written explanation",Mentor review,"Is the README clear enough for someone who did not see the original data?",Revise README based on mentor feedback,Draft complete
COM-002,portfolio/projects/community-activity-tracker/,Project coordinator,Community program lead,Show practical planning evidence,Short case study,"I created a simple activity tracker to help a youth group plan responsibilities, dates, follow-up actions, and completion status.","Planning, coordination, communication, follow-up design",Portfolio artifact,"Are the fields practical for real community use?",Test the tracker with one activity and update the template,In progress
COM-003,portfolio/projects/career-direction-profile/,Career development learner,LinkedIn network,Share learning progress and career direction,LinkedIn post,"I mapped my current skills, learning goals, portfolio evidence, and next career direction into a one-page profile that I can update as I grow.","Self-assessment, career framing, communication, portfolio planning",Public professional post,"Does the post sound clear without exaggeration?",Share after mentor review,Planned
CSV

cat > "$README_FILE" <<'MD'
# Communication and Visibility Outputs

This folder contains starter outputs for Chapter 08 of the Career System guide.

## Files

- `data/templates/communication-visibility-template.csv` — blank communication and visibility tracker
- `results/communication-visibility/example-communication-visibility.csv` — completed example tracker

## How to Use

1. Select one evidence artifact from the project-based proof tracker.
2. Connect it to a career direction.
3. Define the target audience.
4. Choose the purpose of the message.
5. Select the communication channel.
6. Write a short plain-language summary.
7. List the skills highlighted by the evidence.
8. Choose an appropriate visibility level.
9. Identify the feedback needed before wider sharing.
10. Define the next action.

## Communication Principle

Career visibility should be evidence-based. The goal is not to make the learner louder. The goal is to make the learner clearer, more credible, and easier to support.
MD

printf "\nCareer System: Communication and Visibility Template Created\n"
printf "Template: %s\n" "$TEMPLATE_FILE"
printf "Example:  %s\n" "$EXAMPLE_FILE"
printf "README:   %s\n\n" "$README_FILE"
