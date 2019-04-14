library(tidyverse)
library(janitor)
library(lubridate)

# load data --------------------------------------------------------------------

seattlepets_raw <- read_csv("data-raw/seattlepets/Seattle_Pet_Licenses.csv")

# clean names and fix date format ----------------------------------------------

seattlepets <- seattlepets_raw %>%
  janitor::clean_names() %>%
  rename(animal_name = animals_name) %>%
  mutate(license_issue_date = mdy(license_issue_date))

# Save -------------------------------------------------------------------------
use_data(seattlepets, overwrite = TRUE)
