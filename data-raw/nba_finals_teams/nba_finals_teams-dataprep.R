# Load packages --------------------------------------------------------------

library(dplyr)
library(readr)

# Load data ------------------------------------------------------------------

raw_data <- read_csv(here::here("data-raw/nba_finals_teams/nba_finals_teams.csv"))

# Cleaning: ------------------------------------------------------------------

nba_finals_teams <- raw_data %>%
  janitor::clean_names() %>%
  mutate(
    win = as.integer(ifelse(win == "—", 0, win)),
    loss = as.integer(ifelse(loss == "—", 0, loss)),
    apps = as.integer(ifelse(apps == "—", 0, apps)),
    pct = as.double(ifelse(pct == "—", 0, pct)),
    years_won = ifelse(years_won == "—", NA, years_won),
    years_lost = ifelse(years_lost == "—", NA, years_lost)
  )

# Save -----------------------------------------------------------------------

usethis::use_data(nba_finals_teams, overwrite = TRUE)
