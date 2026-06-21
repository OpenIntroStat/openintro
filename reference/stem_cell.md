# Embryonic stem cells to treat heart attack (in sheep)

Does treatment using embryonic stem cells (ESCs) help improve heart
function following a heart attack? Each sheep in the study was randomly
assigned to the ESC or control group, and the change in their hearts'
pumping capacity was measured in the study. A positive value corresponds
to increased pumping capacity, which generally suggests a stronger
recovery.

## Usage

``` r
stem_cell
```

## Format

A data frame with 18 observations on the following 3 variables.

- trmt:

  a factor with levels `ctrl` `esc`

- before:

  a numeric vector

- after:

  a numeric vector

## Source

[doi:10.1016/S0140-6736(05)67380-1](https://doi.org/10.1016/S0140-6736%2805%2967380-1)

## Examples

``` r

stem_cell
#> # A tibble: 18 × 3
#>    trmt  before after
#>    <fct>  <dbl> <dbl>
#>  1 ctrl    35.2  29.5
#>  2 ctrl    36.5  29.5
#>  3 ctrl    39.8  36.2
#>  4 ctrl    39.8  38  
#>  5 ctrl    41.8  37.5
#>  6 ctrl    45    42.8
#>  7 ctrl    47    39  
#>  8 ctrl    52    45.2
#>  9 ctrl    52    52.2
#> 10 esc     29    31  
#> 11 esc     29.5  43.8
#> 12 esc     34    36  
#> 13 esc     35    41.5
#> 14 esc     35.2  39.5
#> 15 esc     42.5  40  
#> 16 esc     44    45.8
#> 17 esc     49.2  55.2
#> 18 esc     53.8  51  
```
