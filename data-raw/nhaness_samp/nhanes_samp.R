# produces nhanes.samp, nhanes.samp.adult and nhanes.samp.adult.500

library(NHANES)
data(NHANES)
set.seed(5011)

# nhanes.samp

nhanes.samp.size = 200
nhanes.samp = NHANES[sample(nrow(NHANES), size = nhanes.samp.size),]
usethis::use_data(nhanes.samp, overwrite = TRUE)

# nhanes.samp.adult

adult = nhanes.samp$Age >= 21
nhanes.samp.adult = nhanes.samp[adult,]
usethis::use_data(nhanes.samp.adult, overwrite = TRUE)

# nhanes.samp.adult.500

library(NHANES)
set.seed(5011)
adult = NHANES$Age >=21
nhanes.adult = NHANES[adult,]
nhanes.samp.adult.500 = nhanes.adult[sample(nrow(nhanes.adult), size = 500),]
usethis::use_data(nhanes.samp.adult.500, overwrite = TRUE)
