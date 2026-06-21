# Findings on n-3 Fatty Acid Supplement Health Benefits

The results summarize each of the health outcomes for an experiment
where 12,933 subjects received a 1g fish oil supplement daily and 12,938
received a placebo daily. The experiment's duration was 5-years.

## Usage

``` r
fish_oil_18
```

## Format

The format is a list of 24 matrices. Each matrix is a 2x2 table, and
below are the named items in the list, which also represent the
outcomes.

- major_cardio_event:

  Major cardiovascular event. (Primary end point.)

- cardio_event_expanded:

  Cardiovascular event in expanded composite endpoint.

- myocardioal_infarction:

  Total myocardial infarction. (Heart attack.)

- stroke:

  Total stroke.

- cardio_death:

  Death from cardiovascular causes.

- PCI:

  Percutaneous coronary intervention.

- CABG:

  Coronary artery bypass graft.

- total_coronary_heart_disease:

  Total coronary heart disease.

- ischemic_stroke:

  Ischemic stroke.

- hemorrhagic_stroke:

  Hemorrhagic stroke.

- chd_death:

  Death from coronary heart disease.

- myocardial_infarction_death:

  Death from myocardial infraction.

- stroke_death:

  Death from stroke.

- invasive_cancer:

  Invasive cancer of any type. (Primary end point.)

- breast_cancer:

  Breast cancer.

- prostate_cancer:

  Prostate cancer.

- colorectal_cancer:

  Colorectal cancer.

- cancer_death:

  Death from cancer.

- death:

  Death from any cause.

- major_cardio_event_after_2y:

  Major cardiovascular event, excluding the first 2 years of follow-up.

- myocardial_infarction_after_2y:

  Total myocardial infarction, excluding the first 2 years of follow-up.

- invasive_cancer_after_2y:

  Invasive cancer of any type, excluding the first 2 years of follow-up.

- cancer_death_after_2y:

  Death from cancer, excluding the first 2 years of follow-up.

- death_after_2y:

  Death from any cause, excluding the first 2 years of follow-up.

## Source

Manson JE, et al. 2018. Marine n-3 Fatty Acids and Prevention of
Cardiovascular Disease and Cancer. NEJMoa1811403.
[doi:10.1056/NEJMoa1811403](https://doi.org/10.1056/NEJMoa1811403) .

## Examples

``` r

names(fish_oil_18)
#>  [1] "major_cardio_event"             "cardio_event_expanded"         
#>  [3] "myocardioal_infarction"         "stroke"                        
#>  [5] "cardio_death"                   "PCI"                           
#>  [7] "CABG"                           "total_coronary_heart_disease"  
#>  [9] "ischemic_stroke"                "hemorrhagic_stroke"            
#> [11] "chd_death"                      "myocardial_infarction_death"   
#> [13] "stroke_death"                   "invasive_cancer"               
#> [15] "breast_cancer"                  "prostate_cancer"               
#> [17] "colorectal_cancer"              "cancer_death"                  
#> [19] "death"                          "major_cardio_event_after_2y"   
#> [21] "myocardial_infarction_after_2y" "invasive_cancer_after_2y"      
#> [23] "cancer_death_after_2y"          "death_after_2y"                
(tab <- fish_oil_18[["major_cardio_event"]])
#>          major_cardio_event no_event
#> fish_oil                386    12547
#> placebo                 419    12519
chisq.test(tab)
#> 
#>  Pearson's Chi-squared test with Yates' continuity correction
#> 
#> data:  tab
#> X-squared = 1.3002, df = 1, p-value = 0.2542
#> 
fisher.test(tab)
#> 
#>  Fisher's Exact Test for Count Data
#> 
#> data:  tab
#> p-value = 0.2519
#> alternative hypothesis: true odds ratio is not equal to 1
#> 95 percent confidence interval:
#>  0.7965891 1.0604375
#> sample estimates:
#> odds ratio 
#>  0.9192056 
#> 

(tab <- fish_oil_18[["myocardioal_infarction"]])
#>          myocardioal_infarction no_event
#> fish_oil                    145    12788
#> placebo                     200    12738
chisq.test(tab)
#> 
#>  Pearson's Chi-squared test with Yates' continuity correction
#> 
#> data:  tab
#> X-squared = 8.5453, df = 1, p-value = 0.003464
#> 
fisher.test(tab)
#> 
#>  Fisher's Exact Test for Count Data
#> 
#> data:  tab
#> p-value = 0.003367
#> alternative hypothesis: true odds ratio is not equal to 1
#> 95 percent confidence interval:
#>  0.5782874 0.9001205
#> sample estimates:
#> odds ratio 
#>  0.7221774 
#> 
```
