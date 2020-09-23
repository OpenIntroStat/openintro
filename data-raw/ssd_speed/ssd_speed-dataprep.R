library(readr)
library(usethis)
library(here)
library(janitor)
library(dplyr)

# load data --------------------------------------------------------------------

ssd_speed <- read.csv(here::here("data-raw/ssd_speed/ssd_speed.csv"))

# cleaning: clean variable names

ssd_speed <- ssd_speed %>%
  janitor::clean_names() %>%
  rename(brand = i_brand)


# save -------------------------------------------------------------------------

usethis::use_data(ssd_speed, overwrite= TRUE)
