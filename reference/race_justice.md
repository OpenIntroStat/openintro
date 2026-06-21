# Yahoo! News Race and Justice poll results

Results from a Yahoo! News poll conducted by YouGov on May 29-31, 2020.
In total 1060 U.S. adults were asked a series of questions regarding
race and justice in the wake of the killing of George Floyd by a police
officer. Results in this dataset are percentages for the question, "Do
you think Blacks and Whites receive equal treatment from the police?"
For this particular question there were 1059 respondents.

## Usage

``` r
race_justice
```

## Format

A data frame with 1,059 rows and 2 variables.

- race_eth:

  Race/ethnicity of respondent, with levels `White`, `Black`,
  `Hispanic`, and `Other`.

- response:

  Response to the question "Do you think Black and White people receive
  equal treatment from the police?", with levels `Yes`, `No`, and
  `Not sure`.

## Source

[Yahoo! News Race and Justice - May 31,
2020](https://docs.cdn.yougov.com/s23agrrx47/20200531_yahoo_race_and_justice_crosstabs.pdf).

## Examples

``` r

library(ggplot2)
library(dplyr)

# Conditional probabilities of response for each race/ethnicity
race_justice |>
  count(race_eth, response) |>
  group_by(race_eth) |>
  mutate(prop = n / sum(n))
#> # A tibble: 12 × 4
#> # Groups:   race_eth [4]
#>    race_eth response     n   prop
#>    <fct>    <fct>    <int>  <dbl>
#>  1 White    Yes        201 0.260 
#>  2 White    No         486 0.630 
#>  3 White    Not sure    85 0.110 
#>  4 Black    Yes          6 0.0594
#>  5 Black    No          92 0.911 
#>  6 Black    Not sure     3 0.0297
#>  7 Hispanic Yes         15 0.144 
#>  8 Hispanic No          75 0.721 
#>  9 Hispanic Not sure    14 0.135 
#> 10 Other    Yes         14 0.171 
#> 11 Other    No          47 0.573 
#> 12 Other    Not sure    21 0.256 

# Stacked bar plot of counts
ggplot(race_justice, aes(x = race_eth, fill = response)) +
  geom_bar() +
  labs(
    x = "Race / ethnicity",
    y = "Count",
    title = "Do you think Black and White people receive
equal treatment from the police?",
    fill = "Response"
  )


# Stacked bar plot of proportions
ggplot(race_justice, aes(x = race_eth, fill = response)) +
  geom_bar(position = "fill") +
  labs(
    x = "Race / ethnicity",
    y = "Proportion",
    title = "Do you think Black and White people receive
equal treatment from the police?",
    fill = "Response"
  )
```
