library(readr)
library(janitor)
library(dplyr)

# load data --------------------------------------------------------------------

raw_data <- read_csv(here::here("data-raw/cars04/cars04.csv"),
  col_types = cols(
    msrp = col_integer(),
    dealer_cost = col_integer(),
    ncyl = col_integer(),
    horsepwr = col_integer(),
    city_mpg = col_integer(),
    hwy_mpg = col_integer(),
    weight = col_integer(),
    wheel_base = col_integer(),
    length = col_integer(),
    width = col_integer()
  )
)

# cleaning: none required

cars04 <- raw_data


# save -------------------------------------------------------------------------

usethis::use_data(cars04, overwrite = TRUE)
