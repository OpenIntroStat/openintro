# Contagiousness of yawning

An experiment conducted by the MythBusters, a science entertainment TV
program on the Discovery Channel, tested if a person can be
subconsciously influenced into yawning if another person near them
yawns. 50 people were randomly assigned to two groups: 34 to a group
where a person near them yawned (treatment) and 16 to a group where
there wasn't a person yawning near them (control).

## Usage

``` r
yawn
```

## Format

A data frame with 50 observations on the following 2 variables.

- result:

  a factor with levels `not yawn` `yawn`

- group:

  a factor with levels `ctrl` `trmt`

## Source

MythBusters, Season 3, Episode 28.

## Examples

``` r

yawn
#> # A tibble: 50 × 2
#>    result group
#>    <fct>  <fct>
#>  1 yawn   trmt 
#>  2 yawn   trmt 
#>  3 yawn   trmt 
#>  4 yawn   trmt 
#>  5 yawn   trmt 
#>  6 yawn   trmt 
#>  7 yawn   trmt 
#>  8 yawn   trmt 
#>  9 yawn   trmt 
#> 10 yawn   trmt 
#> # ℹ 40 more rows
```
