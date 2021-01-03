# load packages ----------------------------------------------------------------

library(tidyverse)
library(usethis)
library(here)

# load data --------------------------------------------------------------------

sibling_heights <- read_csv(here::here("data-raw/sibling_heights/sibling_heights.csv"))

# save -------------------------------------------------------------------------

usethis::use_data(sibling_heights, overwrite = TRUE)
