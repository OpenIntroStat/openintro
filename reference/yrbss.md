# Youth Risk Behavior Surveillance System (YRBSS)

Select variables from YRBSS.

## Usage

``` r
yrbss
```

## Format

A data frame with 13583 observations on the following 13 variables.

- age:

  Age, in years.

- gender:

  Gender.

- grade:

  School grade.

- hispanic:

  Hispanic or not.

- race:

  Race / ethnicity.

- height:

  Height, in meters (3.28 feet per meter).

- weight:

  Weight, in kilograms (2.2 pounds per kilogram).

- helmet_12m:

  How often did you wear a helmet when biking in the last 12 months?

- text_while_driving_30d:

  How many days did you text while driving in the last 30 days?

- physically_active_7d:

  How many days were you physically active for 60+ minutes in the last 7
  days?

- hours_tv_per_school_day:

  How many hours of TV do you typically watch on a school night?

- strength_training_7d:

  How many days did you do strength training (e.g. lift weights) in the
  last 7 days?

- school_night_hours_sleep:

  How many hours of sleep do you typically get on a school night?

## Source

[CDC's Youth Risk Behavior Surveillance System
(YRBSS)](https://www.cdc.gov/healthyyouth/data/yrbs/data.htm)

## Examples

``` r

table(yrbss$physically_active_7d)
#> 
#>    0    1    2    3    4    5    6    7 
#> 2172  962 1270 1451 1265 1728  840 3622 
```
