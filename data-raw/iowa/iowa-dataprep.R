library(readr)
library(dplyr)

# load data --------------------------------------------------------------------

raw_data <- read_csv(here::here("data-raw/iowa/iowa.csv"))

# cleaning: none required ------------------------------------------------------

iowa <- raw_data

# save data --------------------------------------------------------------------

usethis::use_data(iowa, overwrite = TRUE)
