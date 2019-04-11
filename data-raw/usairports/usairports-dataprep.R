# US Airport public/private info
# Downloaded 2018-08-13
# Source: https://www.faa.gov/airports/airport_safety/airportdata_5010/menu/

# load packages ----------------------------------------------------------------
library(tidyverse)
library(nycflights13)
library(janitor)
library(measurements)
library(here)
library(lubridate)

# load airport data ------------------------------------------------------------
usairports <- read_csv(here::here("data-raw/usairports", "usairports.csv"))

# clean airport data -----------------------------------------------------------
usairports <- usairports %>%
  janitor::clean_names() %>%
  rename(
    dontremove_ownership = ownership,  # temporary rename to not remove following select
    effective_date       = efd
    ) %>%
  select(
    -starts_with("manager"),
    -starts_with("owner")
    ) %>%
  rename(
    ownership = dontremove_ownership  # undo earlier temporary rename
  ) %>%
  mutate(
    effective_date = mdy(effective_date)
  )

# Save -------------------------------------------------------------------------
use_data(usairports)
