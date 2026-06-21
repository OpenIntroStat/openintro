# Poker winnings during 50 sessions

Poker winnings (and losses) for 50 days by a professional poker player.

## Usage

``` r
poker
```

## Format

A data frame with 49 observations on the following variable.

- winnings:

  Poker winnings and losses, in US dollars.

## Source

Anonymity has been requested by the player.

## Examples

``` r

library(ggplot2)

ggplot(poker, aes(x = winnings)) +
  geom_histogram(binwidth = 250)
```
