# Simpson's Paradox: Covid

A dataset on Delta Variant Covid-19 cases in the UK. This dataset gives
a great example of Simpson's Paradox. When aggregating results without
regard to age group, the death rate for vaccinated individuals is higher
– but they have a much higher risk population. Once we look at
populations with more comparable risks (breakout age groups), we see
that the vaccinated group tends to be lower risk in each risk-bucketed
group and that many of the higher risk patients had gotten vaccinated.
The dataset was brought to OpenIntro's attention by Matthew T. Brenneman
of Embry-Riddle Aeronautical University. Note: some totals in the
original source differ as there were some cases that did not have ages
associated with them.

## Usage

``` r
simpsons_paradox_covid
```

## Format

A data frame with 286,166 rows and 3 variables:

- age_group:

  Age of the person. Levels: `under 50`, `50 +`.

- vaccine_status:

  Vaccination status of the person. Note: the vaccinated group includes
  those who were only partially vaccinated. Levels: `vaccinated`,
  `unvaccinated`

- outcome:

  Did the person die from the Delta variant? Levels: `death` and
  `survived`.

## Source

[Public Health England: Technical briefing
20](https://assets.publishing.service.gov.uk/government/uploads/system/uploads/attachment_data/file/1009243/Technical_Briefing_20.pdf)

## Examples

``` r
library(dplyr)
library(scales)
# Calculate the mortality rate for all cases by vaccination status
simpsons_paradox_covid |>
  group_by(vaccine_status, outcome) |>
  summarize(count = n()) |>
  ungroup() |>
  group_by(vaccine_status) |>
  mutate(total = sum(count)) |>
  filter(outcome == "death") |>
  select(c(vaccine_status, count, total)) |>
  mutate(mortality_rate = label_percent(accuracy = 0.01)(round(count / total, 4))) |>
  select(-c(count, total))
#> `summarise()` has regrouped the output.
#> ℹ Summaries were computed grouped by vaccine_status and outcome.
#> ℹ Output is grouped by vaccine_status.
#> ℹ Use `summarise(.groups = "drop_last")` to silence this message.
#> ℹ Use `summarise(.by = c(vaccine_status, outcome))` for per-operation grouping
#>   (`?dplyr::dplyr_by`) instead.
#> # A tibble: 2 × 2
#> # Groups:   vaccine_status [2]
#>   vaccine_status mortality_rate
#>   <chr>          <chr>         
#> 1 unvaccinated   0.17%         
#> 2 vaccinated     0.41%         

# Calculate mortality rate by age group and vaccination status
simpsons_paradox_covid |>
  group_by(age_group, vaccine_status, outcome) |>
  summarize(count = n()) |>
  ungroup() |>
  group_by(age_group, vaccine_status) |>
  mutate(total = sum(count)) |>
  filter(outcome == "death") |>
  select(c(age_group, vaccine_status, count, total)) |>
  mutate(mortality_rate = label_percent(accuracy = 0.01)(round(count / total, 4))) |>
  select(-c(count, total))
#> `summarise()` has regrouped the output.
#> ℹ Summaries were computed grouped by age_group, vaccine_status, and outcome.
#> ℹ Output is grouped by age_group and vaccine_status.
#> ℹ Use `summarise(.groups = "drop_last")` to silence this message.
#> ℹ Use `summarise(.by = c(age_group, vaccine_status, outcome))` for
#>   per-operation grouping (`?dplyr::dplyr_by`) instead.
#> # A tibble: 4 × 3
#> # Groups:   age_group, vaccine_status [4]
#>   age_group vaccine_status mortality_rate
#>   <chr>     <chr>          <chr>         
#> 1 50 +      unvaccinated   5.96%         
#> 2 50 +      vaccinated     1.68%         
#> 3 under 50  unvaccinated   0.03%         
#> 4 under 50  vaccinated     0.02%         
```
