# Starbucks nutrition

Nutrition facts for several Starbucks food items

## Usage

``` r
starbucks
```

## Format

A data frame with 77 observations on the following 7 variables.

- item:

  Food item.

- calories:

  Calories.

- fat:

  a numeric vector

- carb:

  a numeric vector

- fiber:

  a numeric vector

- protein:

  a numeric vector

- type:

  a factor with levels `bakery`, `bistro box`, `hot breakfast`,
  `parfait`, `petite`, `salad`, and `sandwich`

## Source

<https://www.starbucks.com/menu>, retrieved 2011-03-10.

## Examples

``` r

starbucks
#> # A tibble: 77 × 7
#>    item                          calories   fat  carb fiber protein type  
#>    <chr>                            <int> <dbl> <int> <int>   <int> <fct> 
#>  1 "8-Grain Roll"                     350     8    67     5      10 bakery
#>  2 "Apple Bran Muffin"                350     9    64     7       6 bakery
#>  3 "Apple Fritter"                    420    20    59     0       5 bakery
#>  4 "Banana Nut Loaf"                  490    19    75     4       7 bakery
#>  5 "Birthday Cake Mini Doughnut"      130     6    17     0       0 bakery
#>  6 "Blueberry Oat Bar"                370    14    47     5       6 bakery
#>  7 "Blueberry Scone"                  460    22    61     2       7 bakery
#>  8 "Bountiful Blueberry Muffin"       370    14    55     0       6 bakery
#>  9 "Butter Croissant "                310    18    32     0       5 bakery
#> 10 "Cheese Danish"                    420    25    39     0       7 bakery
#> # ℹ 67 more rows
```
