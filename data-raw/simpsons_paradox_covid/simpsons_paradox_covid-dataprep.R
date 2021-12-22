# Load packages --------------------------------------------------------------
library(readr)
library(dplyr)
library(tidyr)

# Load data ------------------------------------------------------------------

### Create a folder in the "data-raw" folder with the same name as the data
### set. Place the raw data file (.csv, .tsv, .xlsx, etc) here, then adjust ### the code below to match your data set.

raw_data <- read_csv(here::here("data-raw/simpsons_paradox_covid/simpsons_paradox.csv"))

# Cleaning: ------------------------------------------------------------------

clean_data <- raw_data %>%
  mutate(
    v_survived = v_cases - v_death,
    uv_survived = uv_cases - uv_death
  ) %>%
  select(-c(v_cases, uv_cases)) %>%
  pivot_longer(cols = -age_group, names_to = "outcome", values_to = "n") %>%
  uncount(weight = n) %>%
  separate(outcome, into = c("vaccine_status", "outcome"), sep = "_") %>%
  mutate(vaccine_status = case_when(
    vaccine_status == "v" ~ "vaccinated",
    vaccine_status == "uv" ~ "unvaccinated"
  ))

simpsons_paradox_covid <- clean_data

# Save -----------------------------------------------------------------------

usethis::use_data(simpsons_paradox_covid, overwrite = TRUE)
