# load packages ----------------------------------------------------------------

library(tidyverse)
library(janitor)

# load data ---------------------------------------------------------------------

pm25_2022_durham_raw <- read_csv(here::here("data-raw/pm25_2022_durham/pm25_2022_durham.csv"))

# cleaning to match 2011 data ---------------------------------------------------

pm25_2022_durham <- pm25_2022_durham_raw |>
  clean_names() |>
  mutate(date = mdy(date)) |>
  select(-source) |>
  rename(aqs_site_id = site_id) |>
  mutate(aqs_site_id = as.character(aqs_site_id)) |>
  mutate(poc = as.integer(poc)) |>
  mutate(daily_obs_count = as.integer(daily_obs_count)) |>
  mutate(percent_complete = as.integer(percent_complete)) |>
  mutate(aqs_parameter_code = as.integer(aqs_parameter_code)) |>
  mutate(cbsa_code = as.integer(cbsa_code)) |>
  mutate(state_code = as.integer(state_code)) |>
  mutate(county_code = as.integer(county_code)) |>
  relocate(site_name, .after = site_longitude) |>
  mutate(aqs_parameter_desc = as.factor(aqs_parameter_desc))

# save data --------------------------------------------------------------------

usethis::use_data(pm25_2022_durham, overwrite = TRUE)
