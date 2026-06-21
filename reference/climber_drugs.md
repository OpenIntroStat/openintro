# Climber Drugs Data.

Anonymous data was collected from urine samples at huts along the climb
of Mont Blanc. Several types of drugs were tested, and proportions were
reported.

## Usage

``` r
climber_drugs
```

## Format

A data frame with 211 rows and 6 variables.

- positive_sample:

  Idendification number of a specific urine sample.

- hut:

  Location where the sample was taken.

- substance:

  Substance detected to be present in the urine sample.

- concentration:

  Amount of substance found measured in ng/ml.

- screening_analysis:

  Indicates that the concentration was determined by screening analysis.

- concomitant:

  Indicates that this substance was always detected concomitantly with
  the previous one, within the same urine sample.

## Source

[PLOS One - Drug Use on Mont Blanc: A Study Using Automated Urine
Collection](https://journals.plos.org/plosone/article?id=10.1371/journal.pone.0156786#sec012)

## Examples

``` r
library(dplyr)

# Calculate the average concentration of each substance and number of occurrences.
climber_drugs |>
  group_by(substance) |>
  summarize(count = n(), mean_con = mean(concentration))
#> # A tibble: 33 × 3
#>    substance       count mean_con
#>    <chr>           <int>    <dbl>
#>  1 Acetazolamide      78   30385.
#>  2 Anastrozole         1     250 
#>  3 Benzoylecgonine     3     181.
#>  4 Betamethasone       3      25 
#>  5 Betaxolol           2     201 
#>  6 Bisoprolol          1      64 
#>  7 Bromazepam          1      23 
#>  8 Brotizolam          1       1 
#>  9 Budesonide          2      15 
#> 10 Caffeine            4    7725 
#> # ℹ 23 more rows

# Proportion samples in which each substance was detected.
climber_drugs |>
  group_by(substance) |>
  summarize(prop = n() / 154)
#> # A tibble: 33 × 2
#>    substance          prop
#>    <chr>             <dbl>
#>  1 Acetazolamide   0.506  
#>  2 Anastrozole     0.00649
#>  3 Benzoylecgonine 0.0195 
#>  4 Betamethasone   0.0195 
#>  5 Betaxolol       0.0130 
#>  6 Bisoprolol      0.00649
#>  7 Bromazepam      0.00649
#>  8 Brotizolam      0.00649
#>  9 Budesonide      0.0130 
#> 10 Caffeine        0.0260 
#> # ℹ 23 more rows
```
