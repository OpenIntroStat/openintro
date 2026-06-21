# Length of songs on an iPod

A simulated dataset on lengths of songs on an iPod.

## Usage

``` r
ipod
```

## Format

A data frame with 3000 observations on the following variable.

- song_length:

  Length of song (in minutes).

## Source

Simulated data.

## Examples

``` r

library(ggplot2)

ggplot(ipod, aes(x = song_length)) +
  geom_histogram(binwidth = 0.5)
```
