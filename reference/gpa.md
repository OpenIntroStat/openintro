# Survey of Duke students on GPA, studying, and more

A survey of 55 Duke University students asked about their GPA, number of
hours they study at night, number of nights they go out, and their
gender.

## Usage

``` r
gpa
```

## Format

A data frame with 55 observations on the following 5 variables.

- studyweek:

  a numeric vector

- sleepnight:

  a numeric vector

- out:

  a numeric vector

- gender:

  a factor with levels `female` `male`

## Examples

``` r

gpa
#> # A tibble: 55 × 5
#>      gpa studyweek sleepnight   out gender
#>    <dbl>     <int>      <dbl> <dbl> <fct> 
#>  1  3.89        50          6     3 female
#>  2  3.9         15          6     1 female
#>  3  3.75        15          7     1 female
#>  4  3.6         10          6     4 male  
#>  5  4           25          7     3 female
#>  6  3.15        20          7     3 male  
#>  7  3.25        15          6     1 female
#>  8  3.92        10          8     3 female
#>  9  3.43        12          8     2 female
#> 10  3.8          2          8     4 male  
#> # ℹ 45 more rows
```
