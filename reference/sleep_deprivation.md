# Survey on sleep deprivation and transportation workers

The National Sleep Foundation conducted a survey on the sleep habits of
randomly sampled transportation workers and a control sample of
non-transportation workers.

## Usage

``` r
sleep_deprivation
```

## Format

A data frame with 1087 observations on the following 2 variables.

- sleep:

  a factor with levels `<6`, `6-8`, and `>8`

- profession:

  a factor with levels `bus / taxi / limo drivers`, `control`, `pilots`,
  `train operators`, `truck drivers`

## Source

National Sleep Foundation, 2012 Sleep in America Poll: Transportation
Workers' Sleep, 2012.
<https://www.sleepfoundation.org/professionals/sleep-americar-polls/2012-sleep-america-poll-transportation-workers-sleep>

## Examples

``` r

sleep_deprivation
#> # A tibble: 1,087 × 2
#>    sleep profession
#>    <fct> <fct>     
#>  1 <6    control   
#>  2 <6    control   
#>  3 <6    control   
#>  4 <6    control   
#>  5 <6    control   
#>  6 <6    control   
#>  7 <6    control   
#>  8 <6    control   
#>  9 <6    control   
#> 10 <6    control   
#> # ℹ 1,077 more rows
```
