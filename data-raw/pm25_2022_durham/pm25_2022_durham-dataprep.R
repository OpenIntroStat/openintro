library(readr)
library(janitor)


# load data ---------------------------------------------------------------------
raw_data <- read.csv(here::here("data-raw/pm25_2022_durham/pm25_2022_durham.csv"),
                     stringsAsFactors = TRUE)

# cleaning: none required

pm25_2022_durham <- raw_data |>
  janitor::clean_names()

# save --------------------------------------------------------------------------

usethis::use_data(pm25_2022_durham, overwrite = TRUE)
