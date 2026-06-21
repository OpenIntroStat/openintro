# Bank manager recommendations based on gender

Study from the 1970s about whether gender influences hiring
recommendations.

## Usage

``` r
gender_discrimination
```

## Format

A data frame with 48 observations on the following 2 variables.

- gender:

  a factor with levels `female` and `male`

- decision:

  a factor with levels `not promoted` and `promoted`

## Source

Rosen B and Jerdee T. 1974. Influence of sex role stereotypes on
personnel decisions. Journal of Applied Psychology 59(1):9-14.

## Examples

``` r

library(ggplot2)

table(gender_discrimination)
#>         decision
#> gender   promoted not promoted
#>   male         21            3
#>   female       14           10

ggplot(gender_discrimination, aes(y = gender, fill = decision)) +
  geom_bar(position = "fill")
```
