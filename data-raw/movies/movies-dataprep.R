library(readr)
library(dplyr)
library(stringr)

# load data --------------------------------------------------------------------

raw_data <- read_delim(here::here("data-raw/movies/movies.txt"), "\t")

# cleaning: none required

movies <- raw_data %>%
  janitor::clean_names() %>%
  mutate(box_office = box_office*(10^3))

usethis::use_data(movies, overwrite = TRUE)
