#!/usr/bin/env bash

##############################################################################
# Career System
# Chapter 09: Create Networking and Mentorship Template
##############################################################################

set -euo pipefail

TEMPLATE_DIR="data/templates"
RESULTS_DIR="results/networking-mentorship"

mkdir -p "$TEMPLATE_DIR" "$RESULTS_DIR"

TEMPLATE_FILE="$TEMPLATE_DIR/networking-mentorship-template.csv"
EXAMPLE_FILE="$RESULTS_DIR/example-networking-mentorship.csv"
README_FILE="$RESULTS_DIR/README-networking-mentorship.md"

cat > "$TEMPLATE_FILE" <<'CSV'
item_id,contact_or_community,relationship_type,career_relevance,evidence_to_share,specific_request,preferred_channel,follow_up_date,support_received,action_taken,relationship_status,next_step
NET-001,,,,,,,,,,,Not started
NET-002,,,,,,,,,,,Not started
NET-003,,,,,,,,,,,Not started
NET-004,,,,,,,,,,,Not started
NET-005,,,,,,,,,,,Not started
CSV

cat > "$EXAMPLE_FILE" <<'CSV'
item_id,contact_or_community,relationship_type,career_relevance,evidence_to_share,specific_request,preferred_channel,follow_up_date,support_received,action_taken,relationship_status,next_step
NET-001,Former data analytics trainer,Mentor,Understands entry-level data analysis expectations,portfolio/projects/public-health-data-cleaning/README.md,"Ask for feedback on whether the project communicates data-cleaning decisions clearly",Email,2026-07-10,"Suggested adding a short methods section and clearer results summary","Updated README and added a project summary",Active,Send short update after revision
NET-002,Local youth mentorship group,Community,Provides accountability and presentation practice,portfolio/projects/community-activity-tracker/,"Offer to present the tracker and ask whether it fits real activity planning needs",WhatsApp group,2026-07-15,"Pending","Prepared 5-minute explanation",Planned,Share project during next meeting
NET-003,LinkedIn contact working in monitoring and evaluation,Reviewer,Relevant to data-supported community programs,portfolio/projects/career-direction-profile.pdf,"Ask whether the profile aligns with junior M&E or project support roles",LinkedIn message,2026-07-20,"Pending","Drafted a focused message",Planned,Send message after mentor review
CSV

cat > "$README_FILE" <<'MD'
# Networking and Mentorship Outputs

This folder contains starter outputs for Chapter 09 of the Career System guide.

## Files

- `data/templates/networking-mentorship-template.csv` — blank networking and mentorship tracker
- `results/networking-mentorship/example-networking-mentorship.csv` — completed example tracker

## How to Use

1. Identify a person or community connected to the learner's career direction.
2. Define the relationship type: peer, mentor, reviewer, connector, sponsor, role model, collaborator, or community.
3. Connect the relationship to a specific career purpose.
4. Select one evidence artifact to share.
5. Write a focused request.
6. Choose a communication channel.
7. Set a follow-up date.
8. Record any feedback or support received.
9. Document the action taken after receiving advice.
10. Update the relationship status and next step.

## Networking Principle

Networking should be evidence-based and respectful. The goal is not to collect contacts. The goal is to build trust around visible effort, clear communication, useful feedback, and mutual contribution.
MD

printf "\nCareer System: Networking and Mentorship Template Created\n"
printf "Template: %s\n" "$TEMPLATE_FILE"
printf "Example:  %s\n" "$EXAMPLE_FILE"
printf "README:   %s\n\n" "$README_FILE"
