# Exxon Mobile stock data

Monthly data covering 2006 through early 2014.

## Usage

``` r
xom
```

## Format

A data frame with 98 observations on the following 7 variables.

- date:

  Date.

- open:

  a numeric vector

- high:

  a numeric vector

- low:

  a numeric vector

- close:

  a numeric vector

- volume:

  a numeric vector

- adj_close:

  a numeric vector

## Source

Yahoo! Finance.

## Examples

``` r

xom
#> # A tibble: 98 × 7
#>    date        open  high   low close   volume adj_close
#>    <fct>      <dbl> <dbl> <dbl> <dbl>    <int>     <dbl>
#>  1 2014-02-03  91.9  95.8  89.2  95.0 14789300      95.0
#>  2 2014-01-02 101.  101.   91.7  92.2 13058500      91.5
#>  3 2013-12-02  93.3 102.   92.9 101.  13228500     100. 
#>  4 2013-11-01  89.7  96    88.3  93.5 12856000      92.8
#>  5 2013-10-01  86.0  91.0  84.8  89.6 13341600      88.4
#>  6 2013-09-03  87.7  89.9  85.6  86.0 12800900      84.9
#>  7 2013-08-01  92.7  93.1  86.4  87.2 12914100      86.0
#>  8 2013-07-01  90.4  95.5  90.0  93.8 11462900      91.8
#>  9 2013-06-03  90.5  92.3  88.0  90.4 15737500      88.5
#> 10 2013-05-01  88.5  93.5  87.5  90.5 13364200      88.6
#> # ℹ 88 more rows
```
