library(readr)

# load data ---------------------------------------------------------------------
raw_data <- read.csv(here::here("data-raw/baby_names/baby_names.csv"))

# cleaning ----------------------------------------------------------------------

# no cleaning required
baby_names<- raw_data

# save --------------------------------------------------------------------------

usethis::use_data(baby_names, overwrite = TRUE)
