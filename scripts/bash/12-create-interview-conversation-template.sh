#!/usr/bin/env bash

##############################################################################
# Career System
# Chapter 12: Create Interview and Career Conversation Template
##############################################################################

set -euo pipefail

TEMPLATE_DIR="data/templates"
RESULTS_DIR="results/interview-conversations"

mkdir -p "$TEMPLATE_DIR" "$RESULTS_DIR"

TEMPLATE_FILE="$TEMPLATE_DIR/interview-conversation-template.csv"
EXAMPLE_FILE="$RESULTS_DIR/example-interview-conversation-map.csv"
README_FILE="$RESULTS_DIR/README-interview-conversations.md"

cat > "$TEMPLATE_FILE" <<'CSV'
item_id,conversation_type,target_opportunity,likely_question,main_message,supporting_evidence,example_project_or_experience,skill_demonstrated,growth_area,question_to_ask_back,follow_up_action,review_status,notes
ICC-001,,,,,,,,,,,,
ICC-002,,,,,,,,,,,,
ICC-003,,,,,,,,,,,,
ICC-004,,,,,,,,,,,,
ICC-005,,,,,,,,,,,,
CSV

cat > "$EXAMPLE_FILE" <<'CSV'
item_id,conversation_type,target_opportunity,likely_question,main_message,supporting_evidence,example_project_or_experience,skill_demonstrated,growth_area,question_to_ask_back,follow_up_action,review_status,notes
ICC-001,Interview,Junior data or project support role,Tell me about yourself,"I am building toward junior data and project support roles with evidence in structured templates, documentation, and reporting.",results/cv-linkedin-profile/example-cv-linkedin-profile.csv,Community activity tracker,Professional positioning and communication,Need to make the answer shorter,"What would success look like in the first three months?",Practice a 60-second version,Needs review,Use calm and specific wording
ICC-002,Interview,Monitoring and evaluation internship,What skills do you bring?,"I can organize information, clean simple tables, document workflows, and communicate outputs clearly.",results/skills-inventory/example-skills-inventory.csv,Skills inventory and portfolio examples,Data organization and documentation,Need more real examples,"What tools does the team use for reporting?",Prepare one project example for each skill,Ready,Do not overclaim advanced analysis
ICC-003,Mentorship conversation,Career direction review,What kind of opportunity are you looking for?,"I am looking for supervised early-career opportunities where I can contribute to coordination, reporting, and practical data tasks.",results/career-direction/example-career-direction-map.csv,Career direction map,Opportunity fit and self-awareness,Need clearer target sectors,"Which roles should I prioritize first?",Ask mentor to review target role list,Needs review,Good for referral conversations
ICC-004,Interview,Fellowship or internship,Describe a challenge you handled,"I improved my project work by turning a vague idea into a structured output with a template, example records, and documentation.",results/project-based-proof/example-project-based-proof.csv,Project-based proof artifact,Problem solving and follow-through,Need stronger result statement,"How is feedback usually given during the program?",Rewrite as STAR response,Needs review,Keep result honest
ICC-005,Networking call,Portfolio feedback conversation,What are you still improving?,"I am improving consistency, deeper tool practice, and confidence explaining my work to different audiences.",results/learning-plan/example-learning-plan.csv,Learning plan,Growth mindset and feedback readiness,Need measurable milestones,"What would make my portfolio easier for someone to evaluate?",Add feedback to learning plan,Ready,Shows maturity without sounding weak
CSV

cat > "$README_FILE" <<'MD'
# Interview and Career Conversation Outputs

This folder contains starter outputs for Chapter 12 of the Career System guide.

## Files

- `data/templates/interview-conversation-template.csv` — blank interview and career conversation preparation template
- `results/interview-conversations/example-interview-conversation-map.csv` — completed example conversation map

## How to Use

1. Choose the conversation type: interview, mentorship call, networking conversation, portfolio review, referral discussion, or workplace check-in.
2. Define the target opportunity or purpose of the conversation.
3. List likely questions.
4. Write the main message for each answer.
5. Link each answer to supporting evidence.
6. Identify the project, experience, or artifact that proves the claim.
7. Record one skill demonstrated by the answer.
8. Note one growth area honestly.
9. Prepare a thoughtful question to ask back.
10. After the conversation, write the follow-up action and review status.

## Conversation Principle

A strong career conversation should connect direction, evidence, and growth. The learner does not need to sound perfect. They need to sound prepared, honest, useful, and ready to keep improving.
MD

printf "\nCareer System: Interview and Career Conversation Template Created\n"
printf "Template: %s\n" "$TEMPLATE_FILE"
printf "Example:  %s\n" "$EXAMPLE_FILE"
printf "README:   %s\n\n" "$README_FILE"
