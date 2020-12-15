# Load previous version of openintro package containing previous version
# of evals data frame. I took the last commit on 2020-11-15:
# remotes::install_github("https://github.com/OpenIntroStat/openintro@58fcebec8712d88b535eb4e5594fe625f741d371", force = TRUE)
library(openintro)
library(tidyverse)
library(usethis)

# Make categorical variables factor
email <- openintro::email %>%
  mutate(
    spam        = factor(spam       , levels = c(0, 1)),
    to_multiple = factor(to_multiple, levels = c(0, 1)),
    from        = factor(from       , levels = c(0, 1)),
    sent_email  = factor(sent_email , levels = c(0, 1)),
    format      = factor(format     , levels = c(0, 1)),
    re_subj     = factor(re_subj    , levels = c(0, 1)),
    urgent_subj = factor(urgent_subj, levels = c(0, 1))
  )

email50 <- openintro::email50 %>%
  mutate(
    spam        = factor(spam       , levels = c(0, 1)),
    to_multiple = factor(to_multiple, levels = c(0, 1)),
    from        = factor(from       , levels = c(0, 1)),
    sent_email  = factor(sent_email , levels = c(0, 1)),
    format      = factor(format     , levels = c(0, 1)),
    re_subj     = factor(re_subj    , levels = c(0, 1)),
    urgent_subj = factor(urgent_subj, levels = c(0, 1))
  )

# Add to package
use_data(email, overwrite = TRUE)
use_data(email50, overwrite = TRUE)
