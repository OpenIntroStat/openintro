# load packages ----------------------------------------------------------------

library(tidyverse)
library(usethis)
library(here)
library(janitor)

# load data --------------------------------------------------------------------

ssd_speed <- read_csv(here::here("data-raw/ssd_speed/ssd_speed.csv"))

# save -------------------------------------------------------------------------

usethis::use_data(ssd_speed, overwrite = TRUE)
