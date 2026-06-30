#!/usr/bin/env bash

##############################################################################
# Career System
# Chapter 17: Create End-to-End Career Growth Case Study Outputs
##############################################################################

set -euo pipefail

RESULTS_DIR="results/end-to-end-career-growth"
mkdir -p "$RESULTS_DIR"

GROWTH_MAP_FILE="$RESULTS_DIR/amani-career-growth-map.csv"
PORTFOLIO_FILE="$RESULTS_DIR/amani-portfolio-evidence.csv"
OPPORTUNITY_FILE="$RESULTS_DIR/amani-opportunity-pathway.csv"
README_FILE="$RESULTS_DIR/README-end-to-end-career-growth.md"

cat > "$GROWTH_MAP_FILE" <<'CSV'
stage,system_component,learner_status,key_decision,next_action,evidence_or_output
1,Career readiness,Motivated but unclear evidence,Focus on visible proof,Complete readiness self-assessment,Readiness summary
2,Skills inventory,Has spreadsheet and reporting skills,Choose skills ready to show,Select three portfolio-ready skills,Skills inventory table
3,Career direction,Several possible paths,Prioritize program reporting and data support,Map role signals from job descriptions,Career direction map
4,Learning plan,Needs focused improvement,Learn only what supports near-term proof,Create four-week learning plan,Learning plan table
5,Portfolio building,No organized proof yet,Build one small practical project,Create attendance data cleaning project,Portfolio project folder
6,Project-based proof,Project needs explanation,Document decisions and limitations,Write one-page project note,Project proof summary
7,Communication and visibility,Capability is hidden,Share evidence with a clear message,Prepare short visibility statement,Visibility message
8,Networking and mentorship,Support exists but is not structured,Ask for specific feedback,Contact mentor with portfolio summary,Mentor feedback note
9,Job market readiness,Needs market alignment,Compare proof with job requirements,Review five job descriptions,Market signal table
10,Professional profile,Profile is generic,Rewrite around evidence,Update CV or LinkedIn summary,Profile summary
11,Career conversations,Needs practice,Use project stories in conversations,Prepare five interview stories,Conversation preparation sheet
12,Workplace performance,Opportunity must become performance,Build delivery habits,Track tasks and communication habits,Performance log
13,Resilience,Too dependent on one path,Create primary and secondary routes,Map multiple opportunity paths,Resilience map
14,Personal operating system,Needs consistency,Use weekly rhythm,Set weekly review routine,Weekly operating rhythm
15,Opportunity design,Needs realistic next step,Design a small evidence-backed offer,Share small offer with selected contacts,Opportunity pathway
CSV

cat > "$PORTFOLIO_FILE" <<'CSV'
artifact_id,artifact_name,skill_demonstrated,problem_addressed,output_type,evidence_link_placeholder,status,next_improvement
ART-001,Attendance data cleaning project,Spreadsheet cleaning and data quality checking,Program attendance records contain missing and inconsistent entries,Cleaned dataset,Add portfolio URL here,Draft complete,Add clearer data cleaning notes
ART-002,Missing value summary,Data summarization and reporting,Program teams need to know which fields are incomplete,Summary table,Add portfolio URL here,Draft complete,Add interpretation paragraph
ART-003,Participation summary report,Short professional writing,Program leaders need a simple participation overview,One-page report,Add portfolio URL here,In progress,Improve visual summary
ART-004,Project explanation post,Communication and visibility,Others need to understand what the learner can do,Short public explanation,Add LinkedIn or portfolio URL here,Planned,Write in plain language
CSV

cat > "$OPPORTUNITY_FILE" <<'CSV'
opportunity_id,opportunity_pathway,target_audience,capability,evidence_available,small_offer,next_action,risk_or_constraint,sustainability_check,status
OPP-001,Program reporting support,Community training program,Spreadsheet cleaning and summary reporting,Attendance cleaning portfolio project,Clean one attendance sheet and prepare a short summary,Ask mentor to review offer before sending,May need stronger examples of reporting,Keep project small and time-bound,Ready for feedback
OPP-002,Research assistant support,University or research team,Literature organization and data support,Portfolio evidence plus learning plan,Support evidence table preparation or data organization,Identify one research contact,Needs more domain-specific examples,Start as exploratory conversation,Preparing
OPP-003,Administrative data support,Small organization,Data cleaning and documentation,Cleaned dataset and quality checks,Help organize one messy spreadsheet into a usable table,Share portfolio with one trusted contact,Scope could expand too much,Define one deliverable before accepting,Exploratory
CSV

cat > "$README_FILE" <<'MD'
# End-to-End Career Growth Case Study Outputs

This folder contains example outputs for Chapter 17 of the Career System guide.

The fictional learner is Amani, an early-career learner building a pathway toward data support, program reporting, or research support opportunities.

## Files

- `amani-career-growth-map.csv` — integrated career system map from readiness to opportunity design
- `amani-portfolio-evidence.csv` — example portfolio evidence table
- `amani-opportunity-pathway.csv` — example opportunity pathway table

## How to Use

1. Read the chapter case study.
2. Open each CSV file.
3. Replace Amani's example details with your own context.
4. Keep the system sequence intact:
   - readiness
   - skills
   - direction
   - learning
   - portfolio
   - proof
   - visibility
   - mentorship
   - market readiness
   - profile
   - conversations
   - performance
   - resilience
   - personal operating rhythm
   - opportunity design
5. Review the outputs with a mentor, peer, supervisor, or program lead.

## Career System Principle

Sustainable professional growth becomes easier when learning, evidence, visibility, feedback, and opportunity are connected into one practical system.
MD

printf "\nCareer System: End-to-End Career Growth Case Study Created\n"
printf "Growth map:  %s\n" "$GROWTH_MAP_FILE"
printf "Portfolio:   %s\n" "$PORTFOLIO_FILE"
printf "Opportunity: %s\n" "$OPPORTUNITY_FILE"
printf "README:      %s\n\n" "$README_FILE"
