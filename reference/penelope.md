# Guesses at the weight of Penelope (a cow)

The data was collected by the Planet Money podcast to test a theory
about crowd-sourcing. Penelope's actual weight was 1,355 pounds.

## Usage

``` r
penelope
```

## Format

A data frame with 17,184 observations on the following variable.

- weight:

  Guesses of Penelope's weight, in pounds.

## Source

<https://www.npr.org/sections/money/2015/08/07/429720443/17-205-people-guessed-the-weight-of-a-cow-heres-how-they-did>

## Examples

``` r

library(ggplot2)

ggplot(penelope, aes(x = weight)) +
  geom_histogram(binwidth = 250)


summary(penelope$weight)
#>    Min. 1st Qu.  Median    Mean 3rd Qu.    Max. 
#>     1.0   907.5  1245.0  1287.1  1542.0 14555.0 
```
