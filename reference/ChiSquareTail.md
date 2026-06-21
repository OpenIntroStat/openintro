# Plot upper tail in chi-square distribution

Plot a chi-square distribution and shade the upper tail.

## Usage

``` r
ChiSquareTail(
  U,
  df,
  xlim = c(0, 10),
  col = fadeColor("black", "22"),
  axes = TRUE,
  ...
)
```

## Arguments

- U:

  Cut off for the upper tail.

- df:

  Degrees of freedom.

- xlim:

  Limits for the plot.

- col:

  Color of the shading.

- axes:

  Whether to plot an x-axis.

- ...:

  Currently ignored.

## Value

Nothing is returned from the function.

## See also

[`normTail`](https://openintrostat.github.io/openintro/reference/normTail.md)

## Author

David Diez

## Examples

``` r

data(COL)
ChiSquareTail(11.7,
  7,
  c(0, 25),
  col = COL[1]
)
```
