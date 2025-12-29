# scripts/01_load_clean.R
# Step 1: load freMTPL2 data (frequency + severity) and do basic cleaning

library(tidyverse)

# If you DON'T have the dataset package yet, run this once in RStudio:
# install.packages("CASdatasets")

library(CASdatasets)

# load the two tables
data("freMTPL2freq")
data("freMTPL2sev")

# frequency table (policy-level) 
freq = freMTPL2freq |>
  mutate(Exposure = as.numeric(Exposure),
         ClaimNb = as.integer(ClaimNb)) |>
  filter(!is.na(Exposure), Exposure > 0)

# severity table (claim-level) 
sev <- freMTPL2sev |>
  mutate(ClaimAmount = as.numeric(ClaimAmount)) |>
  filter(!is.na(ClaimAmount), ClaimAmount > 0)

# quick sanity check
glimpse(freq)
glimpse(sev)

# save locally for the next scripts
saveRDS(freq, "outputs/freq_clean.rds")
saveRDS(sev,  "outputs/sev_clean.rds")

cat("Saved: outputs/freq_clean.rds and outputs/sev_clean.rds\n")
