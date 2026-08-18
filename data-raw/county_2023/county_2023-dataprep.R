# load packages ----------------------------------------------------------------

library(tidyverse)
library(janitor)

# load data --------------------------------------------------------------------

county_2023 <- read_csv(here::here("data-raw/county_2023/county_2023.csv"))

# cleaning: clean names --------------------------------------------------------

county_2023 <- county_2023 |>
  clean_names() |>
  select(-x1)
# save -------------------------------------------------------------------------

usethis::use_data(county_2023, overwrite = TRUE)
