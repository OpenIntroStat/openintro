library(readr)


# load data ---------------------------------------------------------------------
raw_data <- read.csv(here::here("data-raw/world_pop/world_pop.csv"))

# cleaning ----------------------------------------------------------------------

# remove non-ASCII character added to column name
colnames(raw_data)[1] <- "country" 


world_pop<- raw_data

# save --------------------------------------------------------------------------

usethis::use_data(world_pop, overwrite = TRUE)
