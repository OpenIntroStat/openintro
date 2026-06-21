# Number of Exclusive Relationships

A survey conducted on a reasonably random sample of 203 undergraduates
asked, among many other questions, about the number of exclusive
relationships these students have been in.

## Usage

``` r
exclusive_relationship
```

## Format

A data frame with 218 observations on the following variable.

## Examples

``` r

summary(exclusive_relationship$num)
#>    Min. 1st Qu.  Median    Mean 3rd Qu.    Max.     NAs 
#>   1.000   1.500   3.000   3.207   4.000  10.000      15 
table(exclusive_relationship$num)
#> 
#>  1  2  3  4  5  6  7  8  9 10 
#> 51 49  2 53 26 10  6  3  2  1 
hist(exclusive_relationship$num)
```
