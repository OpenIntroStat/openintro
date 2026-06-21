# Flights data

On-time data for a random sample of flights that departed NYC (i.e. JFK,
LGA or EWR) in 2013.

## Usage

``` r
nycflights
```

## Format

A tbl_df with 32,735 rows and 16 variables:

- year,month,day:

  Date of departure.

- dep_time,arr_time:

  Departure and arrival times, local tz.

- dep_delay,arr_delay:

  Departure and arrival delays, in minutes. Negative times represent
  early departures/arrivals.

- hour,minute:

  Time of departure broken in to hour and minutes.

- carrier:

  Two letter carrier abbreviation. See `airlines` in the `nycflights13`
  package for more information or google the airline code.

- tailnum:

  Plane tail number.

- flight:

  Flight number.

- origin,dest:

  Origin and destination. See `airports` in the `nycflights13` package
  for more information or google airport the code.

- air_time:

  Amount of time spent in the air.

- distance:

  Distance flown.

## Source

Hadley Wickham (2014).
[nycflights13](https://CRAN.R-project.org/package=nycflights13): Data
about flights departing NYC in 2013. R package version 0.1.

## Examples

``` r

library(dplyr)

# Longest departure delays
nycflights |>
  select(flight, origin, dest, dep_delay, arr_delay) |>
  arrange(desc(dep_delay))
#> # A tibble: 32,735 × 5
#>    flight origin dest  dep_delay arr_delay
#>     <int> <chr>  <chr>     <dbl>     <dbl>
#>  1     51 JFK    HNL        1301      1272
#>  2   1223 EWR    SLC         849       847
#>  3   2019 LGA    STL         803       802
#>  4    503 JFK    SAN         790       769
#>  5   2042 EWR    ATL         502       490
#>  6   4949 LGA    GSO         473       444
#>  7   1373 JFK    MIA         436       399
#>  8    479 LGA    IAH         427       435
#>  9   2226 LGA    MDW         423       422
#> 10    745 LGA    DEN         422       405
#> # ℹ 32,725 more rows

# Longest arrival delays
nycflights |>
  select(flight, origin, dest, dep_delay, arr_delay) |>
  arrange(desc(arr_delay))
#> # A tibble: 32,735 × 5
#>    flight origin dest  dep_delay arr_delay
#>     <int> <chr>  <chr>     <dbl>     <dbl>
#>  1     51 JFK    HNL        1301      1272
#>  2   1223 EWR    SLC         849       847
#>  3   2019 LGA    STL         803       802
#>  4    503 JFK    SAN         790       769
#>  5   2042 EWR    ATL         502       490
#>  6   4949 LGA    GSO         473       444
#>  7    479 LGA    IAH         427       435
#>  8   1139 LGA    DFW         413       434
#>  9   2226 LGA    MDW         423       422
#> 10   3325 JFK    DFW         355       421
#> # ℹ 32,725 more rows
```
