# Burger preferences

Sample burger place preferences versus gender.

## Usage

``` r
burger
```

## Format

A data frame with 500 observations on the following 2 variables.

- best_burger_place:

  Burger place.

- gender:

  a factor with levels `Female` and `Male`

## Source

SurveyUSA, Results of SurveyUSA News Poll \#17718, data collected on
December 2, 2010.

## Examples

``` r

table(burger)
#>                     gender
#> best_burger_place    Female Male
#>   Fat Burger             12   10
#>   Five Guys Burgers       6    5
#>   In-N-Out Burger       181  162
#>   Not Sure                5   13
#>   Other                  20   26
#>   Tommy's Hamburgers     27   27
#>   Umami Burger            1    5
```
