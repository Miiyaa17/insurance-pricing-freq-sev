# scripts/01_load_clean.R
# Step 1: Load the data + do some light cleaning

library(tidyverse)

# temporary placeholder for the file.
raw_path <- "data/PUT_DATA_FILE_HERE.csv"

# load data.
raw = read_csv(raw_path)

# quick look of the data.
glimpse(raw)

# light cleaning placeholder ( going to edit once we know the real column names)
clean = raw |>
  drop_na()   # removes rows with missing values

# save a cleaned copy for the next scripts
write_rds(clean, "data/clean_data.rds")
