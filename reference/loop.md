# Output a message while inside a loop

NOTE:
[`utils::txtProgressBar()`](https://rdrr.io/r/utils/txtProgressBar.html)
and
[`utils::setTxtProgressBar()`](https://rdrr.io/r/utils/txtProgressBar.html)
are better. Output a message while inside a for loop to update the user
on progress. This function is useful in tracking progress when the
number of iterations is large or the procedures in each iteration take a
long time.

## Usage

``` r
loop(i, n = NULL, every = 1, extra = NULL)
```

## Arguments

- i:

  The index value used in the loop.

- n:

  The last entry in the loop.

- every:

  The number of loops between messages.

- extra:

  Additional information to print.

## See also

[`myPDF`](https://openintrostat.github.io/openintro/reference/myPDF.md)

## Author

David Diez

## Examples

``` r

for (i in 1:160) {
  loop(i, 160, 20, paste("iter", i))
}
#> 20 of 160    iter 20
#> 40 of 160    iter 40
#> 60 of 160    iter 60
#> 80 of 160    iter 80
#> 100 of 160   iter 100
#> 120 of 160   iter 120
#> 140 of 160   iter 140
#> 160 of 160   iter 160
```
