context("test-geom_categorical_model")

library(ggplot2)

mpg <- mpg[mpg$cyl != 5, ]

viz <- ggplot(mpg, aes(x = drv, y = hwy)) +
  geom_point()


# geom_categorical_model ----------------------------------------------------
test_that("geom_categorical_model works", {
  expect_doppelganger(
    "geom_categorical_model-basic",
    viz + geom_categorical_model() + labs(title = "geom_categorical_model()")
  )

  expect_doppelganger(
    "geom_categorical_model-no-SE",
    viz + geom_categorical_model(se = FALSE) +
      labs(title = "geom_categorical_model() with `se = FALSE`")
  )

  expect_doppelganger(
    "geom_categorical_model-basic-color-and-size",
    viz %+% aes(color = drv) +
      geom_categorical_model(size = 3) +
      labs(title = "geom_categorical_model() with extra aesthetics")
  )

  expect_doppelganger(
    "geom_categorical_model-linetype-override",
    viz %+% aes(linetype = drv) +
      geom_categorical_model() +
      labs(title = "geom_categorical_model() with linetype mapped")
  )

  expect_doppelganger(
    "geom_categorical_model-faceted",
    viz + geom_categorical_model() +
      facet_wrap(~cyl) +
      labs(title = "Faceted geom_categorical_model()")
  )
})

test_that("geom_categorical_model works in edge cases", {

  # Warns and doesn't draw anything when x axis is numeric
  expect_warning(
    expect_doppelganger(
      "geom_parallel_slopes-numeric-x",
      ggplot(mpg, aes(x = displ, y = hwy)) +
        geom_point() +
        geom_categorical_model() +
        labs(title = "geom_categorical_model() does nothing with numeric x")
    ),
    regexp = "*only works with a discrete x axis variable"
  )
})
