context("test-data-county")

test_that("multiplication works", {
  expect_equal(nrow(county), 3142)
  expect_equal(ncol(county), 15)
})

test_that("usairports names are lower case", {
  expect_identical(names(county), tolower(names(county)))
})
