# Exploratory data analysis plot

Explore different plotting methods using a click interface.

## Usage

``` r
edaPlot(
  dataFrame,
  Col = c("#888888", "#FF0000", "#222222", "#FFFFFF", "#CCCCCC", "#3377AA")
)
```

## Arguments

- dataFrame:

  A data frame.

- Col:

  A vector containing six colors. The colors may be given in any form.

## See also

[`histPlot`](https://openintrostat.github.io/openintro/reference/histPlot.md),
[`densityPlot`](https://openintrostat.github.io/openintro/reference/densityPlot.md),
[`boxPlot`](https://openintrostat.github.io/openintro/reference/boxPlot.md),
[`dotPlot`](https://openintrostat.github.io/openintro/reference/dotPlot.md)

## Author

David Diez

## Examples

``` r

data(mlbbat10)
bat <- mlbbat10[mlbbat10$at_bat > 200, ]
# edaPlot(bat)

data(mariokart)
mk <- mariokart[mariokart$total_pr < 100, ]
# edaPlot(mk)
```
