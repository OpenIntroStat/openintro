library(readr)
library(usethis)
library(here)
library(dplyr)
library(janitor)

# load data --------------------------------------------------------------------

snowfall <- read.csv(here::here("data-raw/paradise_snowfall/paradise_snowfall.csv"))

# cleaning: clean variable names

snowfall <- janitor::clean_names(snowfall) %>%
  rename(year_start = i_year_start)


# save -------------------------------------------------------------------------

usethis::use_data(snowfall, overwrite= TRUE)
