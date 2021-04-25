# biontech_adolescents
test_that("biontech_adolescents counts match", {
  expect_equal(biontech_adolescents %>% dplyr::filter(group == "vaccine", outcome == "no COVID-19") %>% nrow(), 1131)
  expect_equal(biontech_adolescents %>% dplyr::filter(group == "placebo", outcome == "COVID-19") %>% nrow(), 18)
  expect_equal(biontech_adolescents %>% dplyr::filter(group == "placebo", outcome == "no COVID-19") %>% nrow(), 1129-18)
})
