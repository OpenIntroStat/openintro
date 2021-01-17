# Load packages
library(tidyverse)
library(usethis)

# Add opportunity cost data
opportunity_cost <- tibble(
  group = c(rep("control", 75), rep("treatment", 75)),
  decision = c(rep("buy video", 56), rep("not buy video", 19),
               rep("buy video", 41), rep("not buy video", 34))
) %>%
  mutate(
    group = as.factor(group),
    decision = as.factor(decision)
  )

# Add to package
use_data(opportunity_cost, overwrite = TRUE)
