library(dplyr)

ucb_admit <- data.frame(
  admit = c(
    rep("admitted", 1755),
    rep("rejected", 2771)
  ),
  gender = c(
    rep("male", 1198), rep("female", 557),
    rep("male", 1493), rep("female", 1278)
  ),
  dept = c(
    rep("A", 512), rep("B", 353), rep("C", 120), rep("D", 138), rep("E", 53), rep("F", 22),
    rep("A", 89), rep("B", 17), rep("C", 202), rep("D", 131), rep("E", 94), rep("F", 24),
    rep("A", 313), rep("B", 207), rep("C", 205), rep("D", 279), rep("E", 138), rep("F", 351),
    rep("A", 19), rep("B", 8), rep("C", 391), rep("D", 244), rep("E", 299), rep("F", 317)
  )
)

usethis::use_data(ucb_admit, overwrite = TRUE)
