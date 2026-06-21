# Speed, gender, and height of 1325 students

1,325 UCLA students were asked to fill out a survey where they were
asked about their height, fastest speed they have ever driven, and
gender.

## Usage

``` r
speed_gender_height
```

## Format

A data frame with 1325 observations on the following 3 variables.

- speed:

  a numeric vector

- gender:

  a factor with levels `female` and `male`

- height:

  a numeric vector

## Examples

``` r

speed_gender_height
#> # A tibble: 1,325 × 3
#>    speed gender height
#>    <int> <fct>   <dbl>
#>  1    85 female     69
#>  2    40 male       71
#>  3    87 female     64
#>  4   110 female     60
#>  5   110 male       70
#>  6   120 female     61
#>  7    90 female     65
#>  8    90 female     65
#>  9    80 female     61
#> 10    95 male       69
#> # ℹ 1,315 more rows
```
