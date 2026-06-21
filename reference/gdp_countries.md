# GDP Countries Data.

From World Bank, GDP in current U.S. dollars 1960-2020 by decade

## Usage

``` r
gdp_countries
```

## Format

A data frame with 659 rows and 9 variables.

- country:

  Name of country.

- description:

  description of data: GDP (in current US\$), GDP growth (annual %), GDP
  per capita (in current US\$)

- year_1960:

  value in 1960

- year_1970:

  value in 1970

- year_1980:

  value in 1980

- year_1990:

  value in 1990

- year_2000:

  value in 2000

- year_2010:

  value in 2010

- year_2020:

  value in 2020

## Source

[World Bank](https://databank.worldbank.org/home.aspx)

## Examples

``` r
library(dplyr)
# don't use scientific notation
options(scipen = 999)
# List the top 10 countries by GDP (There is a row for World)
gdp_countries |>
  filter(description == "GDP") |>
  mutate(year2020 = format(year_2020, big.mark = ",")) |>
  select(country, year2020) |>
  arrange(desc(year2020)) |>
  top_n(n = 11)
#> Selecting by year2020
#>               country           year2020
#> 1               World 84,705,400,000,000
#> 2       United States 20,936,600,000,000
#> 3               China 14,722,700,000,000
#> 4             Germany  3,806,060,000,000
#> 5      United Kingdom  2,707,740,000,000
#> 6               India  2,622,980,000,000
#> 7              France  2,603,000,000,000
#> 8               Italy  1,886,450,000,000
#> 9              Canada  1,643,410,000,000
#> 10        Korea, Rep.  1,630,530,000,000
#> 11 Russian Federation  1,483,500,000,000

# List the 10 countries with the biggest GDP per capita change from 1960 to 2020
gdp_countries |>
  filter(description == "GDP per capita") |>
  mutate(change = format(round(year_2020 - year_1960, 0), big.mark = ",")) |>
  select(country, change, year_1960, year_2020) |>
  na.omit() |>
  arrange(desc(change)) |>
  top_n(n = 10)
#> Selecting by year_2020
#>          country  change year_1960 year_2020
#> 1     Luxembourg 113,632 2242.0158 115873.60
#> 2    Switzerland  84,814 1787.3603  86601.56
#> 3        Ireland  83,127  685.6147  83812.80
#> 4         Norway  65,853 1441.7557  67294.48
#> 5  United States  60,536 3007.1234  63543.58
#> 6      Singapore  59,370  428.0590  59797.75
#> 7        Iceland  57,846 1414.9823  59260.89
#> 8    Netherlands  51,235 1068.7846  52304.06
#> 9      Australia  50,004 1807.7857  51812.15
#> 10        Sweden  49,812 2114.0030  51925.71
```
