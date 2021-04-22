# load packages ----------------------------------------------------------------

library(tidyverse)
library(usethis)

# load data -------------------------------------------------------------------

lizard_run <- read_csv(here::here("data-raw/lizard_run/lizards.csv"))

# Save ------------------------------------------------------------------------

usethis::use_data(lizard_run, overwrite = TRUE)
