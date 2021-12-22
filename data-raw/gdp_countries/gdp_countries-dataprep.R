library(readr)
library(dplyr)

# load data ---------------------------------------------------------------------
raw_data <- read.csv(here::here("data-raw/gdp_countries/gdp_countries.csv"))

# cleaning ----------------------------------------------------------------------

# no cleaning required
# rename column 1 so non-ASCII character is removed
names(raw_data)[1] <- "country"

# don't use scientific notation
options(scipen = 999)

# set data type to numeric
raw_data %>% 
  mutate_at('year_1960', as.numeric) %>% str()

gdp_countries<- raw_data

# save --------------------------------------------------------------------------

usethis::use_data(gdp_countries, overwrite = TRUE)

