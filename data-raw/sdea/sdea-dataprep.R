# load packages ----------------------------------------------------------------

library(tidyverse)
library(janitor)

# load data --------------------------------------------------------------------

sdea <- read_csv("data-raw/sdea/sdea.csv")

# cleaning: clean names --------------------------------------------------------

sdea <- sdea |>
  clean_names()

# save -------------------------------------------------------------------------

usethis::use_data(sdea, overwrite = TRUE)
