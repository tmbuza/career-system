# Career System

**Subtitle:** From Skills to Sustainable Professional Growth  
**Author:** Teresia Mrema Buza | Complex Data Insights  
**Organization:** Complex Data Insights  
**Guide type:** CDI System Guide

The **Career System** is a CDI pathway guide for learners, early-career professionals, technical professionals, mentors, educators, and career changers.

It helps people move from scattered career effort into a structured professional growth system.

The guide connects skills, learning, evidence, communication, mentorship, opportunity, workplace performance, resilience, and long-term growth.

---

## Purpose

Many learners are told to improve their skills, write a CV, apply for jobs, or find a mentor.

Those actions matter, but they are not enough when they are disconnected.

The Career System helps learners answer a deeper sequence of questions:

```text
What direction am I growing toward?
What skills do I have now?
What do I need to learn next?
How can I prove what I can do?
How can I communicate my value clearly?
Who can give feedback or guidance?
What opportunities fit my current evidence?
How do I perform, adapt, and keep growing?
```

The goal is sustainable professional growth, not short-term motivation.

---

## Career System Flow

```{mermaid}
flowchart TD
    A[Career Readiness] --> B[Skills Inventory]
    B --> C[Career Direction]
    C --> D[Learning Plan]
    D --> E[Project-Based Proof]
    E --> F[Portfolio Evidence]
    F --> G[Communication and Visibility]
    G --> H[Networking and Mentorship]
    H --> I[Job Market Readiness]
    I --> J[Career Conversations]
    J --> K[Workplace Performance]
    K --> L[Career Resilience]
    L --> M[Personal Operating System]
    M --> N[Opportunity Design]
    N --> O[Sustainable Professional Growth]
```

---

## Who This Guide Is For

This guide is useful for:

- beginners who are trying to understand how career growth works,
- learners in technical or professional training programs,
- early-career professionals preparing for opportunity,
- experienced professionals who want to reposition or keep growing,
- mentors supporting youth, students, or professionals,
- training programs that need a career-readiness layer,
- and organizations supporting workforce development.

The guide is intentionally written so that a learner can benefit even without using the command line.

The bash scripts are optional reproducibility tools for people using the repo.

---

## Chapter Structure

```text
index.qmd
00-preface.qmd
01-system-overview.qmd
02-career-readiness.qmd
03-skills-inventory.qmd
04-career-direction.qmd
05-learning-plan.qmd
06-portfolio-building.qmd
07-project-based-proof.qmd
08-communication-and-visibility.qmd
09-networking-and-mentorship.qmd
10-job-market-readiness.qmd
11-cv-linkedin-and-profile.qmd
12-interviews-and-career-conversations.qmd
13-workplace-performance.qmd
14-career-resilience-and-diversification.qmd
15-personal-operating-system.qmd
16-income-growth-and-opportunity-design.qmd
17-end-to-end-career-growth-case-study.qmd
18-career-system-roadmap.qmd
999-appendix.qmd
999-references.qmd
```

---

## Practical Outputs

By working through the guide, a learner can build a practical career growth package:

```text
career-readiness-self-assessment.csv
skills-inventory-template.csv
career-direction-map-template.csv
learning-plan-template.csv
portfolio-building-template.csv
project-based-proof-template.csv
communication-visibility-template.csv
networking-mentorship-template.csv
job-market-readiness-template.csv
cv-linkedin-profile-template.csv
interview-conversation-template.csv
workplace-performance-template.csv
career-resilience-diversification-template.csv
personal-operating-system-template.csv
opportunity-design-template.csv
career-system-roadmap-template.csv
```

These outputs are not only worksheets.

They are career operating tools.

---

## Repository Structure

```text
career-system/
├── _quarto.yml
├── index.qmd
├── 00-preface.qmd
├── 01-system-overview.qmd
├── 02-career-readiness.qmd
├── ...
├── 18-career-system-roadmap.qmd
├── 999-appendix.qmd
├── 999-references.qmd
├── references.bib
├── README.md
├── assets/
│   └── images/
│       ├── cover/
│       └── figures/
├── data/
│   └── templates/
├── results/
└── scripts/
    └── bash/
```

---

## Cover Image

The front page expects the cover image at:

```text
assets/images/cover/career-system-cover.png
```

---

## Render the Guide

From the project root, run:

```bash
quarto render
```

Preview locally:

```bash
quarto preview
```

---

## Optional Template Scripts

Each practical chapter includes an optional bash script that creates template files.

Example:

```bash
bash scripts/bash/02-create-career-readiness-template.sh
bash scripts/bash/03-create-skills-inventory-template.sh
bash scripts/bash/04-create-career-direction-template.sh
```

Learners who are not using bash can manually copy the tables from the chapters into a spreadsheet, notebook, or document.

---

## Scaffold Check

The scaffold includes a check script:

```bash
bash scripts/bash/check-career-system-scaffold.sh
```

You can also check that every chapter has a Looking Ahead section:

```bash
grep -R "^## Looking Ahead" *.qmd
```

---

## Relationship to the CDI Ecosystem

The Career System supports learners across the wider CDI ecosystem, including:

- Data Science Foundations System,
- Applied Data Science System,
- Omics Systems,
- Clinical & Medical Data Systems,
- AI Systems,
- Thinking and Decision Systems,
- and community learning pathways such as JIONGEZE.

Technical systems help learners build capability.

The Career System helps learners convert capability into visible evidence, opportunity, performance, and sustainable professional growth.

---

## Evidence Base

The guide includes an evidence-aware references layer covering career development theory, employability, adaptability, mentoring, experiential learning, reflective practice, and adult learning.

References are maintained in:

```text
references.bib
999-references.qmd
```

---

## Suggested Commit

After placing updated files in the repo, run:

```bash
git add .
git commit -m "Expand Career System guidance chapters and references"
git push
```

---

## Status

This guide is in active development.

The current version provides a complete chapter pathway, supporting templates, optional bash tools, and a learner-centered professional growth framework.
