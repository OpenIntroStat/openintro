library(readr)

# load data ---------------------------------------------------------------------
raw_data <- read.csv(here::here("data-raw/sowc_child_mortality/sowc_child_mortality.csv"))

# cleaning ----------------------------------------------------------------------

# no cleaning required
sowc_child_mortality<- raw_data

# save --------------------------------------------------------------------------

usethis::use_data(sowc_child_mortality, overwrite = TRUE)
