# Bank manager recommendations based on sex

Study from the 1970s about whether sex influences hiring
recommendations.

## Usage

``` r
sex_discrimination
```

## Format

A data frame with 48 observations on the following 2 variables.

- sex:

  a factor with levels `female` and `male`

- decision:

  a factor with levels `not promoted` and `promoted`

## Source

Rosen B and Jerdee T. 1974. Influence of sex role stereotypes on
personnel decisions. Journal of Applied Psychology 59(1):9-14.

## Examples

``` r

library(ggplot2)

table(sex_discrimination)
#>         decision
#> sex      promoted not promoted
#>   male         21            3
#>   female       14           10

ggplot(sex_discrimination, aes(y = sex, fill = decision)) +
  geom_bar(position = "fill")
```
