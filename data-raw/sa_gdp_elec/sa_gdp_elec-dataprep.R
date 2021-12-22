library(readxl)



# load data ---------------------------------------------------------------------
sa_gdp_elec <- read_excel(here::here("data-raw/sa_gdp_elec/sa_gdp_elec.xlsx"))

# cleaning ----------------------------------------------------------------------
 

# save --------------------------------------------------------------------------

usethis::use_data(sa_gdp_elec, overwrite = TRUE)
