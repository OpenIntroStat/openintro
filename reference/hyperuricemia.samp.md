# Random sample of 500 cases from the [`hyperuricemia`](https://openintrostat.github.io/openintro/reference/hyperuricemia.md) dataset.

Random sample of 500 cases from the
[`hyperuricemia`](https://openintrostat.github.io/openintro/reference/hyperuricemia.md)
dataset.

## Usage

``` r
hyperuricemia.samp
```

## Format

A tibble with 5168 rows and 8 variables:

- `sex`:

  Factor with levels `male` and `female`

- `age`:

  Numeric, measured in years

- `height`:

  Numeric, measured in cm

- `weight`:

  Numeric, Measured in kg

- `bmi`:

  Numeric, body mass index, weight divided by height in meters squared

- `uric.acid`:

  measured in micromolar/liter. Hyperuricemia (HU) was defined as uric
  acid \>= 416 micromolar/L for males and \>= 360 micromolar/L for
  females.

- `magnesium.intake`:

  Daily magnesium intake from a food frequency questionnaire, measured
  in mg/day

- `hu`:

  A factor, with levels `no`, hyperuricemia absent, `yes`, hyperuricemia
  present. Hyperuricemia (HU) was defined as uric acid \>= 416
  micromolar/L for males and \>= 360 micromolar/L for females.

## Source

<doi:10.5061/dryad.n5j23>

## References

Wang, Yi-lun, et al. "Association between dietary magnesium intake and
hyperuricemia." PLoS One 10.11 (2015): e0141079.
[doi:10.1371/journal.pone.0141079](https://doi.org/10.1371/journal.pone.0141079)
