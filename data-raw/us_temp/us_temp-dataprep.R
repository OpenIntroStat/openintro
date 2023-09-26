# Load packages ----------------------------------------------------------------

library(tidyverse)

# Load data --------------------------------------------------------------------

temp1950_raw <- read_csv(here::here("data-raw/us_temp/us_temp_1950.csv"))
temp2022_raw <- read_csv(here::here("data-raw/us_temp/us_temp_2022.csv"))

# prep data --------------------------------------------------------------------

us_temp_1950 <- temp1950_raw |>
  janitor::clean_names() |>
  group_by(station) |>
  mutate(tmax_na = sum(is.na(tmax))) |>
  filter(tmax_na < 5) |>
  ungroup()

stations_1950 <- table(us_temp_1950$station) |>
  names()

us_temp_2022 <- temp2022_raw |>
  janitor::clean_names() |>
  group_by(station) |>
  mutate(tmax_na = sum(is.na(tmax))) |>
  filter(tmax_na < 5) |>
  ungroup()

stations_2022 <- table(us_temp_2022$station) |>
  names()

station_list <- intersect(stations_1950, stations_2022)

us_temp <- us_temp_1950 |>
  rbind(us_temp_2022) |>
  filter(station %in% station_list) |>
  select(-tavg, -tobs, -tmax_na) |>
  mutate(year = as.factor(year(date)))

# save data –-------------------------------------------------------------------

usethis::use_data(us_temp, overwrite = TRUE)
