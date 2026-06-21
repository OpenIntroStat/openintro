# Simulated sample of parent / teen college attendance

A simulated dataset based on real population summaries.

## Usage

``` r
family_college
```

## Format

A data frame with 792 observations on the following 2 variables.

- teen:

  Whether the teen goes to `college` or `not`.

- parents:

  Whether the parent holds a college `degree` or `not`.

## Source

Simulation based off of summary information provided at
<https://eric.ed.gov/?id=ED460660>.

## Examples

``` r

library(dplyr)

family_college |>
  count(teen, parents)
#> # A tibble: 4 × 3
#>   teen    parents     n
#>   <fct>   <fct>   <int>
#> 1 college degree    231
#> 2 college not       214
#> 3 not     degree     49
#> 4 not     not       298
```
