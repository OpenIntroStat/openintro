# load packages ----------------------------------------------------------------
library(tidyverse)

# load data -------------------------------------------------------------------
# original data from https://doi.org/10.3886/ICPSR36461.v1
full_births <- read_delim("data-raw/births14/36461-0001-Data.tsv", "\t", escape_double = FALSE, trim_ws = TRUE)

births <- full_births |>
  rename(
    fage_cat = FAGEREC11,
    mage = MAGER,
    weeks = COMBGEST,
    visits = PREVIS,
    gained = WTGAIN,
    weight_g = DBWT,
    sex = SEX,
    habit = CIG_REC,
    marital = DMAR,
    whitemom = MBRACE
  ) |>
  select(
    fage_cat, mage, weeks, visits,
    gained, weight_g, sex, habit, marital, whitemom
  )

births <- births |>
  mutate(
    fage_cat = case_when(
      fage_cat == 1 ~ "Under 15 years",
      fage_cat == 2 ~ "15-19 years",
      fage_cat == 3 ~ "20-24 years",
      fage_cat == 4 ~ "25-29 years",
      fage_cat == 5 ~ "30-34 years",
      fage_cat == 6 ~ "35-39 years",
      fage_cat == 7 ~ "40-44 years",
      fage_cat == 8 ~ "45-49 years",
      fage_cat == 9 ~ "50-54 years",
      fage_cat == 10 ~ "55-98 years",
      fage_cat == 11 ~ NA_character_
    ),
    mature = case_when(
      mage > 34 ~ "mature mom",
      TRUE ~ "younger mom"
    ),
    weeks = case_when(
      weeks == 99 ~ NA_real_,
      TRUE ~ weeks
    ),
    # could read 99 in as NA in read_delim?
    premie = case_when(
      weeks < 37 ~ "premie",
      weeks >= 37 ~ "full term",
      is.na(weeks) ~ NA_character_
    ),
    visits = case_when(
      visits == 99 ~ NA_real_,
      TRUE ~ visits
    ),
    gained = case_when(
      gained == 99 ~ NA_real_,
      TRUE ~ gained
    ),
    weight = weight_g / 453.59237,
    lowbirthweight = case_when(
      weight <= 5.5 ~ "low",
      TRUE ~ "not low"
    ),
    sex = case_when(
      sex == "M" ~ "male",
      sex == "F" ~ "female"
    ),
    habit = case_when(
      habit == "N" ~ "nonsmoker",
      habit == "U" ~ NA_character_,
      TRUE ~ "smoker"
    ),
    marital = case_when(
      marital == 1 ~ "married",
      marital == 2 ~ "not married",
      marital == 9 ~ NA_character_
    ),
    whitemom = case_when(
      whitemom == 1 ~ "white",
      TRUE ~ "not white"
    )
  )
births <- births |>
  select(
    fage_cat, mage, mature, weeks, premie, visits,
    gained, weight, lowbirthweight, sex, habit,
    marital, whitemom
  )

simulate_ages <- function(.x, .y) {
  if (is.na(.y)) {
    rep(NA_integer_, times = nrow(.x))
  } else if (.y == "Under 15 years") {
    sample(11:14, size = nrow(.x), replace = TRUE)
  } else if (.y %in% c("15", "16", "17", "18", "19")) {
    rep(as.numeric(.y), times = nrow(.x))
  } else if (.y == "55-98 years") {
    sample(55:98, size = nrow(.x), replace = TRUE)
  } else {
    age <- as.numeric(substr(.y, start = 1, stop = 2))
    sample(age:(age + 4), size = nrow(.x), replace = TRUE)
  }
}
births <- births |>
  group_by(fage_cat) |>
  nest() |>
  mutate(fage = map2(data, fage_cat, simulate_ages)) |>
  unnest(cols = c(data, fage)) |>
  ungroup()

births <- births |>
  mutate(weight = round(weight, digits = 2)) |>
  select(
    fage, mage, mature, weeks, premie, visits,
    gained, weight, lowbirthweight, sex, habit,
    marital, whitemom
  )
set.seed(42)
births14 <- births |>
  sample_n(1000)

# Save ------------------------------------------------------------------------

usethis::use_data(births14, overwrite = TRUE)
