# Simulated Google search experiment

The data were simulated to look like sample results from a Google search
experiment.

## Usage

``` r
gsearch
```

## Format

A data frame with 10000 observations on the following 2 variables.

- type:

  a factor with levels `new search` `no new search`

- outcome:

  a factor with levels `current` `test 1` `test 2`

## Examples

``` r

library(ggplot2)

table(gsearch$type, gsearch$outcome)
#>                
#>                 current test 1 test 2
#>   new search       1489    751    682
#>   no new search    3511   1749   1818

ggplot(gsearch, aes(x = type, fill = outcome)) +
  geom_bar(position = "fill") +
  labs(y = "proportion")
```
