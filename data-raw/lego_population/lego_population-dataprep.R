library(readxl)
library(janitor)
library(dplyr)

# load data ---------------------------------------------------------------------
lego_population <- read_excel(here::here("data-raw/lego_population/lego_population.xlsx"))

# cleaning ----------------------------------------------------------------------

# cleaning: Making Variables Snake Case

lego_population <- lego_population %>% 
  clean_names() %>% 
  select(-availability)

# save --------------------------------------------------------------------------

usethis::use_data(lego_population, overwrite = TRUE)

