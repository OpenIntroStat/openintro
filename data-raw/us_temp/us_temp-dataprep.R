# Load packages ----------------------------------------------------------------

library(openintro)
library(tidyverse)
library(usethis)
library(lubridate)

# Load data --------------------------------------------------------------------

us_temp <- read_csv("data-raw/us_temp/us_temp.csv") |>
  select(location, everything())

# Add to package
use_data(us_temp, overwrite = TRUE)

