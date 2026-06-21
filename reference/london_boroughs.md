# London Borough Boundaries

This dataset contains the coordinates of the boundaries of all 32
boroughs of the Greater London area.

## Usage

``` r
london_boroughs
```

## Format

A data frame with 45341 observations on the following 3 variables.

- borough:

  Name of the borough.

- x:

  The "easting" component of the coordinate, see details.

- y:

  The "northing" component of the coordinate, see details.

## Source

<https://data.london.gov.uk/dataset/ordnance-survey-code-point>

Contains Ordinance Survey data released under the [Open Government
License, OGL
v2](https://www.nationalarchives.gov.uk/doc/open-government-licence/version/2/).

## Details

Map data was made available through the Ordnance Survey Open Data
initiative. The data use the [National
Grid](https://en.wikipedia.org/wiki/Ordnance_Survey_National_Grid)
coordinate system, based upon eastings (`x`) and northings (`y`) instead
of longitude and latitude.

The `name` variable covers all 32 boroughs in Greater London:
`Barking & Dagenham`, `Barnet`, `Bexley`, `Brent`, `Bromley`, `Camden`,
`Croydon`, `Ealing`, `Enfield`, `Greenwich`, `Hackney`,
`Hammersmith & Fulham`, `Haringey`, `Harrow`, `Havering`, `Hillingdon`,
`Hounslow`, `Islington`, `Kensington & Chelsea`, `Kingston`, `Lambeth`,
`Lewisham`, `Merton`, `Newham`, `Redbridge`, `Richmond`, `Southwark`,
`Sutton`, `Tower Hamlets`, `Waltham Forest`, `Wandsworth`, `Westminster`

## See also

london_murders

## Examples

``` r

library(dplyr)
library(ggplot2)

# Calculate number of murders by borough
london_murders_counts <- london_murders |>
  group_by(borough) |>
  add_tally()

london_murders_counts
#> # A tibble: 838 × 6
#> # Groups:   borough [32]
#>    forename             age date        year borough        n
#>    <fct>              <int> <date>     <int> <fct>      <int>
#>  1 Barrington Derrick    19 2006-01-02  2006 Hackney       42
#>  2 Aaron                 24 2006-01-02  2006 Lewisham      36
#>  3 Christopher           22 2006-01-03  2006 Hillingdon    21
#>  4 Thomas Philip         18 2006-01-04  2006 Camden        24
#>  5 Amanda                26 2006-01-04  2006 Camden        24
#>  6 Siva-Kumar            44 2006-01-05  2006 Brent         32
#>  7 Doreen                39 2006-01-08  2006 Croydon       38
#>  8 Matthew Roy           21 2006-01-09  2006 Lambeth       79
#>  9 Joan                  78 2006-01-09  2006 Enfield       31
#> 10 Monsur                27 2006-01-11  2006 Hackney       42
#> # ℹ 828 more rows
if (FALSE) { # \dontrun{
# Add number of murders to geographic boundary data
london_boroughs_murders <- inner_join(london_boroughs, london_murders_counts, by = "borough")

# Map murders
ggplot(london_boroughs_murders) +
  geom_polygon(aes(x = x, y = y, group = borough, fill = n), colour = "white") +
  scale_fill_distiller(direction = 1) +
  labs(x = "Easting", y = "Northing", fill = "Number of murders")
} # }
```
