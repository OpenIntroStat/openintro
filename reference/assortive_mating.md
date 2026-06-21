# Eye color of couples

Colors of the eye colors of male and female partners.

## Usage

``` r
assortative_mating
```

## Format

A data frame with 204 observations on the following 2 variables.

- self_male:

  a factor with levels `blue`, `brown`, and `green`

- partner_female:

  a factor with `blue`, `brown`, and `green`

## Source

B. Laeng et al. Why do blue-eyed men prefer women with the same eye
color? In: Behavioral Ecology and Sociobiology 61.3 (2007), pp. 371-384.

## Examples

``` r

data(assortive_mating)
table(assortive_mating)
#>          partner_female
#> self_male blue brown green
#>     blue    78    23    13
#>     brown   19    23    12
#>     green   11     9    16
```
