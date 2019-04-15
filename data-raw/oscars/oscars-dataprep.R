# load packages ----------------------------------------------------------------
library(openintro)
library(tidyverse)
library(lubridate)
library(glue)
library(usethis)

# load old version of data -----------------------------------------------------

oscars_old <- read_csv(here::here("data-raw/oscars", "oscars-old.csv"))

# fix Sandra Bullock's birthday ------------------------------------------------

oscars_old_fixed <- oscars_old %>%
  mutate(
    birth_mo = ifelse(name == "Sandra Bullock", 7, birth_mo),
    birth_d = ifelse(name == "Sandra Bullock", 26, birth_d)
  )

# add recent data --------------------------------------------------------------

oscars_new <- read_csv("data-raw/oscars/oscars-new.csv")

# combine ----------------------------------------------------------------------

oscars_combined <- bind_rows(oscars_old_fixed, oscars_new)

# fixes ------------------------------------------------------------------------

oscars <- oscars_combined %>%
  mutate(
    ## make age difference between award year and birth year
    birth_date = glue("{birth_y}-{birth_mo}-{birth_d})") %>% ymd(),
    # assume Oscars on Jan 1
    oscar_date = glue("{oscar_yr}-01-01") %>% ymd(),
    age = (decimal_date(oscar_date) - decimal_date(birth_date)) %>% floor(),
    ## gender -> award
    award = ifelse(gender == "male", "Best actor", "Best actress")
    ) %>%
  select(oscar_no, oscar_yr, award, name, movie, age, birth_pl,
         birth_date, birth_mo, birth_d, birth_y)

# Save -------------------------------------------------------------------------
use_data(oscars, overwrite = TRUE)
