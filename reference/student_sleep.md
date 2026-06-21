# Sleep for 110 students (simulated)

A simulated dataset for how much 110 college students each slept in a
single night.

## Usage

``` r
student_sleep
```

## Format

A data frame with 110 observations on the following variable.

- hours:

  Number of hours slept by this student (simulated).

## Source

Simulated data.

## Examples

``` r

set.seed(2)
x <- exp(c(
  rnorm(100, log(7.5), 0.15),
  rnorm(10, log(10), 0.196)
))
x <- round(x - mean(x) + 7.42, 2)

identical(x, student_sleep$hours)
#> [1] TRUE
```
