# Load previous version of openintro package containing previous version
# of evals data frame. I took the last commit on 2021-03-20:
# remotes::install_github("https://github.com/OpenIntroStat/openintro@f2c5645e3b65414f2ae2793112475ee511566b66", force = TRUE)
library(openintro)
library(tidyverse)
library(usethis)

midterms_house_orig <- midterms_house

midterms_house <- midterms_house_orig |>
  mutate(
    party = as.character(party),
    party = if_else(party == "Democratic", "Democrat", party),
    party = as.factor(party)
  )

usethis::use_data(midterms_house, overwrite = TRUE)
