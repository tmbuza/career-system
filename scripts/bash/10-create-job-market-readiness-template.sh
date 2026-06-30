#!/usr/bin/env bash

##############################################################################
# Career System
# Chapter 10: Create Job Market Readiness Template
##############################################################################

set -euo pipefail

TEMPLATE_DIR="data/templates"
RESULTS_DIR="results/job-market-readiness"

mkdir -p "$TEMPLATE_DIR" "$RESULTS_DIR"

TEMPLATE_FILE="$TEMPLATE_DIR/job-market-readiness-template.csv"
EXAMPLE_FILE="$RESULTS_DIR/example-job-market-readiness.csv"
README_FILE="$RESULTS_DIR/README-job-market-readiness.md"

cat > "$TEMPLATE_FILE" <<'CSV'
item_id,opportunity_type,target_role_or_pathway,organization_or_context,common_requirement,evidence_artifact,evidence_strength,gap_type,gap_description,next_action,readiness_status,application_priority,notes
JMR-001,,,,,,,,,,,,
JMR-002,,,,,,,,,,,,
JMR-003,,,,,,,,,,,,
JMR-004,,,,,,,,,,,,
JMR-005,,,,,,,,,,,,
CSV

cat > "$EXAMPLE_FILE" <<'CSV'
item_id,opportunity_type,target_role_or_pathway,organization_or_context,common_requirement,evidence_artifact,evidence_strength,gap_type,gap_description,next_action,readiness_status,application_priority,notes
JMR-001,Entry-level job,Junior Data Analyst,NGO or public health project,Data cleaning and spreadsheet reporting,portfolio/projects/public-health-data-cleaning/README.md,Strong,Quick gap,Add a short before-and-after cleaning table,Update README and add summary screenshot,Near-ready,High,Good fit if role includes structured data tasks
JMR-002,Internship,Monitoring and Evaluation Intern,Community development organization,Report writing and indicator tracking,portfolio/projects/community-activity-tracker/project-summary.pdf,Moderate,Focused learning cycle,Need clearer explanation of indicators and reporting workflow,Create one-page M&E-style summary,Near-ready,High,Useful bridge between data and project support roles
JMR-003,Freelance support task,Documentation Assistant,Small training program,Clear written documentation,portfolio/writing/how-to-run-template-guide.md,Moderate,Quick gap,Need a polished sample with screenshots,Revise sample and request feedback from mentor,Ready,Medium,Good early opportunity for proof and testimonials
JMR-004,Fellowship,Digital Skills Fellowship,Youth skills program,Portfolio evidence and motivation statement,portfolio/index.md,Weak,Focused learning cycle,Portfolio has projects but weak career narrative,Write profile summary and align projects to fellowship goals,Future-fit,Medium,Apply after CV and profile chapter updates
JMR-005,Promotion or internal opportunity,Project Support Officer,Current or local organization,Coordination and stakeholder communication,results/communication-visibility/example-communication-visibility.csv,Weak,Long-term development,Need stronger evidence of coordination responsibility,Volunteer for one documented coordination task,Future-fit,Low,Build evidence before prioritizing this path
CSV

cat > "$README_FILE" <<'MD'
# Job Market Readiness Outputs

This folder contains starter outputs for Chapter 10 of the Career System guide.

## Files

- `data/templates/job-market-readiness-template.csv` — blank job market readiness mapping template
- `results/job-market-readiness/example-job-market-readiness.csv` — completed example readiness map

## How to Use

1. Choose a target opportunity type.
2. Identify a role, pathway, or professional direction.
3. Extract common requirements from adverts, fellowship calls, internship descriptions, or opportunity conversations.
4. Match each requirement to an evidence artifact.
5. Rate the evidence strength as strong, moderate, weak, or missing.
6. Classify the gap as quick, focused learning cycle, or long-term development.
7. Define the next action.
8. Assign a readiness status: ready, near-ready, future-fit, or not aligned.
9. Prioritize applications based on fit and evidence.
10. Use the notes field to capture lessons from applications, interviews, feedback, or rejections.

## Job Market Principle

Job readiness is not only about applying. It is about matching opportunity requirements to evidence, identifying gaps honestly, and improving the learner's readiness through a visible and repeatable system.
MD

printf "\nCareer System: Job Market Readiness Template Created\n"
printf "Template: %s\n" "$TEMPLATE_FILE"
printf "Example:  %s\n" "$EXAMPLE_FILE"
printf "README:   %s\n\n" "$README_FILE"
