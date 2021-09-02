# load packages ----------------------------------------------------------------

library(tidyverse)
library(foreign)

# load data --------------------------------------------------------------------------

fact_opinion_raw <- read.spss(here::here("data-raw/fact_opinion/f_v_o_short_data.sav"), to.data.frame = TRUE)

# cleaning: select data related to Q8 of survey and format to match source publication

fact_opinion <- fact_opinion_raw %>%
  select(c("PPAGE", "fact_fact", "opinion_opinion")) %>%
  rename(
    age = PPAGE,
    fact_correct = fact_fact,
    opinion_correct = opinion_opinion
  ) %>%
  mutate(age = as.numeric(as.character(age))) %>%
  mutate(age_group = case_when(
    age < 50 ~ "18-49",
    TRUE ~ "50+"
  )) %>%
  select(-age) %>%
  relocate(age_group) %>%
  as_tibble()

# Save -------------------------------------------------------------------------------

usethis::use_data(fact_opinion, overwrite = TRUE)
