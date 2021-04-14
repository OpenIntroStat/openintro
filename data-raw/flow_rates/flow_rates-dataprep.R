# Load packages ----------------------------------------------------------------

library(tidyverse)
library(usethis)

# Load data --------------------------------------------------------------------

flow_rates_raw <- read_csv(here::here("data-raw/flow_rates/river_flow.csv"))

# Cleaning: correct data type and format for date ------------------------------

flow_rates <- flow_rates_raw %>%
  mutate(date = as.Date(date, format = "%m/%d/%Y"))

# Dave -------------------------------------------------------------------------

usethis::use_data(flow_rates, overwrite = TRUE)
