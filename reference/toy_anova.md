# Simulated dataset for ANOVA

Simulated dataset for getting a better understanding of intuition that
ANOVA is based off of.

## Usage

``` r
toy_anova
```

## Format

A data frame with 70 observations on the following 3 variables.

- group:

  a factor with levels `I` `II` `III`

- outcome:

  a numeric vector

## Examples

``` r

toy_anova
#> # A tibble: 140 × 2
#>    group outcome
#>    <chr>   <dbl>
#>  1 I      3.99  
#>  2 I     -1.24  
#>  3 I     -0.485 
#>  4 I     -0.0617
#>  5 I     -0.899 
#>  6 I     -0.864 
#>  7 I      1.68  
#>  8 I      0.381 
#>  9 I      0.786 
#> 10 I      3.84  
#> # ℹ 130 more rows
```
