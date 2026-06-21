# Pew Research Center poll on health care, including question variants

For example, Pew Research Center conducted a survey with the following
question: "As you may know, by 2014 nearly all Americans will be
required to have health insurance. People who do not buy insurance will
pay a penalty while people who cannot afford it will receive financial
help from the government. Do you approve or disapprove of this policy?"
For each randomly sampled respondent, the statements in brackets were
randomized: either they were kept in the order given above, or the two
statements were reversed.

## Usage

``` r
healthcare_law_survey
```

## Format

A data frame with 1503 observations on the following 2 variables.

- response:

  a factor with levels `approve` `disapprove` `other`

## Source

www.people-press.org/2012/03/26/public-remains-split-on-health-care-bill-opposed-to-mandate/.
Sample sizes for each polling group are approximate.

## Examples

``` r


healthcare_law_survey
#> # A tibble: 1,503 × 2
#>    order                response
#>    <fct>                <fct>   
#>  1 cannot_afford_second approve 
#>  2 cannot_afford_second approve 
#>  3 cannot_afford_second approve 
#>  4 cannot_afford_second approve 
#>  5 cannot_afford_second approve 
#>  6 cannot_afford_second approve 
#>  7 cannot_afford_second approve 
#>  8 cannot_afford_second approve 
#>  9 cannot_afford_second approve 
#> 10 cannot_afford_second approve 
#> # ℹ 1,493 more rows
```
