library(readr)
library(usethis)
library(here)
library(dplyr)
library(janitor)

# load data --------------------------------------------------------------------

salinity <- read.csv(here::here("data-raw/salinity/salinity.csv"))

# cleaning: clean variable names

salinity <- janitor::clean_names(salinity) %>%
  rename(site_number = i_site_number)


# save -------------------------------------------------------------------------

usethis::use_data(salinity, overwrite= TRUE)
