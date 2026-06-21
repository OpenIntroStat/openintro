# Build Better Looking Axis Labels for Percentages

Convert and simplify axis labels that are in percentages.

## Usage

``` r
AxisInPercent(side, at, include.symbol = TRUE, simplify = TRUE, ...)
```

## Arguments

- side:

  An integer specifying which side of the plot the axis is to be drawn
  on. The axis is place as follows: 1 = below, 2 = left, 3 = above and 4
  = right.

- at:

  The points at which tick-marks are to be drawn.

- include.symbol:

  Whether to include a dollar or percent symbol, where the symbol chosen
  depends on the function.

- simplify:

  For dollars, simplify the amount to use abbreviations of `"k"`, `"m"`,
  `"b"`, or `"t"` when numbers tend to be in the thousands, millions,
  billions, or trillions, respectively.

- ...:

  Arguments passed to [`axis`](https://rdrr.io/r/graphics/axis.html)

## Value

The numeric locations on the axis scale at which tick marks were drawn
when the plot was first drawn.

## See also

[`buildAxis`](https://openintrostat.github.io/openintro/reference/buildAxis.md)
[`AxisInDollars`](https://openintrostat.github.io/openintro/reference/AxisInDollars.md)
[`AxisInDollars`](https://openintrostat.github.io/openintro/reference/AxisInDollars.md)

## Author

David Diez

## Examples

``` r

x <- sample(50e6, 100)
hist(x, axes = FALSE)
AxisInDollars(1, pretty(x))
```
