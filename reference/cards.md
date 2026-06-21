# Deck of cards

All the cards in a standard deck.

## Usage

``` r
cards
```

## Format

A data frame with 52 observations on the following 4 variables.

- value:

  a factor with levels `10` `2` `3` `4` `5` `6` `7` `8` `9` `A` `J` `K`
  `Q`

- color:

  a factor with levels `black` `red`

- suit:

  a factor with levels `Club` `Diamond` `Heart` `Spade`

- face:

  a logical vector

## Examples

``` r

table(cards$value)
#> 
#> 10  2  3  4  5  6  7  8  9  A  J  K  Q 
#>  4  4  4  4  4  4  4  4  4  4  4  4  4 
table(cards$color)
#> 
#> black   red 
#>    26    26 
table(cards$suit)
#> 
#>    Club Diamond   Heart   Spade 
#>      13      13      13      13 
table(cards$face)
#> 
#> FALSE  TRUE 
#>    36    16 
table(cards$suit, cards$face)
#>          
#>           FALSE TRUE
#>   Club        9    4
#>   Diamond     9    4
#>   Heart       9    4
#>   Spade       9    4
```
