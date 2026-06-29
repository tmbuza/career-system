#!/usr/bin/env bash
set -euo pipefail

required_files=(
  "_quarto.yml"
  "index.qmd"
  "00-preface.qmd"
  "01-system-overview.qmd"
  "18-career-system-roadmap.qmd"
  "999-appendix.qmd"
  "999-references.qmd"
  "README.md"
  "references.bib"
)

missing=0
for file in "${required_files[@]}"; do
  if [[ -f "$file" ]]; then
    echo "FOUND: $file"
  else
    echo "MISSING: $file"
    missing=1
  fi
done

if [[ -d "assets/images/cover" ]]; then
  echo "FOUND: assets/images/cover/"
else
  echo "MISSING: assets/images/cover/"
  missing=1
fi

if [[ "$missing" -eq 0 ]]; then
  echo "Career System scaffold check passed."
else
  echo "Career System scaffold check failed."
  exit 1
fi
