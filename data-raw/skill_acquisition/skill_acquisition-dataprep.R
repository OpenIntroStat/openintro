# load packages ----------------------------------------------------------------

library(tidyverse)
library(janitor)

# load data --------------------------------------------------------------------

skill_acquisition <- read_csv("data-raw/skill_acquisition/skill_acquisition.csv")

# cleaning: clean names --------------------------------------------------------

skill_acquisition <- skill_acquisition |>
  clean_names()

# save -------------------------------------------------------------------------

usethis::use_data(skill_acquisition, overwrite = TRUE)
