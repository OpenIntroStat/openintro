# Load previous version of openintro package containing previous version
# of evals data frame. I took the last commit on 2021-01-16:
# remotes::install_github("https://github.com/OpenIntroStat/openintro@869329aaff930be48c15385dc2c397ae89c4744b", force = TRUE)
library(openintro)
library(tidyverse)
library(usethis)

# Make categorical variables factor
gender_discrimination <- openintro::gender_discrimination %>%
  mutate(
    decision = as.character(decision),
    decision = if_else(decision == "not", "not promoted", decision),
    decision = fct_relevel(decision, "promoted", "not promoted"),
    gender   = fct_relevel(gender, "male", "female")
  )

# Add to package
use_data(gender_discrimination, overwrite = TRUE)
