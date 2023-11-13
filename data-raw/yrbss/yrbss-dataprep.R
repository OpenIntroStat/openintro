# get data --------------------------------------------------------------------
# from hadley/yrbss@c845cac53fb68f3ba569012ee86130babc6a0e19
devtools::install_github("hadley/yrbss@c845cac53fb68f3ba569012ee86130babc6a0e19")

# load packages ----------------------------------------------------------------
library(tidyverse)
library(usethis)
library(yrbss)

# take subset of sample that matches columns of yrbss --------------------------

survey_subset <- survey %>%
  as_tibble() %>%
  filter(year == 2013) %>%
  select(
    age,
    sex,              # gender
    grade,
    race4,            # hispanic
    race7,            # race
    stheight,         # height
    stweight,         # weight
    q8,               # helmet_12m
    q12,              # text_while_driving_30d
    q80,              # physically_active_7d
    q81,              # hours_tv_per_school_day
    qmusclestrength,  # strength_training_7d
    qsleep,           # school_night_hours_sleep
  ) %>%
  rename(
    gender                   = sex,
    hispanic                 = race4,
    race                     = race7,
    height                   = stheight,
    weight                   = stweight,
    helmet_12m               = q8,
    text_while_driving_30d   = q12,
    physically_active_7d     = q80,
    hours_tv_per_school_day  = q81,
    strength_training_7d     = qmusclestrength,
    school_night_hours_sleep = qsleep
  ) %>%
  mutate(across(everything(), as.character))

# data cleanup -----------------------------------------------------------------

yrbss13 <- survey_subset %>%
  mutate(
    # match numerics
    age = as.integer(parse_number(age)),
    height = as.double(parse_number(height)),
    weight = as.double(parse_number(weight)),
    physically_active_7d = as.integer(parse_number(physically_active_7d)),
    strength_training_7d = as.integer(parse_number(strength_training_7d)),
    # match characters
    gender = str_to_lower(gender),
    grade = as.character(parse_number(grade)), # 23 of NAs should be other
    # race variables do not match at all!!!
    helmet_12m = case_when(
      helmet_12m == "Always wore a helmet"           ~ "always",
      helmet_12m == "Did not ride a bicycle"         ~ "did not ride",
      helmet_12m == "Most of the time wore a helmet" ~ "most of time",
      helmet_12m == "Never wore a helmet"            ~ "never",
      helmet_12m == "Rarely wore a helmet"           ~ "rarely",
      helmet_12m == "Sometimes wore a helmet"        ~ "sometimes"
    ),
    text_while_driving_30d = case_when(
      text_while_driving_30d == "0 days"                           ~ "0",
      text_while_driving_30d == "1 or 2 days"                      ~ "1-2",
      text_while_driving_30d == "10 to 19 days"                    ~ "10-19",
      text_while_driving_30d == "20 to 29 days"                    ~ "20-29",
      text_while_driving_30d == "3 to 5 days"                      ~ "3-5",
      text_while_driving_30d == "6 to 9 days"                      ~ "6-9",
      text_while_driving_30d == "All 30 days"                      ~ "30",
      text_while_driving_30d == "I did not drive the past 30 days" ~ "did not drive"
      ),
    hours_tv_per_school_day = case_when(
      hours_tv_per_school_day == "1 hour per day"              ~ "1",
      hours_tv_per_school_day == "2 hours per day"             ~ "2",
      hours_tv_per_school_day == "3 hours per day"             ~ "3",
      hours_tv_per_school_day == "4 hours per day"             ~ "4",
      hours_tv_per_school_day == "5 or more hours per day"     ~ "5+",
      hours_tv_per_school_day == "Less than 1 hour per day"    ~ "<1",
      hours_tv_per_school_day == "No TV on average school day" ~ "do not watch"
    ),
    school_night_hours_sleep = case_when(
      school_night_hours_sleep == "10 or more hours" ~ "10+",
      school_night_hours_sleep == "4 or less hours"  ~ "<5",
      school_night_hours_sleep == "5 hours"          ~ "5",
      school_night_hours_sleep == "6 hours"          ~ "6",
      school_night_hours_sleep == "7 hours"          ~ "7",
      school_night_hours_sleep == "8 hours"          ~ "8",
      school_night_hours_sleep == "9 hours"          ~ "9"
    )
  )

# Save ------------------------------------------------------------------------

usethis::use_data(___, overwrite = TRUE)
