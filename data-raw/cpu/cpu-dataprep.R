library(tidyverse)
library(hablar)
library(lubridate)

# load data -------------------------------------------------------------------

cpu <- read.csv("cpu.csv",
                stringsAsFactors = FALSE)

# clean names and fix data types ----------------------------------------------

mid <- cpu %>%
  janitor::clean_names() %>% 
  separate(clock,
           into = c("base_clock","boost_clock"),
           sep = "to")

cpu <-  mid %>%
  mutate(released = mdy(released)) %>% 
  convert(int("l3_cache"),
          dbl("base_clock","boost_clock"))

# Save ------------------------------------------------------------------------

usethis::use_data(cpu, overwrite = TRUE)