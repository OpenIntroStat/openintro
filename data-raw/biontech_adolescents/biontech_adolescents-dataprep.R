# load packages ----------------------------------------------------------------

library(tidyverse)

# create data ------------------------------------------------------------------
# based on: https://www.pfizer.com/news/press-release/press-release-detail/pfizer-biontech-announce-positive-topline-results-pivotal

biontech_adolescents_table <- tribble(
  ~group,    ~`COVID-19`, ~`no COVID-19`,
  "vaccine", 0,           1131,
  "placebo", 18,          1129-18
)

biontech_adolescents <- biontech_adolescents_table %>%
  pivot_longer(cols = -group, names_to = "outcome", values_to = "n") %>%
  uncount(weights = n) %>%
  mutate(
    group   = factor(group, levels = c("vaccine", "placebo")),
    outcome = factor(outcome, levels = c("COVID-19", "no COVID-19"))
  )

# Save ------------------------------------------------------------------------

usethis::use_data(biontech_adolescents, overwrite = TRUE)
