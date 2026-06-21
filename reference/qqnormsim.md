# Generate simulated QQ plots

Create a 3 x 3 grid of quantile-quantile plots, the first of which
corresponds to the input data. The other eight plots arise from
simulating random normal data with the same mean, standard deviation,
and length as the data. For use in comparing known-normal qqplots to an
observed qqplot to assess normality.

## Usage

``` r
qqnormsim(sample, data)
```

## Arguments

- sample:

  the variable to be plotted.

- data:

  data frame to use.

## Value

A 3 x 3 grid of qqplots.
