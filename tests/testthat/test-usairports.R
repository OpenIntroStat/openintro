context("usairports")

test_that("usairports dimensions match", {
  expect_equal(nrow(usairports), 19615)
  expect_equal(ncol(usairports), 14)
})

test_that("usairports names are lower case", {
  expect_identical(names(usairports), tolower(names(usairports)))
})
