library(readr)
library(dplyr)
library(stringr)

# load data --------------------------------------------------------------------

raw_data <- read_csv(here::here("data-raw/nyc/nyc.csv"))

# cleaning: none required

nyc <- raw_data %>%
  janitor::clean_names() %>%
  select(-case) %>%
  mutate(east = as.integer(east))



usethis::use_data(nyc, overwrite = TRUE)
