# Sinusitis and antibiotic experiment

Researchers studying the effect of antibiotic treatment for acute
sinusitis to one of two groups: treatment or control.

## Usage

``` r
sinusitis
```

## Format

A data frame with 166 observations on the following 2 variables.

- group:

  a factor with levels `control` and `treatment`

- self_reported_improvement:

  a factor with levels `no` and `yes`

## Source

J.M. Garbutt et al. Amoxicillin for Acute Rhinosinusitis: A Randomized
Controlled Trial. In: JAMA: The Journal of the American Medical
Association 307.7 (2012), pp. 685-692.

## Examples

``` r

sinusitis
#> # A tibble: 166 × 2
#>    group     self_reported_improvement
#>    <fct>     <fct>                    
#>  1 treatment yes                      
#>  2 treatment yes                      
#>  3 treatment yes                      
#>  4 treatment yes                      
#>  5 treatment yes                      
#>  6 treatment yes                      
#>  7 treatment yes                      
#>  8 treatment yes                      
#>  9 treatment yes                      
#> 10 treatment yes                      
#> # ℹ 156 more rows
```
