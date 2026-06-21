# President's party performance and unemployment rate

Covers midterm elections.

## Usage

``` r
midterms_house
```

## Format

A data frame with 29 observations on the following 5 variables.

- year:

  Year.

- potus:

  The president in office.

- party:

  President's party: Democrat or Republican.

- unemp:

  Unemployment rate.

- house_change:

  Change in House seats for the President's party.

## Source

Wikipedia.

## Details

An older version of this data is at
[`unemploy_pres`](https://openintrostat.github.io/openintro/reference/unemploy_pres.md).

## Examples

``` r

library(ggplot2)

ggplot(midterms_house, aes(x = unemp, y = house_change)) +
  geom_point()
```
