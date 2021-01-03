# load packages ----------------------------------------------------------------

library(tidyverse)
library(janitor)

# load data ---------------------------------------------------------------------

major_earthquakes <- read_csv("data-raw/major_earthquakes/major_earthquakes.csv")

# cleaning: remove X variable, clean names -------------------------------

major_earthquakes <- major_earthquakes %>%
  select(-X1) %>%
  clean_names()

# save --------------------------------------------------------------------------

usethis::use_data(major_earthquakes, overwrite = TRUE)
