# Load previous version of openintro package containing previous version
# of evals data frame. I took the last commit on 2021-05-18:
# remotes::install_github("https://github.com/OpenIntroStat/openintro@fdc9ae408d53d9f2efe4c62c85a956a49346e64d", force = TRUE)
library(openintro)
library(tidyverse)
library(usethis)

# Make categorical variables factor
sex_discrimination <- openintro::gender_discrimination %>%
  rename(sex = gender)

# Add to package
use_data(sex_discrimination, overwrite = TRUE)
