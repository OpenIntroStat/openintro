# Influence of a Good Mood on Helpfulness

This study investigated whether finding a coin influenced a person's
likelihood of mailing a sealed but addressed letter that appeared to
have been accidentally left in a conspicuous place. Several variables
were collected during the experiment, including two randomized variables
of whether there was a coin to be found and whether the letter already
had a stamp on it.

## Usage

``` r
mail_me
```

## Format

A data frame with 42 observations on the following 4 variables.

- stamped:

  a factor with levels `no` `yes`

- found_coin:

  a factor with levels `coin` `no_coin`

- gender:

  a factor with levels `female` `male`

- mailed_letter:

  a factor with levels `no` `yes`

## Source

Levin PF, Isen AM. 1975. Studies on the Effect of Feeling Good on
Helping. Sociometry 31(1), p141-147.

## Details

The precise context was in a phone booth (this study is from the
1970s!), where a person who entered a phone booth would find a dime in
the phone tray, which would be sufficient to pay for their phone call.
There was also a letter next to the phone, which sometimes had a stamp
on it.

## Examples

``` r


table(mail_me)
#> , , gender = female, mailed_letter = no
#> 
#>        found_coin
#> stamped coin no_coin
#>     no     0       3
#>     yes    0       5
#> 
#> , , gender = male, mailed_letter = no
#> 
#>        found_coin
#> stamped coin no_coin
#>     no     1       6
#>     yes    1       4
#> 
#> , , gender = female, mailed_letter = yes
#> 
#>        found_coin
#> stamped coin no_coin
#>     no     3       1
#>     yes    4       0
#> 
#> , , gender = male, mailed_letter = yes
#> 
#>        found_coin
#> stamped coin no_coin
#>     no     4       0
#>     yes    6       4
#> 
(x <- table(mail_me[, c("mailed_letter", "found_coin")]))
#>              found_coin
#> mailed_letter coin no_coin
#>           no     2      18
#>           yes   17       5
chisq.test(x)
#> 
#>  Pearson's Chi-squared test with Yates' continuity correction
#> 
#> data:  x
#> X-squared = 16.519, df = 1, p-value = 0.00004817
#> 

(x <- table(mail_me[, c("mailed_letter", "stamped")]))
#>              stamped
#> mailed_letter no yes
#>           no  10  10
#>           yes  8  14
chisq.test(x)
#> 
#>  Pearson's Chi-squared test with Yates' continuity correction
#> 
#> data:  x
#> X-squared = 0.33608, df = 1, p-value = 0.5621
#> 

m <- glm(mailed_letter ~ stamped + found_coin + gender,
  data = mail_me,
  family = binomial
)
summary(m)
#> 
#> Call:
#> glm(formula = mailed_letter ~ stamped + found_coin + gender, 
#>     family = binomial, data = mail_me)
#> 
#> Coefficients:
#>                   Estimate Std. Error z value Pr(>|z|)    
#> (Intercept)         1.5626     0.9868   1.583 0.113312    
#> stampedyes          1.0018     0.9133   1.097 0.272661    
#> found_coinno_coin  -3.5752     0.9609  -3.721 0.000199 ***
#> gendermale          0.1544     0.8781   0.176 0.860387    
#> ---
#> Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
#> 
#> (Dispersion parameter for binomial family taken to be 1)
#> 
#>     Null deviance: 58.129  on 41  degrees of freedom
#> Residual deviance: 35.538  on 38  degrees of freedom
#> AIC: 43.538
#> 
#> Number of Fisher Scoring iterations: 5
#> 
```
