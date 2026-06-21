# Plot data and add a regression line

Plot data and add a regression line.

## Usage

``` r
PlotWLine(
  x,
  y,
  xlab = "",
  ylab = "",
  col = fadeColor(4, "88"),
  cex = 1.2,
  pch = 20,
  n = 4,
  nMax = 4,
  yR = 0.1,
  axes = TRUE,
  ...
)
```

## Arguments

- x:

  Predictor variable.

- y:

  Outcome variable.

- xlab:

  x-axis label.

- ylab:

  y-axis label.

- col:

  Color of points.

- cex:

  Size of points.

- pch:

  Plotting character.

- n:

  The preferred number of axis labels.

- nMax:

  The maximum number of axis labels.

- yR:

  y-limit buffer factor.

- axes:

  Boolean to indicate whether or not to include axes.

- ...:

  Passed to `plot`.

## See also

[`makeTube`](https://openintrostat.github.io/openintro/reference/makeTube.md)

## Examples

``` r

PlotWLine(1:10, seq(-5, -2, length.out = 10) + rnorm(10))
```
