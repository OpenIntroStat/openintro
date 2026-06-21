# Ethanol Treatment for Tumors Experiment

Experiment where 3 different treatments of ethanol were tested on the
treatment of oral cancer tumors in hamsters.

## Usage

``` r
ethanol
```

## Format

A data frame with 24 observations, each representing one hamster, on the
following 2 variables.

- regress:

  a factor with levels `no` `yes`

## Source

Morhard R, et al. 2017. Development of enhanced ethanol ablation as an
alternative to surgery in treatment of superficial solid tumors.
Scientific Reports 7:8750.

## Details

The `ethyl_cellulose` and `pure_ethanol` treatments consisted of about a
quarter of the volume of the tumors, while the `pure_ethanol_16x`
treatment was 16x that, so about 4 times the size of the tumors.

## Examples

``` r

table(ethanol)
#>                   regress
#> treatment          no yes
#>   ethyl_cellulose   1   6
#>   pure_ethanol      5   0
#>   pure_ethanol_16x  8   4
fisher.test(table(ethanol))
#> 
#>  Fisher's Exact Test for Count Data
#> 
#> data:  table(ethanol)
#> p-value = 0.008155
#> alternative hypothesis: two.sided
#> 
```
