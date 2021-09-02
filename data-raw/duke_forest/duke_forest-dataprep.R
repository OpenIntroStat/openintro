# load packages ----------------------------------------------------------------

library(tidyverse)
library(lubridate)

# load data -------------------------------------------------------------------

duke_forest_raw <- read_csv("data-raw/duke_forest/duke-forest.csv")

# clean data -------------------------------------------------------------------

duke_forest <- duke_forest_raw %>%
  mutate(
    cooling = case_when(
      cooling == "Central" ~ "central",
      cooling == "Central, Other" ~ "central",
      TRUE ~ "other"
    ),
    cooling = fct_rev(cooling)
  ) %>%
  rename(url = link) %>%
  relocate(url, .after = last_col())

# Save ------------------------------------------------------------------------

usethis::use_data(duke_forest, overwrite = TRUE)
