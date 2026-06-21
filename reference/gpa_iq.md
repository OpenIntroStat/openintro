# Sample of students and their GPA and IQ

Data on 78 students including GPA, IQ, and gender.

## Usage

``` r
gpa_iq
```

## Format

A data frame with 78 observations representing students on the following
5 variables.

- gpa:

  Grade point average (GPA).

- iq:

  IQ.

- gender:

  Gender.

- concept:

  a numeric vector

## Examples

``` r

gpa_iq
#> # A tibble: 78 × 5
#>      obs   gpa    iq gender concept
#>    <int> <dbl> <int>  <int>   <int>
#>  1     1  7.94   111      2      67
#>  2     2  8.29   107      2      43
#>  3     3  4.64   100      2      52
#>  4     4  7.47   107      2      66
#>  5     5  8.88   114      1      58
#>  6     6  7.58   115      2      51
#>  7     7  7.65   111      2      71
#>  8     8  2.41    97      2      51
#>  9     9  6      100      1      49
#> 10    10  8.83   112      2      51
#> # ℹ 68 more rows
```
