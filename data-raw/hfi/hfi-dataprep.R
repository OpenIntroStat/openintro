# load packages ----------------------------------------------------------------
library(tidyverse)
library(usethis)

# load data --------------------------------------------------------------------

hfi <- read_csv(here::here("data-raw/hfi", "hfi_cc_2018.csv"))

# Save -------------------------------------------------------------------------

use_data(hfi, overwrite = TRUE)
