library(readr)

# load data ---------------------------------------------------------------------
raw_data <- read.csv(here::here("data-raw/sowc_demographics/sowc_demographics.csv"))

# cleaning ----------------------------------------------------------------------

# no cleaning required
sowc_demographics<- raw_data

# save --------------------------------------------------------------------------

usethis::use_data(sowc_demographics, overwrite = TRUE)
