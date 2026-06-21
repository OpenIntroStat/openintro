# Custom PDF function

A similar function to `pdf` and `png`, except that different defaults
are provided, including for the plotting parameters.

## Usage

``` r
myPDF(
  fileName,
  width = 5,
  height = 3,
  mar = c(3.9, 3.9, 1, 1),
  mgp = c(2.8, 0.55, 0),
  las = 1,
  tcl = -0.3,
  ...
)
```

## Arguments

- fileName:

  File name for the image to be output. The name should end in `.pdf`.

- width:

  The width of the image file (inches). Default: `5`.

- height:

  The height of the image file (inches). Default: `3`.

- mar:

  Plotting margins. To change, input a numerical vector of length 4.

- mgp:

  Margin graphing parameters. To change, input a numerical vector of
  length 3. The first argument specifies where x and y labels are
  placed; the second specifies the axis labels are placed; and the third
  specifies how far to pull the entire axis from the plot.

- las:

  Orientation of axis labels. Input `0` for the default.

- tcl:

  The tick mark length as a proportion of text height. The default is
  `-0.5`.

- ...:

  Additional arguments to `par`.

## See also

[`edaPlot`](https://openintrostat.github.io/openintro/reference/edaPlot.md)

## Author

David Diez

## Examples

``` r

# save a plot to a PDF
# myPDF("myPlot.pdf")
histPlot(mariokart$total_pr)

# dev.off()

# save a plot to a PNG
# myPNG("myPlot.png")
histPlot(mariokart$total_pr)
# dev.off()
```
