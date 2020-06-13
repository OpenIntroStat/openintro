# Load previous version of openintro package containing previous version
# of evals data frame. I took the last commit on 2020-06-13:
# remotes::install_github("https://github.com/OpenIntroStat/openintro@5a62d412468dfa2f95047faf68bd36d168c92bf5", force = TRUE)
library(openintro)
library(MASS)
library(usethis)

# Cars
cars93 <- openintro::cars

# Add to package
use_data(cars93)
