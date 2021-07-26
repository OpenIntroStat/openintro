library(readr)

# load data ---------------------------------------------------------------------
raw_data <- read.csv(here::here("data-raw/sowc_maternal_newborn/sowc_maternal_newborn.csv"))

# cleaning ----------------------------------------------------------------------
# no clean required

sowc_maternal_newborn<- raw_data

# save --------------------------------------------------------------------------

usethis::use_data(sowc_maternal_newborn, overwrite = TRUE)
