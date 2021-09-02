# Load packages
library(tidyverse)
library(usethis)

# Load data
race_justice_table <- read_csv(here::here("data-raw/race_justice/race-justice-table.csv"))

race_justice <- race_justice_table %>%
  select(-unweighted_n) %>%
  pivot_longer(cols = -race, names_to = "response", values_to = "n") %>%
  uncount(weights = n) %>%
  rename(race_eth = race) %>%
  mutate(
    response = if_else(response == "not_sure", "not sure", response),
    response = str_to_sentence(response),
    response = fct_relevel(response, "Yes", "No", "Not sure"),
    race_eth = fct_relevel(race_eth, "White", "Black", "Hispanic", "Other")
  )

# Add to package
use_data(race_justice, overwrite = TRUE)
