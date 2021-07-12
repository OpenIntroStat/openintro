library(readr)
library(dplyr)
library(tidyr)
library(stringr)

# load data ---------------------------------------------------------------------
raw_data <- read.csv(here::here("data-raw/climber_drugs/drug_use_in_climbers.csv"))

# cleaning ----------------------------------------------------------------------

climber_drugs <- raw_data %>% 
  janitor::clean_names() %>% 
  rename(positive_sample = i_positive_sample) %>% 
  pivot_longer(cols = c("substance_1", "substance_2", "substance_3", "substance_4"),
               names_to = "drop",
               values_to = "substance") %>% 
  filter(substance != "") %>% 
  mutate(concentration_3 = as.character(concentration_3),
         concentration_4 = as.character(concentration_4)) %>% 
  mutate(concentration = case_when(
    drop == "substance_1" ~ concentration_1,
    drop == "substance_2" ~ concentration_2,
    drop == "substance_3" ~ concentration_3,
    drop == "substance_4" ~ concentration_4
  )) %>% 
  select(-c(drop, concentration_1, concentration_2, concentration_3, concentration_4)) %>% 
  mutate(
    screening_analysis = case_when(
      str_detect(concentration, "^\\[") ~ "yes",
      TRUE ~"no"),
    concomitant = case_when(
      str_detect(substance, "Â§") ~ "yes",
      TRUE ~ "no"),
    concentration = as.numeric(str_replace_all(concentration, "\\[|\\]", "")),
    substance = str_replace_all(substance, "Â§", "")
    )  

# save --------------------------------------------------------------------------

usethis::use_data(climber_drugs, overwrite = TRUE)
