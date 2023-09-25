library(readr)


# load data ---------------------------------------------------------------------
raw_data <- read.csv(here::here("data-raw/paralympic_1500/paralympic_1500.csv"))

# cleaning ---------------------------------------------------------------------

paralympic_1500 <- raw_data |>
  mutate(time_min = time) |>
  mutate(time = paste(min,sec,sep=":")) |>
  select(-min, -sec)

# save --------------------------------------------------------------------------

usethis::use_data(paralympic_1500, overwrite = TRUE)
