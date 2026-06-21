# Contingency Table to Data Frame

Take a 2D contingency table and create a data frame representing the
individual cases.

## Usage

``` r
CT2DF(x, rn = row.names(x), cn = colnames(x), dfn = c("row.var", "col.var"))
```

## Arguments

- x:

  Contingency table as a matrix.

- rn:

  Character vector of the row names.

- cn:

  Character vector of the column names.

- dfn:

  Character vector with 2 values for the variable representing the rows
  and columns.

## Value

A data frame with two columns.

## See also

[`MosaicPlot`](https://openintrostat.github.io/openintro/reference/MosaicPlot.md)

## Author

David Diez

## Examples

``` r

a <- matrix(
  c(459, 727, 854, 385, 99, 4198, 6245, 4821, 1634, 578),
  2,
  byrow = TRUE
)
b <-
  CT2DF(
    a,
    c("No", "Yes"),
    c("Excellent", "Very good", "Good", "Fair", "Poor"),
    c("coverage", "health_status")
  )
table(b)
#>         health_status
#> coverage Excellent Fair Good Poor Very good
#>      No        459  385  854   99       727
#>      Yes      4198 1634 4821  578      6245
```
