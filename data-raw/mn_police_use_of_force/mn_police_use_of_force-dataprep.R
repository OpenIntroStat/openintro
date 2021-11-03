library(readr)
library(dplyr)

# load data ---------------------------------------------------------------------
raw_data <- read.csv(here::here("data-raw/mn_police_use_of_force/mn_police_use_of_force.csv"))

# cleaning ----------------------------------------------------------------------
# rename column 1 to remove non-ASCII characters
raw_data <- raw_data %>% rename("response_datetime" = !!names(.[1]))

# delete columns latitude and longitude to reduce file size
raw_data <- subset(raw_data, select = -c(latitude, longitude)) 

# delete older data to reduce file size
raw_data <- subset(raw_data,!(response_datetime < 2016))

# delete invalid records
raw_data <- subset(raw_data,!(problem == ""))

# set all unknown race and sex values to NA
raw_data = raw_data %>%
  mutate(race = na_if(race, "")) %>%
  mutate(race = na_if(race, "Unknown")) %>% 
  mutate(race = na_if(race, "not recorded")) %>%
  mutate(sex = na_if(sex, "")) %>%
  mutate(sex = na_if(sex, "Unknown")) %>% 
  mutate(sex = na_if(sex, "not recorded")) 


mn_police_use_of_force<- raw_data

# save --------------------------------------------------------------------------

usethis::use_data(mn_police_use_of_force, overwrite = TRUE)
