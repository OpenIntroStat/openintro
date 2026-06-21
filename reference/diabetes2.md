# Type 2 Diabetes Clinical Trial for Patients 10-17 Years Old

Three treatments were compared to test their relative efficacy
(effectiveness) in treating Type 2 Diabetes in patients aged 10-17 who
were being treated with metformin. The primary outcome was lack of
glycemic control (or not); lacking glycemic control means the patient
still needed insulin, which is not the preferred outcome for a patient.

## Usage

``` r
diabetes2
```

## Format

A data frame with 699 observations on the following 2 variables.

- treatment:

  The treatment the patient received.

- outcome:

  Whether there patient still needs insulin (`failure`) or met a basic
  positive outcome bar (`success`).

## Source

Zeitler P, et al. 2012. A Clinical Trial to Maintain Glycemic Control in
Youth with Type 2 Diabetes. N Engl J Med.

## Details

Each of the 699 patients in the experiment were randomized to one of the
following treatments: (1) continued treatment with metformin (coded as
`met`), (2) formin combined with rosiglitazone (coded as `rosi`), or or
(3) a lifestyle-intervention program (coded as `lifestyle`).

## Examples

``` r

lapply(diabetes2, table)
#> $treatment
#> 
#> lifestyle       met      rosi 
#>       234       232       233 
#> 
#> $outcome
#> 
#> failure success 
#>     319     380 
#> 
(cont.table <- table(diabetes2))
#>            outcome
#> treatment   failure success
#>   lifestyle     109     125
#>   met           120     112
#>   rosi           90     143
(m <- chisq.test(cont.table))
#> 
#>  Pearson's Chi-squared test
#> 
#> data:  cont.table
#> X-squared = 8.1645, df = 2, p-value = 0.01687
#> 
m$expected
#>            outcome
#> treatment    failure  success
#>   lifestyle 106.7897 127.2103
#>   met       105.8770 126.1230
#>   rosi      106.3333 126.6667
```
