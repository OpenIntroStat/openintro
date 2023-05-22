library(readr)


# load data --------------------------------------------------------------------

raw_data <- read_csv(here::here("data-raw/manhattan/manhattan.csv"))

# cleaning: none required

manhattan <- raw_data

usethis::use_data(manhattan, overwrite = TRUE)
