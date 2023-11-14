# Load packages ----------------------------------------------------------------

library(openintro)
library(tidyverse)
library(usethis)
library(lubridate)

# Load data --------------------------------------------------------------------

mens_raw <- read_delim("data-raw/nyc_marathon/nyc-marathon-mens.txt", delim = "|", trim_ws = TRUE)

mens <- mens_raw |>
  mutate(
    time_hms = hms(time),
    time_hr = hour(time_hms),
    time_min = minute(time_hms),
    time_sec = second(time_hms),
    time_hrs = time_hr + time_min / 60 + time_sec / (60 * 60),
    division = "Men",
    name = iconv(name, from = "latin1", to = "ASCII", "")
  ) |>
  select(-time_hms, -time_hr, -time_min, -time_sec) |>
  relocate(note, .after = division)

womens_raw <- read_delim("data-raw/nyc_marathon/nyc-marathon-womens.txt", delim = "|", trim_ws = TRUE)

womens <- womens_raw |>
  mutate(
    time_hms = hms(time),
    time_hr = hour(time_hms),
    time_min = minute(time_hms),
    time_sec = second(time_hms),
    time_hrs = time_hr + time_min / 60 + time_sec / (60 * 60),
    division = "Women",
    name = iconv(name, from = "latin1", to = "ASCII", "")
  ) |>
  select(-time_hms, -time_hr, -time_min, -time_sec) |>
  relocate(note, .after = division)

nyc_marathon <- bind_rows(mens, womens) |>
  arrange(year, division)

# Add to package
use_data(nyc_marathon, overwrite = TRUE)
