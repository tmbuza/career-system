#!/usr/bin/env bash

##############################################################################
# Career System
# Chapter 15: Create Personal Operating System Template
##############################################################################

set -euo pipefail

TEMPLATE_DIR="data/templates"
RESULTS_DIR="results/personal-operating-system"

mkdir -p "$TEMPLATE_DIR" "$RESULTS_DIR"

TEMPLATE_FILE="$TEMPLATE_DIR/personal-operating-system-template.csv"
EXAMPLE_FILE="$RESULTS_DIR/example-personal-operating-system.csv"
README_FILE="$RESULTS_DIR/README-personal-operating-system.md"

cat > "$TEMPLATE_FILE" <<'CSV'
week_id,review_period,career_direction_focus,top_priority_1,top_priority_2,top_priority_3,learning_action,evidence_action,communication_follow_up_action,energy_status,main_blocker,progress_note,next_adjustment,status
W-001,,,,,,,,,,,,,
W-002,,,,,,,,,,,,,
W-003,,,,,,,,,,,,,
W-004,,,,,,,,,,,,,
CSV

cat > "$EXAMPLE_FILE" <<'CSV'
week_id,review_period,career_direction_focus,top_priority_1,top_priority_2,top_priority_3,learning_action,evidence_action,communication_follow_up_action,energy_status,main_blocker,progress_note,next_adjustment,status
W-001,2026-07-01 to 2026-07-07,Entry-level data support,Finish portfolio README,Practice spreadsheet cleaning,Send one mentor update,Complete one short data cleaning exercise,Publish project summary with before-and-after table,Send update to former lecturer,Medium,Limited evening time,Completed project notes but README needs cleanup,Reduce scope and finish only one strong README,In progress
W-002,2026-07-08 to 2026-07-14,Research support pathway,Improve CV evidence bullets,Read one methods paper,Contact one research group,Write five CV bullets using evidence from projects,Create annotated reading summary,Send respectful inquiry to research assistant contact,High,Too many priorities,Finished reading but did not contact anyone,Use a shorter message template next week,Planned
W-003,2026-07-15 to 2026-07-21,Professional visibility,Update LinkedIn headline,Share one learning post,Ask for feedback,Review two strong profiles,Post one short portfolio reflection,Ask mentor to review profile,Low,Fear of posting publicly,Drafted post but did not publish,Share first with small trusted group,Planned
W-004,2026-07-22 to 2026-07-28,Workplace performance,Document one contribution,Clarify next task,Protect recovery time,Learn one communication pattern for status updates,Write a weekly accomplishment note,Send supervisor-style progress update,Medium,Unclear expectations,Collected notes on completed tasks,Ask for clearer priority order earlier,Planned
CSV

cat > "$README_FILE" <<'MD'
# Personal Operating System Outputs

This folder contains starter outputs for Chapter 15 of the Career System guide.

## Files

- `data/templates/personal-operating-system-template.csv` — blank weekly operating system template
- `results/personal-operating-system/example-personal-operating-system.csv` — completed example weekly tracker

## How to Use

1. Choose a review period.
2. Write the current career direction focus.
3. Select three realistic priorities.
4. Define one learning action.
5. Define one evidence or portfolio action.
6. Define one communication or follow-up action.
7. Record energy status honestly.
8. Identify the main blocker.
9. Write a short progress note.
10. Choose the next adjustment.

## Career System Principle

A Personal Operating System turns career growth into repeated, visible, reviewable actions.
MD

printf "\nCareer System: Personal Operating System Template Created\n"
printf "Template: %s\n" "$TEMPLATE_FILE"
printf "Example:  %s\n" "$EXAMPLE_FILE"
printf "README:   %s\n\n" "$README_FILE"
