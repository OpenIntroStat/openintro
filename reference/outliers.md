# Simulated datasets for different types of outliers

Data sets for showing different types of outliers

## Usage

``` r
outliers
```

## Format

A data frame with 50 observations on the following 5 variables.

- x:

  a numeric vector

- y:

  a numeric vector

- x_inf:

  a numeric vector

- y_lev:

  a numeric vector

- y_out:

  a numeric vector

## Examples

``` r

outliers
#> # A tibble: 50 × 5
#>        x      y x_inf  y_lev  y_out
#>    <int>  <dbl> <int>  <dbl>  <dbl>
#>  1     1   6.18     1   6.18   6.18
#>  2     2  16.0      2  16.0   16.0 
#>  3     3  12.4      3  12.4   12.4 
#>  4     4  23.4      4  23.4   23.4 
#>  5     5  24.9      5  24.9   24.9 
#>  6     6   3.04     6   3.04   3.04
#>  7     7  24.7      7  24.7   24.7 
#>  8     8 -10.2      8 -10.2  -10.2 
#>  9     9  -2.92     9  -2.92  -2.92
#> 10    10   8.97    10   8.97   8.97
#> # ℹ 40 more rows
```
