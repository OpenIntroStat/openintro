# Google stock data

Google stock data from 2006 to early 2014, where data from the first day
each month was collected.

## Usage

``` r
goog
```

## Format

A data frame with 98 observations on the following 7 variables.

- date:

  a factor with levels `2006-01-03`, `2006-02-01`, and so on

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

goog
#> # A tibble: 98 × 7
#>    date        open  high   low close  volume adj_close
#>    <fct>      <dbl> <dbl> <dbl> <dbl>   <int>     <dbl>
#>  1 2014-02-03 1179. 1213. 1128. 1204. 2409900     1204.
#>  2 2014-01-02 1115. 1187. 1082. 1181. 2860800     1181.
#>  3 2013-12-02 1064. 1121  1049. 1121. 1675400     1121.
#>  4 2013-11-01 1032. 1068  1005  1060. 1372400     1060.
#>  5 2013-10-01  880. 1042.  843. 1031. 2472300     1031.
#>  6 2013-09-03  854.  906.  854.  876. 1742200      876.
#>  7 2013-08-01  895   910.  846.  847. 1606700      847.
#>  8 2013-07-01  886.  928   876.  888. 2428100      888.
#>  9 2013-06-03  873   911.  847.  880. 2546400      880.
#> 10 2013-05-01  823.  921.  816.  871. 2335700      871.
#> # ℹ 88 more rows
```
