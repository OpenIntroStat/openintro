# soda

A randomly generated dataset of soda preference (cola or orange) based
on location.

## Usage

``` r
soda
```

## Format

A data frame with 60 observations on the following 2 variables.

- drink:

  Soda preference, cola or orange.

- location:

  Is the person from the West coast or East coast?

## Examples

``` r

library(dplyr)

soda |>
  count(location, drink)
#>   location  drink  n
#> 1     East   Cola 28
#> 2     East Orange  6
#> 3     West   Cola 19
#> 4     West Orange  7
```
