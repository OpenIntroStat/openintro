library(dplyr)

soda <- data.frame(
  drink = c(rep("Cola", 47), rep("Orange", 13)),
  location = c(
    rep("East", 28), rep("West", 19),
    rep("East", 6), rep("West", 7)
  )
)

usethis::use_data(soda, overwrite = TRUE)
