# Load previous version of openintro package containing previous version
# of evals data frame. I took the last commit on 2020-06-22:
# remotes::install_github("https://github.com/OpenIntroStat/openintro@41f063d0b013a2e4c27f9d51f3cd6fa8a3429b49", force = TRUE)
library(openintro)
library(usethis)

# Cars
assortative_mating <- openintro::assortive_mating

# Add to package
use_data(assortative_mating)
