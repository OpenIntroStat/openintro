# Load previous version of openintro package containing previous version
# of evals data frame. I took the last commit on 2021-03-18:
# remotes::install_github("https://github.com/OpenIntroStat/openintro@fddc6bba571b3a365483e15768425ad1d0fa71c2", force = TRUE)
library(openintro)
library(tidyverse)
library(usethis)

orings_orig <- orings

# Create other columns ---------------------------------------------------------

orings <- orings_orig |>
  rename(
    temperature = temp,
    damaged = damage
  ) |>
  mutate(
    mission = 1:nrow(orings),
    undamaged = 6 - damaged
  ) |>
  relocate(mission)

# Save -------------------------------------------------------------------------

use_data(orings, overwrite = TRUE)
