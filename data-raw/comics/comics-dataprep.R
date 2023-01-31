library(readr)
library(dplyr)
library(stringr)

# load data --------------------------------------------------------------------

raw_data <- read_csv(here::here("data-raw/comics/comics.csv"))

# cleaning: none required

comics <- raw_data %>%
  filter(!is.na(appearances)) %>%
  mutate(publisher = ifelse(publisher == "dc", "DC", "Marvel"))


# save -------------------------------------------------------------------------

usethis::use_data(comics, overwrite = TRUE)
