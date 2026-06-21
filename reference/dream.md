# Survey on views of the DREAM Act

A SurveyUSA poll.

## Usage

``` r
dream
```

## Format

A data frame with 910 observations on the following 2 variables.

- ideology:

  a factor with levels `Conservative` `Liberal` `Moderate`

- stance:

  a factor with levels `No` `Not sure` `Yes`

## Source

SurveyUSA, News Poll \#18927, data collected Jan 27-29, 2012.

## Examples

``` r

table(dream)
#>               stance
#> ideology        No Not sure Yes
#>   Conservative 151       35 186
#>   Liberal       52        9 114
#>   Moderate     161       28 174
```
