library(readxl)
library(janitor)
library(dplyr)

# load data ---------------------------------------------------------------------

lego_population_raw <- read_excel(
  here::here("data-raw/lego_population/lego_population.xlsx"),
  na = c("", "NA")
)

# cleaning ----------------------------------------------------------------------

# cleaning: Making Variables Snake Case

lego_population <- lego_population_raw |>
  clean_names() |>
  select(-availability)

# save --------------------------------------------------------------------------

usethis::use_data(lego_population, overwrite = TRUE)
