# Monthly Returns for a few stocks

Monthly return data for a few stocks, which covers stock prices from
November 2015 through October 2018.

## Usage

``` r
stocks_18
```

## Format

A data frame with 36 observations on the following 3 variables.

- date:

  First day of the month corresponding to the returns.

- goog:

  Google stock price change.

- cat:

  Caterpillar stock price change.

- xom:

  Exxon Mobil stock price change.

## Source

Yahoo! Finance, direct download.

## Examples

``` r

d <- stocks_18
dim(d)
#> [1] 36  4
apply(d[, 2:3], 2, mean)
#>        cat       goog 
#> 0.02037753 0.01042289 
apply(d[, 2:3], 2, sd)
#>        cat       goog 
#> 0.07571634 0.05409915 
```
