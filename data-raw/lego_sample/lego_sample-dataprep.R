library(readxl)
library(janitor)
library(dplyr)

# load data ---------------------------------------------------------------------
lego_sample <- read_excel(here::here("data-raw/lego_sample/lego_sample.xlsx"))

# cleaning ----------------------------------------------------------------------

# cleaning: Making Variables Snake Case

lego_sample <- lego_sample %>% 
  clean_names() %>% 
  select(-availability)

# save --------------------------------------------------------------------------

usethis::use_data(lego_sample, overwrite = TRUE)

