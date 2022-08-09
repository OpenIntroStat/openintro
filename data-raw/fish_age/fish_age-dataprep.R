# Load packages --------------------------------------------------------------

library(readr)
library(dplyr)

# Load data ------------------------------------------------------------------

raw_data <- read_csv(here::here("data-raw/fish_age/north_sea_fish.csv"))

# Cleaning: ------------------------------------------------------------------

fish_age <- raw_data

# Save -----------------------------------------------------------------------

usethis::use_data(fish_age, overwrite = TRUE)
