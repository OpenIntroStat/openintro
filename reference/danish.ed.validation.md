# Data from a Danish study on triage in an emergency department (ED)

Data from a prospective cohort study of triage scoring for an emergency
department (ED). The study examined whether the use of patient level
measurements would improve an existing triage score. These data were
used as a test set (called validation in the manuscript) to examine the
performance of the model built using the training (primary) cohort. Some
variable names have been changed for readability and for consistency
with the primary dataset, but the data on 18 variables for the 6,383
participants are otherwise unchanged. Some variables in the primary
dataset do not appear in these data.

## Usage

``` r
danish.ed.validation
```

## Format

A tibble with 6383 rows and 18 variables:

- `mort30`:

  numeric, 1 if patient died within 30 days of admission, 0 otherwise

- `triage`:

  factor, triage score given at arrival to ED. Values `blue`, `green`,
  `yellow`, `orange`, `red`, from lowest to highest priority for
  treatment. The value `blue` normally denotes severity not warranting
  admission to the ED. Participants coded `blue` are in these data but
  not in the primary data.

- `age`:

  numeric, age in years, rounded to lower integer

- `sex`:

  factor, `female`, `male`

- `albumin`:

  numeric, serum albumin, in g/L

- `creatinine`:

  numeric, serum creatinine, in umol/L

- `hemaglobin`:

  numeric, serum hemaglobin, in mmol/L

- `potassium`:

  numeric, serum potassium, in mmol/L

- `leuk.count`:

  blood leukocyte count, in 10E9/L

- `sodium`:

  numeric, serum sodium, in mmol/L

- `c.react.protein`:

  numeric, serum C-reactive protein

- `oxygen.sat`:

  numeric, peripheral arterial oxygen saturation, %

- `resp.rate`:

  numeric, respiratory rate per minute

- `heart.rate`:

  numeric, heart rate, beats/min

- `systolic.bp`:

  numeric, systolic blood pressure, in mmHg

- `readmit.hosp`:

  factor, readmitted to hospital within 30 days, with values `yes`, `no`

- `days.in.hosp`:

  numeric, number of days admitted to hospital

- `icu.status`:

  factor, patient admitted to ICU, with values `yes`, `no`

## Source

<doi:10.5061/dryad.m2bq5>

## References

Kristensen, Michael, et al. "Routine blood tests are associated with
short term mortality and can improve emergency department triage: a
cohort study of\> 12,000 patients." Scandinavian Journal of Trauma,
Resuscitation and Emergency Medicine 25 (2017): 1-8.
<https://sjtrem.biomedcentral.com/articles/10.1186/s13049-017-0458-x?report=reader>
