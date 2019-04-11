library(openintro)
library(tidyverse)
library(lubridate)
library(glue)

# load old version of data -----------------------------------------------------

data(oscars)
oscars_old <- oscars

# fix Sandra Bullock's birthday ------------------------------------------------

oscars_old_fixed <- oscars_old %>%
  mutate(
    birth_mo = ifelse(name == "Sandra Bullock", 7, birth_mo),
    birth_d = ifelse(name == "Sandra Bullock", 26, birth_d)
  )

# add recent data --------------------------------------------------------------

oscars_recent <- read_csv("data-raw/oscars/oscars.csv")

# combine ----------------------------------------------------------------------

oscars_new <- bind_rows(oscars_old_fixed, oscars_recent)

# make age difference between award year and birth year ------------------------

oscars <- oscars_new %>%
  mutate(
    birth_date = glue("{birth_y}-{birth_mo}-{birth_d})") %>% ymd(),
    # assume Oscars on Jan 1
    oscar_date = glue("{oscar_yr}-01-01") %>% ymd(),
    age = (decimal_date(oscar_date) - decimal_date(birth_date)) %>% floor()
    ) %>%
  select(-oscar_date)

# Save -------------------------------------------------------------------------
use_data(oscars, overwrite = TRUE)
