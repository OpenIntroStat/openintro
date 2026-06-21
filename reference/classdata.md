# Simulated class data

This data is simulated and is meant to represent students scores from
three different lectures who were all given the same exam.

## Usage

``` r
classdata
```

## Format

A data frame with 164 observations on the following 2 variables.

- m1:

  Represents a first midterm score.

- lecture:

  Three classes: `a`, `b`, and `c`.

## References

OpenIntro Statistics, Chapter 8.

## Examples

``` r

anova(lm(m1 ~ lecture, classdata))
#> Analysis of Variance Table
#> 
#> Response: m1
#>            Df  Sum Sq Mean Sq F value  Pr(>F)  
#> lecture     2  1290.1  645.06  3.4839 0.03302 *
#> Residuals 161 29810.1  185.16                  
#> ---
#> Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
```
