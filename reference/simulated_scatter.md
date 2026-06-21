# Simulated data for sample scatterplots

Fake data.

## Usage

``` r
simulated_scatter
```

## Format

A data frame with 500 observations on the following 3 variables.

- group:

  Group, representing data for a specific plot.

- x:

  x-value.

- y:

  y-value.

## Examples

``` r

library(ggplot2)

ggplot(simulated_scatter, aes(x = x, y = y)) +
  geom_point() +
  facet_wrap(~group)
```
