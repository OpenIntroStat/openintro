library(readr)
library(dplyr)


# load data --------------------------------------------------------------------

raw_data <- read_csv(here::here("data-raw/twins/twins.csv"))

# cleaning: none required

twins <- raw_data %>%
  janitor::clean_names() %>%
  select(-social)

usethis::use_data(twins, overwrite = TRUE)
