library(readr)


# load data ---------------------------------------------------------------------
raw_data <- read.csv(here::here("data-raw/paralympic_1500/paralympic_1500.csv"))

# cleaning: none required

paralympic_1500 <- raw_data

# save --------------------------------------------------------------------------

usethis::use_data(paralympic_1500, overwrite = TRUE)
