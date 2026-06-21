## creates the random sample hyperuricemia.samp

## code to prepare `hyperuricemia.samp` dataset goes here
##


data(hyperuricemia)

# create and save random sample for examples

set.seed(080546)

rsamp.cases = sample(1:nrow(hyperuricemia), size = 500,
                     replace = FALSE)

hyperuricemia.samp = hyperuricemia[rsamp.cases,]

table(hyperuricemia.samp$sex, hyperuricemia.samp$hu)

usethis::use_data(hyperuricemia.samp, overwrite = TRUE)
