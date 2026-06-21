# Health Coverage and Health Status

Survey responses for 20,000 responses to the Behavioral Risk Factor
Surveillance System.

## Usage

``` r
health_coverage
```

## Format

A data frame with 20000 observations on the following 2 variables.

- health_status:

  The person's health status.

## Source

Office of Surveillance, Epidemiology, and Laboratory Services Behavioral
Risk Factor Surveillance System, BRFSS 2010 Survey Data.

## Examples

``` r


table(health_coverage)
#>         health_status
#> coverage Excellent Fair Good Poor Very good
#>      No        459  385  854   99       727
#>      Yes      4198 1634 4821  578      6245
```
