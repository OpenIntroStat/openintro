# Calculate hit streaks

Calculate hit streaks

## Usage

``` r
calc_streak(x)
```

## Arguments

- x:

  A character vector of hits (`"H"`) and misses (`"M"`).

## Value

A data frame with one column, `length`, containing the length of each
hit streak.

## Examples

``` r
data(kobe_basket)
calc_streak(kobe_basket$shot)
#>    length
#> 1       1
#> 2       0
#> 3       2
#> 4       0
#> 5       0
#> 6       0
#> 7       3
#> 8       2
#> 9       0
#> 10      3
#> 11      0
#> 12      1
#> 13      3
#> 14      0
#> 15      0
#> 16      0
#> 17      0
#> 18      0
#> 19      1
#> 20      1
#> 21      0
#> 22      4
#> 23      1
#> 24      0
#> 25      1
#> 26      0
#> 27      1
#> 28      0
#> 29      1
#> 30      2
#> 31      0
#> 32      1
#> 33      2
#> 34      1
#> 35      0
#> 36      0
#> 37      1
#> 38      0
#> 39      0
#> 40      0
#> 41      1
#> 42      1
#> 43      0
#> 44      1
#> 45      0
#> 46      2
#> 47      0
#> 48      0
#> 49      0
#> 50      3
#> 51      0
#> 52      1
#> 53      0
#> 54      1
#> 55      2
#> 56      1
#> 57      0
#> 58      1
#> 59      0
#> 60      0
#> 61      1
#> 62      3
#> 63      3
#> 64      1
#> 65      1
#> 66      0
#> 67      0
#> 68      0
#> 69      0
#> 70      0
#> 71      1
#> 72      1
#> 73      0
#> 74      0
#> 75      0
#> 76      1
```
