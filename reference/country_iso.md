# Country ISO information

Country International Organization for Standardization (ISO)
information.

## Usage

``` r
country_iso
```

## Format

A data frame with 249 observations on the following 4 variables.

- country_code:

  Two-letter ISO country code.

- country_name:

  Country name.

- year:

  Year the two-letter ISO country code was assigned.

- top_level_domain:

  op-level domain name.

## Source

Wikipedia, retrieved 2018-11-18.
<https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2>

## Examples

``` r

country_iso
#> # A tibble: 249 × 4
#>    country_code country_name          year top_level_domain
#>    <fct>        <fct>                <int> <fct>           
#>  1 AD           Andorra               1974 .ad             
#>  2 AE           United Arab Emirates  1974 .ae             
#>  3 AF           Afghanistan           1974 .af             
#>  4 AG           Antigua and Barbuda   1974 .ag             
#>  5 AI           Anguilla              1985 .ai             
#>  6 AL           Albania               1974 .al             
#>  7 AM           Armenia               1992 .am             
#>  8 AO           Angola                1974 .ao             
#>  9 AQ           Antarctica            1974 .aq             
#> 10 AR           Argentina             1974 .ar             
#> # ℹ 239 more rows
```
