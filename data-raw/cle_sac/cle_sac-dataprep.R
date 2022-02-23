# Load previous version of openintro package containing previous version
# of evals data frame. I took the last commit on 2021-12-21:
# remotes::install_github("https://github.com/OpenIntroStat/openintro@cb32b76fb380bcd2cb46135f3eb67d6ddf183339", force = TRUE)
library(openintro)
library(tidyverse)
library(usethis)

cle_sac <- cle_sac %>%
  mutate(
    race = case_when(
      str_detect(race, "White") ~ "White",
      str_detect(race, "Black") ~ "Black",
      TRUE ~ "Other",
    ),
    city = str_remove(city, "\\_ CA"),
    city = str_remove(city, "\\_ OH"),
    marital_status = str_replace(marital_status, "_", " /"),
    marital_status = if_else(str_detect(marital_status, "Never married/single"), "Never married / single", marital_status)
  )

# Add to package
use_data(cle_sac, overwrite = TRUE)
