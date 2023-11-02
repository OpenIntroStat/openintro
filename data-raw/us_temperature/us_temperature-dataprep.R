# Load packages ----------------------------------------------------------------

library(openintro)
library(tidyverse)
library(usethis)
library(lubridate)

# Load data --------------------------------------------------------------------

us_temperature <- read_csv("data-raw/us_temperature/us_temperature.csv") |>
  select(location, everything())

# Add to package
usethis::use_data(us_temperature, overwrite = TRUE)

