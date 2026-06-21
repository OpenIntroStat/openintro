# Drug use of students and parents

Summary of 445 student-parent pairs.

## Usage

``` r
drug_use
```

## Format

A data frame with 445 observations on the following 2 variables.

- student:

  a factor with levels `not` `uses`

- parents:

  a factor with levels `not` `used`

## Source

Ellis GJ and Stone LH. 1979. Marijuana Use in College: An Evaluation of
a Modeling Explanation. Youth and Society 10:323-334.

## Examples

``` r

table(drug_use)
#>        parents
#> student not used
#>    not  141   85
#>    uses  94  125
```
