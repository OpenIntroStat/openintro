library(readr)
library(dplyr)
library(stringr)

# load data --------------------------------------------------------------------

raw_data <- read_csv(here::here("data-raw/life_exp/life_exp.csv"))

# cleaning: none required

life_exp <- raw_data |>
  mutate(
    state = str_to_title(state),
    county = str_to_title(county)
  )


# save -------------------------------------------------------------------------

usethis::use_data(life_exp, overwrite = TRUE)
