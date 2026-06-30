#!/usr/bin/env bash
set -euo pipefail

# Add or refresh "## Looking Ahead" sections for the CDI Career System guide.
# Run from the project root:
#   bash scripts/bash/add-looking-ahead-sections.sh

write_section() {
  local file="$1"
  local text="$2"

  if [ ! -f "$file" ]; then
    echo "WARNING: missing $file"
    return 0
  fi

  python3 - "$file" "$text" <<'PY'
from pathlib import Path
import sys
path = Path(sys.argv[1])
section = sys.argv[2]
text = path.read_text()
marker = "\n## Looking Ahead\n"
if marker in text:
    text = text.split(marker)[0].rstrip() + "\n"
text = text.rstrip() + "\n---\n\n## Looking Ahead\n\n" + section.strip() + "\n"
path.write_text(text)
PY
}

write_section "00-preface.qmd" "The next chapter introduces the Career System as a complete growth architecture.

It shows how readiness, skills, direction, learning, portfolio evidence, visibility, mentorship, job-market preparation, workplace performance, resilience, and opportunity design connect into one professional development system."

write_section "01-system-overview.qmd" "The next chapter begins the practical journey with career readiness.

Before a learner builds a portfolio, applies for opportunities, or redesigns a professional profile, they need to understand their current level of readiness: what they can do, what they can show, where they need support, and what kind of growth path is realistic now."

write_section "02-career-readiness.qmd" "The next chapter turns readiness into a visible skills inventory.

Once a learner understands their current readiness, the next step is to list and organize their skills honestly so that strengths, gaps, evidence, and learning priorities become easier to see."

write_section "03-skills-inventory.qmd" "The next chapter uses the skills inventory to clarify career direction.

A skills list becomes more useful when it is connected to a possible direction, role family, field, or opportunity pathway. Direction helps the learner decide which skills to deepen, which projects to build, and which opportunities to pursue first."

write_section "04-career-direction.qmd" "The next chapter converts career direction into a learning plan.

After a learner identifies a realistic direction, the question becomes practical: what should they learn next, in what order, with what evidence, and within what timeframe?"

write_section "05-learning-plan.qmd" "The next chapter turns learning into portfolio building.

A learning plan should not stop at reading, watching, or attending sessions. It should lead to visible outputs that demonstrate capability, progress, judgment, and readiness for real opportunities."

write_section "06-portfolio-building.qmd" "The next chapter strengthens the portfolio through project-based proof.

A portfolio becomes more convincing when it contains projects that show the learner can define a problem, produce an output, explain decisions, respond to feedback, and connect the work to a real-world need."

write_section "07-project-based-proof.qmd" "The next chapter moves from proof to communication and visibility.

Even strong work can remain invisible if it is not explained clearly. The next layer helps learners communicate what they built, what they learned, why it matters, and how others can understand their professional value."

write_section "08-communication-and-visibility.qmd" "The next chapter connects visibility with networking and mentorship.

Professional growth is strengthened when learners can ask better questions, seek feedback, build supportive relationships, and learn from people who understand the field or pathway they are entering."

write_section "09-networking-and-mentorship.qmd" "The next chapter prepares the learner for the job market.

Networking and mentorship help clarify opportunity, but job-market readiness requires another layer: understanding role expectations, matching evidence to job descriptions, preparing application materials, and identifying realistic next steps."

write_section "10-job-market-readiness.qmd" "The next chapter translates job-market readiness into a stronger CV, LinkedIn profile, and professional presentation.

The learner now needs a profile that communicates direction, evidence, skills, projects, experience, and credibility clearly enough for reviewers, mentors, recruiters, collaborators, and decision-makers."

write_section "11-cv-linkedin-and-profile.qmd" "The next chapter prepares the learner for interviews and career conversations.

A strong profile may open a door, but the learner still needs to explain their work, discuss decisions, handle questions, tell a coherent career story, and learn from professional conversations."

write_section "12-interviews-and-career-conversations.qmd" "The next chapter moves from getting an opportunity to performing well inside one.

Career growth does not end at selection. Once inside a workplace, project, internship, fellowship, business, or collaboration, the learner needs habits that support contribution, reliability, feedback, learning, and trust."

write_section "13-workplace-performance.qmd" "The next chapter focuses on resilience and diversification.

Workplace performance matters, but sustainable professional growth also requires adaptability. The learner needs to reduce overdependence on one path, keep learning, build options, and prepare for change without panic."

write_section "14-career-resilience-and-diversification.qmd" "The next chapter organizes career growth into a personal operating system.

Resilience becomes easier when the learner has routines for reviewing goals, tracking evidence, updating skills, maintaining relationships, managing energy, and adjusting direction over time."

write_section "15-personal-operating-system.qmd" "The next chapter connects professional growth to income growth and opportunity design.

A personal operating system helps the learner stay consistent. The next step is to identify how skills, evidence, relationships, and visibility can create better opportunities, stronger negotiation positions, and more sustainable income pathways."

write_section "16-income-growth-and-opportunity-design.qmd" "The next chapter brings the full Career System together through an end-to-end case study.

The case study shows how a learner can move from readiness assessment to skills inventory, direction, learning plan, portfolio evidence, visibility, mentorship, job-market readiness, workplace performance, resilience, and opportunity design."

write_section "17-end-to-end-career-growth-case-study.qmd" "The next chapter turns the case study into a roadmap for continued use of the Career System.

Instead of treating career development as a one-time activity, the roadmap shows how learners, mentors, training programs, and professionals can revisit the system across different stages of growth."

write_section "18-career-system-roadmap.qmd" "The appendix provides reusable templates, checklists, folder maps, and review tools that support the Career System in practice.

These resources help learners and mentors convert the guide from reading material into repeatable professional growth workflows."

write_section "999-appendix.qmd" "The references section lists the evidence base that supports the Career System.

As the guide develops, this reference layer can expand to include career development theory, employability research, mentoring literature, career adaptability, learning design, professional identity, and labor-market readiness."

write_section "999-references.qmd" "The Career System can continue to grow as a living CDI pathway.

Future versions can add deeper case studies, mentor guides, learner worksheets, program implementation examples, and evidence-based updates as career development research and workplace expectations evolve."

echo "Looking Ahead sections added/refreshed."
