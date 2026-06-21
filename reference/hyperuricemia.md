# Data from an observational study with potential predictors for uric acid levels.

These data are from a cross-sectional study examining the association of
hyperuricemia with dietary magnesium in 5,168 participants in China. The
study measured several other possible predictors, including body mass
index (BMI, measured in kg/m^2) and are used in the chapter on logistic
regression in Introductory Statistics for the Life and Biomedical
Sciences (ISLBS).

## Usage

``` r
hyperuricemia
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
[10.1371/journal.pone.0141079](https://openintrostat.github.io/openintro/reference/10.1371/journal.pone.0141079)
