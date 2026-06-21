# President's party performance and unemployment rate

Covers midterm elections.

## Usage

``` r
unemploy_pres
```

## Format

A data frame with 29 observations on the following 5 variables.

- year:

  Year.

- potus:

  The president in office.

- party:

  President's party.

- unemp:

  Unemployment rate.

- change:

  Change in House seats for the president's party.

## Source

Wikipedia.

## Examples

``` r

unemploy_pres
#> # A tibble: 29 × 5
#>     year potus                     party      unemp change
#>    <int> <fct>                     <fct>      <dbl>  <dbl>
#>  1  1899 William McKinley          Republican 11.6   -9.22
#>  2  1903 Theodore Roosevelt        Republican  4.3   -4.28
#>  3  1907 Theodore Roosevelt        Republican  3.29 -12.3 
#>  4  1911 William Howard Taft       Republican  5.86 -26.6 
#>  5  1915 Woodrow Wilson            Republican  6.63 -21.0 
#>  6  1919 Woodrow Wilson            Republican  3.38 -10.3 
#>  7  1923 Calvin Coolidge           Republican  6.93 -25.5 
#>  8  1927 Calvin Coolidge           Republican  4.02  -3.64
#>  9  1931 Herbert Clark Hoover      Republican  8.94 -19.3 
#> 10  1935 Franklin Delano Roosevelt Republican 21.3    2.88
#> # ℹ 19 more rows
```
