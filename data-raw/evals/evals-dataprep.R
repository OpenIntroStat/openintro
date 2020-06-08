# Load previous version of openintro package containing previous version
# of evals data frame. I took the last commit on 2019/8/6:
# remotes::install_github("https://github.com/OpenIntroStat/openintro@1fff227404f0650996edcf295e92edcf8ae2aa16", force = TRUE)
library(openintro)
library(tidyverse)
library(usethis)

evals_orig <- evals

# Get unique profs assuming rank, ethnicity, gender, language, age, bty_avg
# uniquely ID each prof. According to
# https://chance.amstat.org/2013/04/looking-good/
# there are 94 unique profs, so this seems to be a safe assumption
profs <- evals_orig %>%
  select(rank, ethnicity, gender, language, age, bty_avg) %>%
  distinct() %>%
  # Add prof id number:
  mutate(prof_id = 1:n())
dim(profs)

evals <- evals_orig %>%
  # add course id number
  mutate(course_id = 1:n()) %>%
  inner_join(profs, by = c("rank", "ethnicity", "gender", "language", "age", "bty_avg")) %>%
  # put course and prof id variables first
  select(course_id, prof_id, everything())

# Add to package
use_data(evals, overwrite = TRUE)
