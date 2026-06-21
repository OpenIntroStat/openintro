# Plot a Braces Symbol

This function is not yet very flexible.

## Usage

``` r
Braces(x, y, face.radians = 0, long = 1, short = 0.2, ...)
```

## Arguments

- x:

  x-coordinate of the center of the braces.

- y:

  y-coordinate of the center of the braces.

- face.radians:

  Radians of where the braces should face. For example, the default with
  `face.radians = 0` has the braces facing right. Setting to `pi / 2`
  would result in the braces facing up.

- long:

  The units for the long dimension of the braces.

- short:

  The units for the short dimension of the braces. This must be less
  than or equal to half of the long dimension.

- ...:

  Arguments passed to [`lines`](https://rdrr.io/r/graphics/lines.html).

## See also

[`dlsegments`](https://openintrostat.github.io/openintro/reference/dlsegments.md)

## Author

David Diez

## Examples

``` r

plot(0:1, 0:1, type = "n")
Braces(0.5, 0.5, face.radians = 3 * pi / 2)
```
