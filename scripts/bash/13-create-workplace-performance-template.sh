#!/usr/bin/env bash

##############################################################################
# Career System
# Chapter 13: Create Workplace Performance Template
##############################################################################

set -euo pipefail

TEMPLATE_DIR="data/templates"
RESULTS_DIR="results/workplace-performance"

mkdir -p "$TEMPLATE_DIR" "$RESULTS_DIR"

TEMPLATE_FILE="$TEMPLATE_DIR/workplace-performance-template.csv"
EXAMPLE_FILE="$RESULTS_DIR/example-workplace-performance-log.csv"
README_FILE="$RESULTS_DIR/README-workplace-performance.md"

cat > "$TEMPLATE_FILE" <<'CSV'
item_id,date,role_or_context,task,expected_output,output_delivered,deadline,status,skill_used,tool_or_method,person_to_update,feedback_received,improvement_made,evidence_location,confidentiality_level,future_cv_or_portfolio_note,notes
WP-001,,,,,,,,,,,,,,,,
WP-002,,,,,,,,,,,,,,,,
WP-003,,,,,,,,,,,,,,,,
WP-004,,,,,,,,,,,,,,,,
WP-005,,,,,,,,,,,,,,,,
CSV

cat > "$EXAMPLE_FILE" <<'CSV'
item_id,date,role_or_context,task,expected_output,output_delivered,deadline,status,skill_used,tool_or_method,person_to_update,feedback_received,improvement_made,evidence_location,confidentiality_level,future_cv_or_portfolio_note,notes
WP-001,2026-07-01,Internship support role,Prepare weekly activity tracker,Updated tracker with complete fields,Tracker updated and checked for missing dates,2026-07-03,Completed,Data organization,Spreadsheet template,Supervisor,"Make the summary shorter and separate pending items",Created separate pending-items section,results/workplace-performance/example-workplace-performance-log.csv,Internal summary only,"Maintained weekly activity tracker and improved reporting clarity",Good example for reliability
WP-002,2026-07-04,Project support role,Clean participant attendance list,Cleaned list with duplicate records flagged,Duplicates flagged and location names standardized,2026-07-05,Completed,Attention to detail,Spreadsheet cleaning,Project lead,"Check spelling before final submission",Added final review step before sending,Private work data,"Cleaned and organized project records for reporting support",Do not publish the real list
WP-003,2026-07-08,Volunteer coordination,Write meeting notes,Clear notes with decisions and action items,Meeting notes shared with action owners,2026-07-08,Completed,Documentation,Structured notes format,Team coordinator,"Action owners were clear",Kept same format for next meeting,Personal notes version only,"Documented meeting decisions and follow-up actions",Useful for communication evidence
WP-004,2026-07-10,Junior data support practice,Create simple summary table,Summary table by category and status,First version prepared for review,2026-07-12,In review,Reporting,Spreadsheet pivot or summary table,Mentor,"Add a short interpretation paragraph",Added interpretation below the table,Synthetic example can be shared,"Produced summary table and explained key patterns",Could become portfolio example if synthetic
WP-005,2026-07-15,Workplace learning cycle,Ask for feedback on first month,Feedback notes and improvement actions,Feedback conversation completed and actions recorded,2026-07-16,Completed,Feedback readiness,Performance reflection notes,Supervisor,"Communicate blockers earlier",Added blocker update habit to weekly routine,Private reflection,"Used feedback to improve communication and task management",Important for growth story
CSV

cat > "$README_FILE" <<'MD'
# Workplace Performance Outputs

This folder contains starter outputs for Chapter 13 of the Career System guide.

## Files

- `data/templates/workplace-performance-template.csv` — blank workplace performance tracking template
- `results/workplace-performance/example-workplace-performance-log.csv` — completed example workplace performance log

## How to Use

1. Record the role, task, expected output, and deadline.
2. Track the actual output delivered.
3. Mark the status: planned, in progress, blocked, in review, completed, or revised.
4. Identify the skill used and the tool or method applied.
5. Record who needed an update.
6. Capture feedback received.
7. Write the improvement made in response to feedback.
8. Note where evidence is stored.
9. Check the confidentiality level before using any work as public portfolio evidence.
10. Translate safe contributions into future CV or portfolio language.

## Performance Principle

A sustainable career is built through reliable contribution. The learner should not only complete work, but also communicate progress, receive feedback well, document growth, and protect trust.
MD

printf "\nCareer System: Workplace Performance Template Created\n"
printf "Template: %s\n" "$TEMPLATE_FILE"
printf "Example:  %s\n" "$EXAMPLE_FILE"
printf "README:   %s\n\n" "$README_FILE"
