# load packages ----------------------------------------------------------------
library(tidyverse)
library(lubridate)

# load data --------------------------------------------------------------------
prius_mpg_raw <- read_csv(here::here("data-raw/prius_mpg", "prius_mpg.csv"))

# fix dates --------------------------------------------------------------------
prius_mpg <- prius_mpg_raw |>
  mutate(last_updated = mdy(last_updated))

# save -------------------------------------------------------------------------
use_data(prius_mpg, overwrite = TRUE)
