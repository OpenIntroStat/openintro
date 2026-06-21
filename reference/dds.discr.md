# A dataset on disbursements from the California Department of Developmental Services (DDS)

The dataset represents a sample of 1,000 DDS consumers (out of a total
population of approximately 250,000),and includes information about age,
gender, ethnicity, and the amount of financial support per consumer
provided by the DDS.The dataset is based on recorded attributes of
consumers, but has been altered to maintain consumer privacy. From the
Taylor and Mickel paper: "The data set originated from DDS’s Client
Master File. In order to remain in compliance with California State
Legislation, the data have been altered to protect the rights and
privacy of specific individual consumers. The provided data set is based
on actual attributes of consumers."

## Usage

``` r
dds.discr
```

## Format

A dataframe with 1000 rows and 6 variables:

- `id`:

  Numeric, Unique identification code for each resident

- `age.cohort`:

  A factor, `0-5` years, `6-12` years, `13-17` years, `18-21` years,
  `22-50` years, and `51+` years

- `age`:

  Numeric, Age measured in years

- `gender`:

  A factor, with levels `Female` or `Male`

- `expenditures`:

  Numeric, Amount of expenditures spent by the State on an individual
  annually, measured in USD

- `ethnicity`:

  Factor, Ethnic group, recorded as `American Indian`, `Asian`, `Black`,
  `Hispanic`, `Multi Race`, `Native Hawaiian`, `Other`,
  `White not Hispanic`

@references Taylor, Stanley A., and Amy E. Mickel. Simpson's paradox: A
data set and discrimination case study exercise. Journal of Statistics
Education 22.1 (2014). Data contained in supplement B of Taylor and
Mickel.
