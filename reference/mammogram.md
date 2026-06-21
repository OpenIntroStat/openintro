# Experiment with Mammogram Randomized

An experiment where 89,835 women were randomized to either get a
mammogram or a non-mammogram breast screening. The response measured was
whether they had died from breast cancer within 25 years.

## Usage

``` r
mammogram
```

## Format

A data frame with 89835 observations on the following 2 variables.

- breast_cancer_death:

  a factor with levels `no` `yes`

## Source

Miller AB. 2014. Twenty five year follow-up for breast cancer incidence
and mortality of the Canadian National Breast Screening Study:
randomised screening trial. BMJ 2014;348:g366.

## Examples

``` r


table(mammogram)
#>            breast_cancer_death
#> treatment      no   yes
#>   control   44405   505
#>   mammogram 44425   500
chisq.test(table(mammogram))
#> 
#>  Pearson's Chi-squared test with Yates' continuity correction
#> 
#> data:  table(mammogram)
#> X-squared = 0.01748, df = 1, p-value = 0.8948
#> 
```
