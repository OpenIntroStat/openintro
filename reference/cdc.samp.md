# cdc.samp

A sample of 60 individuals from the 2000 Behavioral Risk Factors
Surveillance System (BRFSS) conducted by the US Centers for Disease
Control.

## Usage

``` r
cdc.samp
```

## Format

A tibble with 60 rows and 9 variables:

- `genhlth`:

  Factor with levels `excellent`, `very good` `good`, `fair`, `poor`

- `exerany`:

  Numeric vector; 1 if the respondent exercised in the past month and 0
  otherwise.

- `hlthplan`:

  Numeric vector; 1 if the respondent has some form of health coverage
  and 0 otherwise.

- `smoke100`:

  Numeric; 1 if the respondent has smoked at least 100 cigarettes in
  their entire life and 0 otherwise.

- `height`:

  Numeric; respondent's height in inches.

- `weight`:

  Numeric; respondent's weight in pounds.

- `wtdesire`:

  Numeric; respondent's desired weight in pounds.

- `age`:

  Numeric; respondent's age in years.

- `gender`:

  Factor with two levels `m` `f`

## Source

<https://www.openintro.org/stat/data/cdc.R>
