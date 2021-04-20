# load packages ----------------------------------------------------------------

library(tidyverse)
library(usethis)

# load data -------------------------------------------------------------------

lizards <- read_csv(here::here("data-raw/lizards/lizards.csv"))

# Save ------------------------------------------------------------------------

usethis::use_data(lizards, overwrite = TRUE)
