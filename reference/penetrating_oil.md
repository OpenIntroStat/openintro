# What's the best way to loosen a rusty bolt?

The channel Project Farm on YouTube investigated penetrating oils and
other options for loosening rusty bolts. Eight options were evaluated,
including a control group, to determine which was most effective.

## Usage

``` r
penetrating_oil
```

## Format

A data frame with 30 observations on the following 2 variables.

- treatment:

  The different treatments tried: `none` (control), `Heat` (via blow
  torch), `Acetone/ATF`, `AeroKroil`, `Liquid Wrench`, `PB Blaster`,
  `Royal Purple`, and `WD-40`.

- torque:

  Torque required to loosen the rusty bolt, which was measured in
  foot-pounds.

## Source

<https://www.youtube.com/watch?v=xUEob2oAKVs>

## Examples

``` r

m <- lm(torque ~ treatment, data = penetrating_oil)
anova(m)
#> Analysis of Variance Table
#> 
#> Response: torque
#>           Df Sum Sq Mean Sq F value   Pr(>F)   
#> treatment  7 3603.4  514.78  4.0263 0.005569 **
#> Residuals 22 2812.8  127.85                    
#> ---
#> Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1

# There are 28 pairwise comparisons to be made.
xbar <- tapply(penetrating_oil$torque, penetrating_oil$treatment, mean)
n <- tapply(penetrating_oil$torque, penetrating_oil$treatment, length)
s <- summary(m)$sigma
df <- summary(m)$df[1]

diff <- c()
se <- c()
k <- 0
N <- length(n)
K <- N * (N - 1) / 2
for (i in 1:(N - 1)) {
  for (j in (i + 1):N) {
    k <- k + 1
    diff[k] <- xbar[i] - xbar[j]
    se[k] <- s * sqrt(1 / n[i] + 1 / n[j])
    if (2 * K * pt(-abs(diff[k] / se[k]), df) < 0.05) {
      cat("0.05 - ", names(n)[c(i, j)], "\n")
    } else if (2 * K * pt(-abs(diff[k] / se[k]), df) < 0.1) {
      cat("0.1 - ", names(n)[c(i, j)], "\n")
    } else if (2 * K * pt(-abs(diff[k] / se[k]), df) < 0.2) {
      cat("0.2 - ", names(n)[c(i, j)], "\n")
    } else if (2 * K * pt(-abs(diff[k] / se[k]), df) < 0.3) {
      cat("0.3 - ", names(n)[c(i, j)], "\n")
    }
  }
}
#> 0.3 -  AeroKroil Heat 
#> 0.3 -  AeroKroil Liquid Wrench 
#> 0.3 -  Heat none 
#> 0.3 -  Liquid Wrench none 

# Smallest p-value using Bonferroni
min(2 * K * pt(-abs(diff / se), df))
#> [1] 0.2030646


# Better pairwise comparison method.
anova(m1 <- aov(torque ~ treatment, data = penetrating_oil))
#> Analysis of Variance Table
#> 
#> Response: torque
#>           Df Sum Sq Mean Sq F value   Pr(>F)   
#> treatment  7 3603.4  514.78  4.0263 0.005569 **
#> Residuals 22 2812.8  127.85                    
#> ---
#> Signif. codes:  0 ‘***’ 0.001 ‘**’ 0.01 ‘*’ 0.05 ‘.’ 0.1 ‘ ’ 1
TukeyHSD(m1)
#>   Tukey multiple comparisons of means
#>     95% family-wise confidence level
#> 
#> Fit: aov(formula = torque ~ treatment, data = penetrating_oil)
#> 
#> $treatment
#>                               diff        lwr        upr     p adj
#> AeroKroil-Acetone/ATF       10.500 -16.194618 37.1946185 0.8842366
#> Heat-Acetone/ATF           -22.600 -55.294097 10.0940971 0.3327605
#> Liquid Wrench-Acetone/ATF  -16.775 -43.469618  9.9196185 0.4458126
#> PB Blaster-Acetone/ATF       7.975 -18.719618 34.6696185 0.9699935
#> Royal Purple-Acetone/ATF     5.200 -21.494618 31.8946185 0.9975362
#> WD-40-Acetone/ATF            7.250 -19.444618 33.9446185 0.9822024
#> none-Acetone/ATF            11.800 -14.894618 38.4946185 0.8116953
#> Heat-AeroKroil             -33.100 -65.794097 -0.4059029 0.0458145
#> Liquid Wrench-AeroKroil    -27.275 -53.969618 -0.5803815 0.0428856
#> PB Blaster-AeroKroil        -2.525 -29.219618 24.1696185 0.9999789
#> Royal Purple-AeroKroil      -5.300 -31.994618 21.3946185 0.9972260
#> WD-40-AeroKroil             -3.250 -29.944618 23.4446185 0.9998837
#> none-AeroKroil               1.300 -25.394618 27.9946185 0.9999998
#> Liquid Wrench-Heat           5.825 -26.869097 38.5190971 0.9985955
#> PB Blaster-Heat             30.575  -2.119097 63.2690971 0.0780794
#> Royal Purple-Heat           27.800  -4.894097 60.4940971 0.1354969
#> WD-40-Heat                  29.850  -2.844097 62.5440971 0.0905238
#> none-Heat                   34.400   1.705903 67.0940971 0.0344923
#> PB Blaster-Liquid Wrench    24.750  -1.944618 51.4446185 0.0823993
#> Royal Purple-Liquid Wrench  21.975  -4.719618 48.6696185 0.1600902
#> WD-40-Liquid Wrench         24.025  -2.669618 50.7196185 0.0986124
#> none-Liquid Wrench          28.575   1.880382 55.2696185 0.0302211
#> Royal Purple-PB Blaster     -2.775 -29.469618 23.9196185 0.9999599
#> WD-40-PB Blaster            -0.725 -27.419618 25.9696185 1.0000000
#> none-PB Blaster              3.825 -22.869618 30.5196185 0.9996572
#> WD-40-Royal Purple           2.050 -24.644618 28.7446185 0.9999949
#> none-Royal Purple            6.600 -20.094618 33.2946185 0.9895945
#> none-WD-40                   4.550 -22.144618 31.2446185 0.9989414
#> 
```
