# Poll on illegal workers in the US

910 randomly sampled registered voters in Tampa, FL were asked if they
thought workers who have illegally entered the US should be (i) allowed
to keep their jobs and apply for US citizenship, (ii) allowed to keep
their jobs as temporary guest workers but not allowed to apply for US
citizenship, or (iii) lose their jobs and have to leave the country as
well as their political ideology.

## Usage

``` r
immigration
```

## Format

A data frame with 910 observations on the following 2 variables.

- response:

  a factor with levels `Apply for citizenship` `Guest worker`
  `Leave the country` `Not sure`

- political:

  a factor with levels `conservative` `liberal` `moderate`

## Source

SurveyUSA, News Poll \#18927, data collected Jan 27-29, 2012.

## Examples

``` r


immigration
#> # A tibble: 910 × 2
#>    response              political   
#>    <fct>                 <fct>       
#>  1 Apply for citizenship conservative
#>  2 Apply for citizenship conservative
#>  3 Apply for citizenship conservative
#>  4 Apply for citizenship conservative
#>  5 Apply for citizenship conservative
#>  6 Apply for citizenship conservative
#>  7 Apply for citizenship conservative
#>  8 Apply for citizenship conservative
#>  9 Apply for citizenship conservative
#> 10 Apply for citizenship conservative
#> # ℹ 900 more rows
```
