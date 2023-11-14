# load packages ----------------------------------------------------------------

library(tidyverse)
library(janitor)

# load data ---------------------------------------------------------------------

earthquakes <- read_csv("data-raw/earthquakes/earthquakes.csv")

# cleaning: clean names -------------------------------

earthquakes <- earthquakes |>
  clean_names()

# save --------------------------------------------------------------------------

usethis::use_data(earthquakes, overwrite = TRUE)
