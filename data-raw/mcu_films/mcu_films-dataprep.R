# load packages ----------------------------------------------------------------

library(tidyverse)

# load data ---------------------------------------------------------------------

mcu_films <- read_csv("data-raw/mcu_films/mcu_films.csv")

# cleaning: remove rating variable -------------------------------

mcu_films <- mcu_films |>
  select(-rating)

# save --------------------------------------------------------------------------

usethis::use_data(mcu_films, overwrite = TRUE)
