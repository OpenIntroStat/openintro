library(readr)

# load data ---------------------------------------------------------------------

flow_rates <- read.csv("river_flow.csv")

# cleaning: correct data type and format for date -------------------------------

flow_rates$date <- as.Date(flow_rates$date, 
                           format = "%m/%d/%Y")

# save --------------------------------------------------------------------------

usethis::use_data(flow_rates, overwrite = TRUE)