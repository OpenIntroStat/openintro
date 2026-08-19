# county_2023

County level data from the US Census American Community Survey 2023
5-year estimates.

## Usage

``` r
county_2023
```

## Format

A data frame with 3144 rows and 43 columns.

- `geoid`:

  Unique numeric code used by the U.S. Census Bureau to identify
  specific geographic areas.

- `county_state`:

  Name of county and state.

- `name`:

  Name of county.

- `state`:

  Name of state.

- `individual_income`:

  Median individual income for the county, measure in 2018 USD.

- `population_size`:

  Number of people residing in the county.

- `white`:

  Percent of the population who identified as only white.

- `african_american`:

  Percent of the population who identified as only Black or African
  American.

- `age`:

  Median age of those who live in the county, measured in years.

- `age_under_5`:

  Percent of the population under the age of 5.

- `age_85_plus`:

  Percent of the population age 85 and older.

- `age_18_plus`:

  Percent of the population age 18 and older.

- `age_65_plus`:

  Percent of the population age 65 and older.

- `travel_time`:

  Mean travel time to work, measured in minutes.

- `household_size`:

  Mean household size.

- `family_size`:

  Mean family size.

- `one_unit_structure`:

  Percent of properties with a residential building that contains a
  single housing dwelling unit.

- `two_unit_structure`:

  Percent of properties with a residential building that contains two or
  more separate housing units (such as a duplex or apartments).

- `mobile_and_other`:

  Percent of properties with mobile homes and all other types of housing
  structures.

- `individual_income_25_plus`:

  Median individual income for those age 25 or older.

- `hs_grad`:

  Percent of the population over the age 25 or older with at least a
  high school diploma.

- `college_grad`:

  Percent of the population over the age 25 or older with at least a
  Bachelor's Degree.

- `total_households`:

  Total number of households in the county.

- `spanish_speaking`:

  Percent of households that speak Spanish.

- `indo_european_language`:

  Percent of households that speak an Indo-European language other than
  English.

- `api_language`:

  Percent of households that speak an Asian and Pacific Islander
  language.

- `non_euro_api`:

  Percent of households speaking an non-European or Asian and Pacific
  Islander language.

- `limited_english`:

  Percent of households that speak limited English.

- `poverty`:

  Percent of population living below the poverty line.

- `poverty_18`:

  Percent of population under the age of 18 living below the poverty
  line.

- `poverty_65`:

  Percent of the population over the age of 65 living below the povery
  line.

- `household_income_mean`:

  Mean household income, measured in 2018 USD.

- `household_income_median`:

  Median household income, measured in 2018 USD.

- `per_capita_income`:

  Mean income per capita, measured in 2018 USD.

- `veterans`:

  Percent of the civilian population age 18 or older who served in the
  military.

- `unemployment_20_64`:

  Unemployment rate for those age 20 to 64.

- `uninsured`:

  Percent of the civilian population who is uninsured.

- `uninsured_6`:

  Percent of population under the age of 6 who are uninsured.

- `uninsured_19`:

  Percent of the population under the age of 19 who are uninsured.

- `uninsured_65`:

  Percent of the population age 65 and older who are uninsured.

- `computers`:

  Percent of households that have a laptop or desktop computer.

- `smartphones`:

  Percent of households that have a smartphone.

- `broadband`:

  Percent of households with computers that have access to broadband
  internet.

## Source

<https://www.census.gov/programs-surveys/acs/data.html> collected using
the `tidycensus` package.
