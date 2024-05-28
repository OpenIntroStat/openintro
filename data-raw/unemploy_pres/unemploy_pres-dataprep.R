# Load previous version of openintro package containing previous version
# of unemployment_pres data frame. I took the last commit on 2021-04-25:
# remotes::install_github("https://github.com/OpenIntroStat/openintro@5aa653e38d20d14598e4dcfaa50e84ae259043be", force = TRUE)
library(openintro)
library(tidyverse)
library(usethis)

unemploy_pres_orig <- unemploy_pres

# Create other columns ---------------------------------------------------------

unemploy_pres <- unemploy_pres_orig |>
  mutate(
    party = if_else(party == "Democrate", "Democratic", "Republican"),
    party = as.factor(party)
  )

# Save -------------------------------------------------------------------------

use_data(unemploy_pres, overwrite = TRUE)
