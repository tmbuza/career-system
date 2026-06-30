#!/usr/bin/env bash

##############################################################################
# Career System
# Chapter 11: Create CV, LinkedIn, and Professional Profile Template
##############################################################################

set -euo pipefail

TEMPLATE_DIR="data/templates"
RESULTS_DIR="results/cv-linkedin-profile"

mkdir -p "$TEMPLATE_DIR" "$RESULTS_DIR"

TEMPLATE_FILE="$TEMPLATE_DIR/cv-linkedin-profile-template.csv"
EXAMPLE_FILE="$RESULTS_DIR/example-cv-linkedin-profile.csv"
README_FILE="$RESULTS_DIR/README-cv-linkedin-profile.md"

cat > "$TEMPLATE_FILE" <<'CSV'
item_id,profile_component,target_opportunity,profile_claim_or_section,evidence_artifact,current_strength,problem_to_fix,revised_wording,next_action,reviewer,review_status,notes
CLP-001,,,,,,,,,,,
CLP-002,,,,,,,,,,,
CLP-003,,,,,,,,,,,
CLP-004,,,,,,,,,,,
CLP-005,,,,,,,,,,,
CSV

cat > "$EXAMPLE_FILE" <<'CSV'
item_id,profile_component,target_opportunity,profile_claim_or_section,evidence_artifact,current_strength,problem_to_fix,revised_wording,next_action,reviewer,review_status,notes
CLP-001,Professional summary,Junior data or project support role,"Hardworking person looking for any opportunity",results/job-market-readiness/example-job-market-readiness.csv,Weak,Too generic and not evidence-based,"Early-career professional building toward data and project support roles, with portfolio evidence in data cleaning, reporting, documentation, and communication.",Add to CV draft,Mentor,Needs review,Use concise wording for one-page CV
CLP-002,LinkedIn headline,Data and reporting opportunity,"Student | Job seeker",results/skills-inventory/example-skills-inventory.csv,Weak,Does not show direction,"Aspiring Data and Project Support Professional | Reporting, Documentation, and Portfolio-Based Learning",Update LinkedIn headline,Peer reviewer,Ready,Keep simple and searchable
CLP-003,Selected project,Monitoring and evaluation internship,Community activity tracker,portfolio/projects/community-activity-tracker/README.md,Moderate,Project description does not explain contribution,"Created a spreadsheet-based activity tracker with example records and documentation to support attendance, follow-up, and reporting for a community learning program.",Rewrite CV project bullet,Mentor,Needs review,Add link to portfolio page
CLP-004,Skills section,Junior analyst role,Excel; communication; teamwork,results/project-based-proof/example-project-based-proof.csv,Moderate,Skills need evidence grouping,"Data organization, spreadsheet reporting, written documentation, project communication, and beginner data visualization.",Group skills under practical categories,Self,Ready,Avoid listing too many unrelated skills
CLP-005,Portfolio summary,Fellowship or internship application,Portfolio link only,portfolio/index.md,Weak,Viewer may not know what to inspect,"Portfolio includes practical projects showing data cleaning, structured templates, reporting, written interpretation, and reflective learning.",Add portfolio introduction,Reviewer,Needs review,Make portfolio easy to scan
CSV

cat > "$README_FILE" <<'MD'
# CV, LinkedIn, and Professional Profile Outputs

This folder contains starter outputs for Chapter 11 of the Career System guide.

## Files

- `data/templates/cv-linkedin-profile-template.csv` — blank profile improvement template
- `results/cv-linkedin-profile/example-cv-linkedin-profile.csv` — completed example profile map

## How to Use

1. Choose a target opportunity or professional direction.
2. Review the learner's CV, LinkedIn profile, portfolio page, or short bio.
3. Identify one profile component to improve.
4. Connect each claim or section to evidence.
5. Mark the current strength as strong, moderate, weak, or missing.
6. Rewrite vague claims using specific evidence.
7. Assign a reviewer if feedback is needed.
8. Track review status and next action.
9. Repeat after each new project, application, interview, or mentoring conversation.

## Profile Principle

A professional profile should not exaggerate. It should translate real direction, real evidence, and real readiness into a clear signal that other people can understand quickly.
MD

printf "\nCareer System: CV, LinkedIn, and Professional Profile Template Created\n"
printf "Template: %s\n" "$TEMPLATE_FILE"
printf "Example:  %s\n" "$EXAMPLE_FILE"
printf "README:   %s\n\n" "$README_FILE"
