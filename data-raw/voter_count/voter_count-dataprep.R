library(readr)

# load data --------------------------------------------------------------------

voter_count <- read.csv("november_voter_turnout.csv")

# cleaning: Change incorrect 0's values to NA

voter_count[voter_count == 0] <- NA

# save -------------------------------------------------------------------------

usethis::use_data(voter_count, overwrite= TRUE)