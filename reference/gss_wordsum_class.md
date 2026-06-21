# gss_wordsum_class

A data frame containing data from the General Social Survey.

## Usage

``` r
gss_wordsum_class
```

## Format

A data frame with 795 observations on the following 2 variables.

- wordsum:

  A vocabulary score calculated based on a ten question vocabulary test,
  where a higher score means better vocabulary. Scores range from 1 to
  10.

- class:

  Self-identified social class has 4 levels: lower, working, middle, and
  upper class.

## Examples

``` r

library(dplyr)

gss_wordsum_class |>
  group_by(class) |>
  summarize(mean_wordsum = mean(wordsum))
#> # A tibble: 4 × 2
#>   class   mean_wordsum
#>   <chr>          <dbl>
#> 1 LOWER           5.07
#> 2 MIDDLE          6.76
#> 3 UPPER           6.19
#> 4 WORKING         5.75
```
