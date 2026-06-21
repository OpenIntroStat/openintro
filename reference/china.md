# Child care hours

The China Health and Nutrition Survey aims to examine the effects of the
health, nutrition, and family planning policies and programs implemented
by national and local governments.

## Usage

``` r
china
```

## Format

A data frame with 9788 observations on the following 3 variables.

- gender:

  a numeric vector

- edu:

  a numeric vector

- child_care:

  a numeric vector

## Source

UNC Carolina Population Center, China Health and Nutrition Survey, 2006.

## Examples

``` r

summary(china)
#>      gender           edu          child_care     
#>  Min.   :1.000   Min.   :1.000   Min.   :-99.000  
#>  1st Qu.:1.000   1st Qu.:1.000   1st Qu.:  2.000  
#>  Median :2.000   Median :2.000   Median : 10.000  
#>  Mean   :1.524   Mean   :2.374   Mean   :  2.759  
#>  3rd Qu.:2.000   3rd Qu.:3.000   3rd Qu.: 27.000  
#>  Max.   :2.000   Max.   :9.000   Max.   :168.000  
#>                  NAs    :2434    NAs    :8549     
```
