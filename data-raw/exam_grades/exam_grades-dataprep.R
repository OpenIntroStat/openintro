# Load packages ----------------------------------------------------------------

library(tidyverse)
library(usethis)
library(here)

# Read data --------------------------------------------------------------------

exam_grades <- read_tsv(here::here("data-raw/exam_grades", "exam_grades.txt"))

# Recode sex -------------------------------------------------------------------

exam_grades <- exam_grades |>
  mutate(sex = if_else(sex == "M", "Man", "Woman"))

# Add to package ---------------------------------------------------------------

use_data(exam_grades, overwrite = TRUE)
