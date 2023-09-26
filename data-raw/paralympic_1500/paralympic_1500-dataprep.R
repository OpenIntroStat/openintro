# load packages ----------------------------------------------------------------

library(tidyverse)

# load data --------------------------------------------------------------------

paralympic_1500_raw <- read_csv(here::here("data-raw/paralympic_1500/paralympic_1500.csv"))

# cleaning ---------------------------------------------------------------------

paralympic_1500 <- paralympic_1500_raw |>
  mutate(time_min = time) |>
  mutate(time = paste(min, sec, sep = ":")) |>
  select(-min, -sec)

# save data --------------------------------------------------------------------

usethis::use_data(paralympic_1500, overwrite = TRUE)
