# Swim velocities using different types of swimsuits

Data from an experiment comparing maximum swim velocities when swimmers
are wearing a wetsuit versus a regular swimsuit. Paired measurements on
the velocities on each of 12 participants. Data includes swimmer's
biological sex and indication of whether the swimmer was a triathlete or
just a swimmer. These data are also contained in the package Lock5Data

## Usage

``` r
swim
```

## Format

A dataframe with 12 rows and 6 columns

- `swimmer.number`:

  Numeric, index of a swimmer

- `swimmer.sex`:

  Factor, with levels `male`, `female`

- `swimmer.class`:

  Factor, classification of swimmer, with levels `swimmer`, `triathlete`

- `wet.suit.velocity`:

  Numeric, maximum velocity wearing a wet suit, in meters/sec

- `swim.suit.velocity`:

  Numeric, maximum velocity wearing a swim suit, in meters/sec

- `velocity.diff`:

  Numeric, `wet.suit.velocity - swim.suit.velocity`

## Source

[doi:10.1016/S1440-2440(00)80042-0](https://doi.org/10.1016/S1440-2440%2800%2980042-0)

## References

Table 3 of De Lucas, Ricardo Dantas, et al. The effects of wet suits on
physiological and biomechanical indices during swimming. Journal of
Science and Medicine in Sport 3.1 (2000): 1-8.
