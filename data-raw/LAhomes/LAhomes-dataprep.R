library(readr)
library(dplyr)
library(tidyr)

# load data --------------------------------------------------------------------

raw_data <- read_csv(here::here("data-raw/LAhomes/LAhomes.csv"))

# cleaning: none required

LAhomes <- raw_data |>
  select(-spa) |>
  mutate(
    pool = replace_na(raw_data$pool, "N"),
    garage = as.double(case_when(
      is.na(garage) == TRUE ~ "0",
      garage == "4+" ~ "4",
      TRUE ~ garage
    ))
  )

usethis::use_data(LAhomes, overwrite = TRUE)
