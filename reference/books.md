# Sample of books on a shelf

Simulated dataset.

## Usage

``` r
books
```

## Format

A data frame with 95 observations on the following 2 variables.

- type:

  a factor with levels `fiction` and `nonfiction`

- format:

  a factor with levels `hardcover` and `paperback`

## Examples

``` r

table(books)
#>             format
#> type         hardcover paperback
#>   fiction           13        59
#>   nonfiction        15         8
```
