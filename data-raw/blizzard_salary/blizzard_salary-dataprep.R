library(readr)
library(janitor)
library(dplyr)
library(lubridate)
library(stringr)

# load data --------------------------------------------------------------------

raw_data <- read_csv(here::here("data-raw/blizzard_salary/salary.csv"))

# cleaning: 

blizzard_salary <- raw_data %>% 
  mutate(current_salary = as.numeric(str_replace(raw_data$current_salary, "[$,]", "")),
         percent_incr = as.numeric(str_replace(raw_data$percent_incr, "[%]","")),
         location = case_when(location == "LA" ~ "Los Angeles",
                              TRUE ~ location))

# save -------------------------------------------------------------------------

usethis::use_data(blizzard_salary, overwrite= TRUE)
