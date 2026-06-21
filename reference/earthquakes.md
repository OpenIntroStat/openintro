# Earthquakes

Select set of notable earthquakes from 1900 to 1999.

## Usage

``` r
earthquakes
```

## Format

A data frame with 123 rows and 7 variables.

- year:

  Year the earthquake took place.

- month:

  Month the earthquake took place.

- day:

  Day the earthquake took place

- richter:

  Magnitude of earthquake using the Richter Scale.

- area:

  City or geographic location of earthquakes.

- region:

  Country or countries if the earthquake occurred on a border.

- deaths:

  Approximate number of deaths caused by earthquake

## Source

World Almanac and Book of Facts: 2011.

## Examples

``` r

library(ggplot2)

ggplot(earthquakes, aes(x = richter, y = deaths)) +
  geom_point()
#> Warning: Removed 2 rows containing missing values or values outside the scale range
#> (`geom_point()`).


ggplot(earthquakes, aes(x = log(deaths))) +
  geom_histogram()
#> `stat_bin()` using `bins = 30`. Pick better value `binwidth`.
#> Warning: Removed 2 rows containing non-finite outside the scale range (`stat_bin()`).
```
