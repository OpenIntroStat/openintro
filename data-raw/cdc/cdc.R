#retrieves cdc data from Open Intro site

source("http://www.openintro.org/stat/data/cdc.R")


usethis::use_data(cdc, overwrite = TRUE)
