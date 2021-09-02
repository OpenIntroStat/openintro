# load packages ----------------------------------------------------------------

library(tidyverse)
library(usethis)
library(here)

# load data --------------------------------------------------------------------

salinity <- read_csv(here::here("data-raw/salinity/salinity.csv"))

# save -------------------------------------------------------------------------

usethis::use_data(salinity, overwrite = TRUE)
