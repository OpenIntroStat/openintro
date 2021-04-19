context("get_correlation")
library(tibble)
library(dplyr)

df <- tibble(
  vec1 = 1:10,
  vec2 = seq(from = 5, to = 50, by = 5),
  vec3 = c(1:9, NA)
)



test_that("arguments are appropriate", {
  expect_error(
    get_correlation(vec1,
      formula = vec1 ~ NULL
    )
  )

  expect_error(
    df %>%
      get_correlation(formula = vec1 ~ NULL)
  )

  expect_error(
    df %>%
      get_correlation(formula = NULL ~ vec2)
  )

  expect_error(
    df %>%
      get_correlation(formula = vec2)
  )
})

test_that("variables are in data frame", {
  expect_error(
    mtcars %>%
      get_correlation(formula = mpg2 ~ disp)
  )

  expect_error(
    mtcars %>%
      get_correlation(formula = mpg2 ~ disp2)
  )

  expect_error(
    mtcars %>%
      get_correlation(formula = mpg ~ disp2)
  )

  expect_equal(
    object = mtcars %>%
      get_correlation(formula = mpg ~ disp) %>%
      pull(),
    expected = cor(mtcars$mpg, mtcars$disp)
  )

  expect_error(
    mtcars %>%
      get_correlation(formula = mpg ~ disp + hp)
  )
})


test_that("missing data handled correctly", {
  expect_true(
    df %>%
      get_correlation(formula = vec1 ~ vec3) %>%
      pull(cor) %>%
      is.na()
  )

  expect_equal(
    df %>%
      get_correlation(formula = vec1 ~ vec3, na.rm = TRUE) %>%
      pull(cor),
    1
  )

  expect_equal(
    df %>%
      get_correlation(formula = vec1 ~ vec3, use = "complete.obs") %>%
      pull(cor),
    1
  )
})
