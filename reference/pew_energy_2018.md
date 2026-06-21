# Pew Survey on Energy Sources in 2018

US-based survey on support for expanding six different sources of
energy, including solar, wind, offshore drilling, hydrolic fracturing
("fracking"), coal, and nuclear.

## Usage

``` r
pew_energy_2018
```

## Format

The format is: List of 6 \$ solar_panel_farms : List of responses on
solar farms. \$ wind_turbine_farms : List of responses on wind turbine
farms. \$ offshore_drilling : List of responses on offshore drilling. \$
hydrolic_fracturing : List of responses on hydrolic fracturing. \$
coal_mining : List of responses on coal mining. \$ nuclear_power_plants:
List of responses on nuclear.

## Source

<https://www.pewresearch.org/science/2018/05/14/majorities-see-government-efforts-to-protect-the-environment-as-insufficient/>

## Details

We did not have access to individual responses in original dataset, so
we took the published percentages and backed out the breakdown

## Examples

``` r

data(pew_energy_2018)
lapply(pew_energy_2018, head)
#> $solar_panel_farms
#> [1] "favor_increase" "favor_increase" "favor_increase" "no_increase"   
#> [5] "favor_increase" "favor_increase"
#> 
#> $wind_turbine_farms
#> [1] "favor_increase" "favor_increase" "favor_increase" "favor_increase"
#> [5] "favor_increase" "favor_increase"
#> 
#> $offshore_drilling
#> [1] "favor_increase" "no_increase"    "no_increase"    "no_increase"   
#> [5] "favor_increase" "no_increase"   
#> 
#> $hydrolic_fracturing
#> [1] "no_increase" "no_increase" "no_increase" "no_increase" "no_increase"
#> [6] "no_increase"
#> 
#> $coal_mining
#> [1] "favor_increase" "no_increase"    "no_increase"    "favor_increase"
#> [5] "no_increase"    "favor_increase"
#> 
#> $nuclear_power_plants
#> [1] "no_increase"    "no_increase"    "favor_increase" "no_increase"   
#> [5] "no_increase"    "favor_increase"
#> 
lapply(pew_energy_2018, length)
#> $solar_panel_farms
#> [1] 2541
#> 
#> $wind_turbine_farms
#> [1] 2541
#> 
#> $offshore_drilling
#> [1] 2541
#> 
#> $hydrolic_fracturing
#> [1] 2541
#> 
#> $coal_mining
#> [1] 2541
#> 
#> $nuclear_power_plants
#> [1] 2541
#> 
lapply(pew_energy_2018, table)
#> $solar_panel_farms
#> 
#> favor_increase    no_increase 
#>           2261            280 
#> 
#> $wind_turbine_farms
#> 
#> favor_increase    no_increase 
#>           2160            381 
#> 
#> $offshore_drilling
#> 
#> favor_increase    no_increase 
#>            991           1550 
#> 
#> $hydrolic_fracturing
#> 
#> favor_increase    no_increase 
#>            991           1550 
#> 
#> $coal_mining
#> 
#> favor_increase    no_increase 
#>            940           1601 
#> 
#> $nuclear_power_plants
#> 
#> favor_increase    no_increase 
#>           1118           1423 
#> 
Prop <- function(x) {
  table(x) / length(x)
}
lapply(pew_energy_2018, Prop)
#> $solar_panel_farms
#> x
#> favor_increase    no_increase 
#>      0.8898072      0.1101928 
#> 
#> $wind_turbine_farms
#> x
#> favor_increase    no_increase 
#>       0.850059       0.149941 
#> 
#> $offshore_drilling
#> x
#> favor_increase    no_increase 
#>      0.3900039      0.6099961 
#> 
#> $hydrolic_fracturing
#> x
#> favor_increase    no_increase 
#>      0.3900039      0.6099961 
#> 
#> $coal_mining
#> x
#> favor_increase    no_increase 
#>      0.3699331      0.6300669 
#> 
#> $nuclear_power_plants
#> x
#> favor_increase    no_increase 
#>      0.4399843      0.5600157 
#> 
```
