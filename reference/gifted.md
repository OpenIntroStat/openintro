# Analytical skills of young gifted children

An investigator is interested in understanding the relationship, if any,
between the analytical skills of young gifted children and the following
variables: father's IQ, mother's IQ, age in month when the child first
said "mummy" or "daddy", age in month when the child first counted to 10
successfully, average number of hours per week the child's mother or
father reads to the child, average number of hours per week the child
watched an educational program on TV during the past three months,
average number of hours per week the child watched cartoons on TV during
the past three months. The analytical skills are evaluated using a
standard testing procedure, and the score on this test is used as the
response variable.

## Usage

``` r
gifted
```

## Format

A data frame with 36 observations and 8 variables.

- score:

  Score in test of analytical skills.

- fatheriq:

  Father's IQ.

- motheriq:

  Mother's IQ.

- speak:

  Age in months when the child first said "mummy" or "daddy".

- count:

  Age in months when the child first counted to 10 successfully.

- read:

  Average number of hours per week the child's mother or father reads to
  the child.

- edutv:

  Average number of hours per week the child watched an educational
  program on TV during the past three months.

- cartoons:

  Average number of hours per week the child watched cartoons on TV
  during the past three months.

## Source

Graybill, F.A. & Iyer, H.K., (1994) Regression Analysis: Concepts and
Applications, Duxbury, p. 511-6.

## Details

Data were collected from schools in a large city on a set of thirty-six
children who were identified as gifted children soon after they reached
the age of four.

## Examples

``` r

gifted
#> # A tibble: 36 × 8
#>    score fatheriq motheriq speak count  read edutv cartoons
#>    <int>    <int>    <int> <int> <int> <dbl> <dbl>    <dbl>
#>  1   159      115      117    18    26   1.9  3        2   
#>  2   164      117      113    20    37   2.5  1.75     3.25
#>  3   154      115      118    20    32   2.2  2.75     2.5 
#>  4   157      113      131    12    24   1.7  2.75     2.25
#>  5   156      110      109    17    34   2.2  2.25     2.5 
#>  6   150      113      109    13    28   1.9  1.25     3.75
#>  7   155      118      119    19    24   1.8  2        3   
#>  8   161      117      120    18    32   2.3  2.25     2.5 
#>  9   163      111      128    22    28   2.1  1        4   
#> 10   162      122      120    18    27   2.1  2.25     2.75
#> # ℹ 26 more rows
```
