context("rep_sample_n")

library(dplyr)

test_that("`rep_sample_n` is working", {
  N <- 2400
  tub <- data_frame(
    ball_ID = 1:N,
    color = c(rep("red", 900), rep("white", N - 900))
  )

  p_hats <- tub %>%
    rep_sample_n(size = 50, reps = 10)

  expect_silent(p_hats)
  expect_equal(nrow(p_hats), 50 * 10)
  expect_equal(length(unique(p_hats$replicate)), 10)
})
