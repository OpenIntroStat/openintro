# load packages ----------------------------------------------------------------
library(tidyverse)
library(usethis)

# load data --------------------------------------------------------------------

fastfood <- read_csv(here::here("data-raw/fastfood", "fastfood.csv"))

fastfood <- fastfood %>%
  select(-X1)

# Save -------------------------------------------------------------------------

use_data(fastfood, overwrite = TRUE)
