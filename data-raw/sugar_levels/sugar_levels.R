library(devtools)

set.seed(5011)
sugar.levels.A <- rnorm(100, 5.7, 1.7)

usethis::use_data(sugar.levels.A, overwrite=TRUE)

set.seed(5011)
sugar.levels.B <- rnorm(100, 5.7, 1.7)

usethis::use_data(sugar.levels.B, overwrite=TRUE)


