library(readr)
library(dplyr)

# load data --------------------------------------------------------------------

raw_data <- read_csv(here::here("data-raw/iran/iran.csv"))

# cleaning: none required ------------------------------------------------------

iran <- raw_data

# save data --------------------------------------------------------------------

usethis::use_data(iran, overwrite = TRUE)
