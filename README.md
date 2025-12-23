# Auto Insurance Pricing — Frequency–Severity GLMs (R)

This project builds a simple actuarial pricing model using real auto insurance data:
- **Frequency model:** Poisson GLM with exposure offset  
- **Severity model:** Gamma GLM (log link) on positive claims  
- **Output:** segment-level **pure premium** + basic train/test validation

## Data
Real MTPL (motor third party liability) data loaded from an R package (no raw data stored in this repo).

## Tech
R, tidyverse, ggplot2, GLM, RMarkdown

## How to run
1. Open RStudio
2. Run scripts in order:
   - `scripts/00_setup.R`
   - `scripts/01_eda.R`
   - `scripts/02_frequency_glm.R`
   - `scripts/03_severity_glm.R`
   - `scripts/04_premium_validation.R`

## Status
In progress (Dec 2025)
