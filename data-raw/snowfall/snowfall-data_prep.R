library(readr)
library(usethis)
library(here)
library(dplyr)
library(janitor)

# load data --------------------------------------------------------------------

snowfall <- read_csv(here::here("data-raw/snowfall/snowfall.csv"))

# save -------------------------------------------------------------------------

usethis::use_data(snowfall, overwrite = TRUE)
