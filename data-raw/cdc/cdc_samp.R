#retrieves cdc data from Open Intro site

source("http://www.openintro.org/stat/data/cdc.R")

# generates cdc.samp
#
#  This random sample is not the same as the openintro sample
#  posted at https://www.openintro.org/data/index.php?data=cdc.samp

set.seed(6578, sample.kind = "Rounding")
sample.size = 60
row.numbers = sample(1:nrow(cdc), sample.size, replace = FALSE)
cdc.samp = cdc[row.numbers, ]

usethis::use_data(cdc.samp, overwrite = TRUE)


