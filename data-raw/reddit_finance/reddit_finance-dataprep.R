library(readr)
library(dplyr)
library(tidyr)
library(stringr)

# load data --------------------------------------------------------------------

raw_data <- read_csv(here::here("data-raw/reddit_finance/2020_reddit_finance.csv"),)

# cleaning: 
# Note: some preprocessing done in Excel.  
reddit_finance <- raw_data %>% 
  mutate(country = replace_na(country, "United States"), 
         country = str_to_title(country),
         retired = replace_na(retired, "No")) %>% 
  filter(retired == "No") %>% 
  select(-retired)

# save -------------------------------------------------------------------------

usethis::use_data(reddit_finance, overwrite = TRUE)
