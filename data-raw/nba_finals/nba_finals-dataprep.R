# Load packages --------------------------------------------------------------

library(readr)
library(dplyr)
library(tidyr)

# Load data ------------------------------------------------------------------

raw_data <- read_csv(here::here("data-raw/nba_finals/nba_finals.csv"))

# Cleaning: ------------------------------------------------------------------

nba_finals <- raw_data %>%
  janitor::clean_names() %>%
  separate(col = "series", into = c("western_wins", "eastern_wins"), sep = "-")

# Save -----------------------------------------------------------------------

usethis::use_data(nba_finals, overwrite = TRUE)
