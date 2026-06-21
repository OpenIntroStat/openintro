# New York City Marathon Times (outdated)

Marathon times of male and female winners of the New York City Marathon
1970-1999. See
[nyc_marathon](https://openintrostat.github.io/openintro/reference/nyc_marathon.md)
for a more updated dataset. We recommend not using this dataset since
the data source has been taken off the web.

## Usage

``` r
marathon
```

## Format

A data frame with 60 observations on the following 3 variables.

- year:

  Year

- gender:

  Gender

- time:

  Running time (in hours)

## Source

Data source has been removed.

## Examples

``` r
library(ggplot2)

ggplot(marathon, aes(x = time)) +
  geom_histogram(binwidth = 0.15)


ggplot(marathon, aes(y = time, x = gender)) +
  geom_boxplot()
```
