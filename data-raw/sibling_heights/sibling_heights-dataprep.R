library(readr)
library(usethis)
library(here)
library(dplyr)
library(janitor)

# load data --------------------------------------------------------------------

sibling_heights <- read.csv(here::here("data-raw/sibling_heights/sibling_heights.csv"))

# cleaning: clean variable names

sibling_heights <- janitor::clean_names(sibling_heights) %>%
  rename(family = i_family)


# save -------------------------------------------------------------------------

usethis::use_data(sibling_heights, overwrite= TRUE)
