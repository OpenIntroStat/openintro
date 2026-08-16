# load packages ----------------------------------------------------------------

library(tidyverse)
library(janitor)

# load data --------------------------------------------------------------------

Brazil_death_anxiety <- read_csv("data-raw/Brazil_death_anxiety/Brazil_death_anxiety.csv")

# cleaning: clean names --------------------------------------------------------

Brazil_death_anxiety <- Brazil_death_anxiety |>
  clean_names() |>
  select(-country) |>
  rename(employment = employment_fulltime)

# save -------------------------------------------------------------------------

usethis::use_data(Brazil_death_anxiety, overwrite = TRUE)
