# census.2010

United States 2010 infant mortality and number of physicians by state,
including the District of Columbia.

## Usage

``` r
census.2010
```

## Format

A data frame with 51 rows and 3 columns.

- `state`:

  Character vector vector, US State including the District of Columbia

- `inf.mort`:

  Numeric vector, number of deaths per 1000 live births between 1 day
  and 1 year of age

- `doctors`:

  Numeric vector, active physicians per 100,000 population

## Source

<https://www.census.gov/library/publications/2009/compendia/statab/129ed/births-deaths-marriages-divorces.html>,
<https://www.census.gov/library/publications/2009/compendia/statab/129ed/health-nutrition.html>

## Details

Data were abstracted from the 2010 Statistical Abstract of the United
States. Due to a lag in recording state level data, the infant mortality
data is from 2009 and the data on physicians from 2007. Both
measurements are subject to change annually, so these data are not
current and should not be used for inference about infant mortality.
More current data can be found at the US Centers for Disease Control and
Prevention
(<https://www.cdc.gov/nchs/state-stats/deaths/infant-mortality.html?CDC_AAref_Val=https://www.cdc.gov/nchs/pressroom/sosmap/infant_mortality_rates/infant_mortality.htm>),
and in the dataset `infant_mort_2022`.
