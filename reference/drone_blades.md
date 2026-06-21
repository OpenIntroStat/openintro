# Quadcopter Drone Blades

Quality control dataset for quadcopter drone blades, where this data has
been made up for an example.

## Usage

``` r
drone_blades
```

## Format

A data frame with 2000 observations on the following 2 variables.

- supplier:

  The supplier for the blade.

- inspection:

  The inspection conclusion.

## References

OpenIntro Statistics, Third Edition and Fourth Edition.

## Examples

``` r

library(dplyr)

drone_blades |>
  count(supplier, inspection)
#> # A tibble: 4 × 3
#>   supplier             inspection     n
#>   <fct>                <fct>      <int>
#> 1 current_supplier     fail         101
#> 2 current_supplier     pass         899
#> 3 prospective_supplier fail          42
#> 4 prospective_supplier pass         958
```
