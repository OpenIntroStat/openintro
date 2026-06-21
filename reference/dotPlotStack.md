# Add a Stacked Dot Plot to an Existing Plot

Add a stacked dot plot to an existing plot. The locations for the points
in the dot plot are returned from the function in a list.

## Usage

``` r
dotPlotStack(x, radius = 1, seed = 1, addDots = TRUE, ...)
```

## Arguments

- x:

  A vector of numerical observations for the dot plot.

- radius:

  The approximate distance that should separate each point.

- seed:

  A random seed (integer). Different values will produce different
  variations.

- addDots:

  Indicate whether the points should be added to the plot.

- ...:

  Additional arguments are passed to
  [`points`](https://rdrr.io/r/graphics/points.html).

## Value

Returns a list with a height that can be used as the upper bound of ylim
for a plot, then also the x- and y-coordinates of the points in the
stacked dot plot.

## See also

[`dotPlot`](https://openintrostat.github.io/openintro/reference/dotPlot.md),
[`histPlot`](https://openintrostat.github.io/openintro/reference/histPlot.md)

## Author

David Diez

## Examples

``` r

#
```
