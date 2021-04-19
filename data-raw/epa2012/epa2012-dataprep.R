# Load previous version of openintro package containing previous version
# of evals data frame. I took the last commit on 2020-04-14:
# remotes::install_github("https://github.com/OpenIntroStat/openintro@aa626b1aa910af281e0d443743e2a77b7a267137", force = TRUE)
library(openintro)
library(tidyverse)
library(usethis)

# Make empty levels NAs and fix date type
epa2012 <- openintro::epa2012 %>%
  mutate(
    across(where(is.factor), str_replace, "^$", NA_character_),
    across(where(is.character), as.factor),
    transmission_desc = fct_relevel(transmission_desc, "Other", after = 6L),
    release_date = lubridate::mdy(as.character(release_date)),
    air_aspir_method = if_else(air_aspir_method_desc == "Naturally Aspirated", "NA", as.character(air_aspir_method)),
    air_aspir_method = as.factor(air_aspir_method)
    )

# Add to package
use_data(epa2012, overwrite = TRUE)
