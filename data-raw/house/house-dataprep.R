# load packages ----------------------------------------------------------------
library(tidyverse)
library(usethis)

# load old version of data -----------------------------------------------------

house_old <- read_csv(here::here("data-raw/house", "house-old.csv"))

# add new records --------------------------------------------------------------
# from https://history.house.gov/Institution/Party-Divisions/Party-Divisions/

house_recent <- tibble(
  congress = c(113:116),
  year_start = seq(2013, 2019, 2),
  year_end = seq(2015, 2021, 2),
  seats = rep(435, 4),
  p1 = rep("Democrats", 4),
  np1 = c(201, 188, 194, 235),
  p2 = rep("Republicans", 4),
  np2 = c(234, 247, 241, 199),
  other = rep(0, 4),
  vac = rep(0, 4),
  del = rep(5, 4),
  res = rep(1, 4)
)

house <- bind_rows(house_old, house_recent)

# Save -------------------------------------------------------------------------
use_data(house, overwrite = TRUE)
