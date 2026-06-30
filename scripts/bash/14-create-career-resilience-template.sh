#!/usr/bin/env bash

##############################################################################
# Career System
# Chapter 14: Create Career Resilience and Diversification Template
##############################################################################

set -euo pipefail

TEMPLATE_DIR="data/templates"
RESULTS_DIR="results/career-resilience"

mkdir -p "$TEMPLATE_DIR" "$RESULTS_DIR"

TEMPLATE_FILE="$TEMPLATE_DIR/career-resilience-diversification-template.csv"
EXAMPLE_FILE="$RESULTS_DIR/example-career-resilience-diversification-map.csv"
README_FILE="$RESULTS_DIR/README-career-resilience.md"

cat > "$TEMPLATE_FILE" <<'CSV'
item_id,current_direction,career_risk,risk_level,early_warning_sign,response_action,alternative_pathway,skill_to_strengthen,evidence_to_build,person_or_group_to_contact,timeframe,status,notes
CR-001,,,,,,,,,,,,
CR-002,,,,,,,,,,,,
CR-003,,,,,,,,,,,,
CR-004,,,,,,,,,,,,
CR-005,,,,,,,,,,,,
CSV

cat > "$EXAMPLE_FILE" <<'CSV'
item_id,current_direction,career_risk,risk_level,early_warning_sign,response_action,alternative_pathway,skill_to_strengthen,evidence_to_build,person_or_group_to_contact,timeframe,status,notes
CR-001,Entry-level data support,Few formal job openings,High,Many applications with no response,Build one project that shows data cleaning and reporting,Volunteer monitoring and evaluation support,Spreadsheet cleaning and summary reporting,Public synthetic data cleaning case study,Mentor or local NGO contact,30 days,Planned,Keep pathway related to data work
CR-002,Research assistant pathway,Lack of visible experience,Medium,CV lists training but few outputs,Document two small research support tasks,Internship or volunteer literature review support,Documentation and structured notes,Annotated reading summary and project log,Former lecturer or research group,45 days,In progress,Use non-confidential examples only
CR-003,Professional visibility,Weak network,Medium,Few people know career direction,Send five respectful career update messages,Mentorship and referral conversations,Communication and concise self-introduction,Updated LinkedIn/about profile,Alumni or professional community,14 days,Planned,Focus on learning conversations not asking for favors first
CR-004,Technical learning,Skills becoming outdated,Medium,Job posts request tools not yet learned,Add one modern tool to learning plan,Portfolio project using the tool,Tool practice and applied workflow,Small completed project with README,Peer learning group,60 days,Planned,Avoid learning too many tools at once
CR-005,Workplace sustainability,Burnout risk,High,Low energy and missed routines,Create weekly review and recovery routine,Part-time project rhythm,Time management and prioritization,Personal operating system checklist,Trusted mentor or accountability partner,7 days,Started,Resilience includes protecting energy
CSV

cat > "$README_FILE" <<'MD'
# Career Resilience and Diversification Outputs

This folder contains starter outputs for Chapter 14 of the Career System guide.

## Files

- `data/templates/career-resilience-diversification-template.csv` — blank resilience and diversification planning template
- `results/career-resilience/example-career-resilience-diversification-map.csv` — completed example resilience map

## How to Use

1. Write the learner's current career direction.
2. Identify one realistic risk that could slow progress.
3. Estimate the risk level: low, medium, or high.
4. Describe the early warning sign.
5. Choose one practical response action.
6. Identify a related alternative pathway.
7. Select one skill to strengthen.
8. Define one piece of evidence to build.
9. Identify a person, mentor, or group to contact.
10. Set a timeframe and track the status.

## Career System Principle

Resilience is not only motivation. It is a practical system for continuing to grow when plans change.
MD

printf "\nCareer System: Career Resilience and Diversification Template Created\n"
printf "Template: %s\n" "$TEMPLATE_FILE"
printf "Example:  %s\n" "$EXAMPLE_FILE"
printf "README:   %s\n\n" "$README_FILE"
