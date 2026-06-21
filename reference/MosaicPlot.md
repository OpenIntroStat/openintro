# Custom Mosaic Plot

Plot a mosaic plot custom built for a particular figure.

## Usage

``` r
MosaicPlot(
  formula,
  data,
  col = "#00000022",
  border = 1,
  dir = c("v", "h"),
  off = 0.01,
  cex.axis = 0.7,
  col.dir = "v",
  flip = c("v"),
  ...
)
```

## Arguments

- formula:

  Formula describing the variable relationship.

- data:

  Data frame for the variables, optional.

- col:

  Colors for plotting.

- border:

  Ignored.

- dir:

  Ignored.

- off:

  Fraction of white space between each box in the plot.

- cex.axis:

  Axis label size.

- col.dir:

  Direction to lay out colors.

- flip:

  Whether to flip the ordering of the vertical (`"v"`) and/or horizontal
  (`"h"`) ordering in the plot.

- ...:

  Ignored.

## Author

David Diez

## Examples

``` r

data(email)
data(COL)
email$spam <- ifelse(email$spam == 0, "not\nspam", "spam")
MosaicPlot(number ~ spam, email, col = COL[1:3], off = 0.02)
```
