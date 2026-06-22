# danish.ed.primary

Data from a Danish study on triage in an emergency department (ED)

## Usage

``` r
danish.ed.primary
```

## Format

A tibble with 6249 rows and 21 variables:

- `mort30`:

  numeric, 1 if patient died within 30 days of admission, 0 otherwise

- `triage`:

  factor, triage score given at arrival to ED. Values `green`, `yellow`,
  `orange`, `red`, from lowest to highest priority for treatment. The
  value `blue` normally denotes severity not warranting admission to the
  ED, but no participants coded blue are in these data.

- `age`:

  numeric, age in years, rounded to lower integer

- `sex`:

  factor, values `female`, `male`

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

  numeric, peripheral arterial oxygen saturation, as a percent

- `resp.rate`:

  numeric, respiratory rate per minute

- `heart.rate`:

  numeric, heart rate, beats/min

- `systolic.bp`:

  numeric, systolic blood pressure, in mmHg

- `glasgow.coma.scale`:

  numeric, extent of impaired consciousness in patients with acute
  medical condition or trauma, scored between 3 and 15, 3 being the
  worst and 15 the best. Score is based on 3 subscales, best eye, verbal
  and motor responses.

- `readmit.hosp`:

  factor, readmitted to hospital within 30 days, values `yes`, `no`

- `days.in.hosp`:

  numeric, number of days admitted to hospital

- `icu.time`:

  numeric, number of days in the intensive care unit. value 99999
  indicates patient not admitted to ICU

- `icu.status`:

  factor, patient admitted to ICU, values `yes`, `no`

## Source

<doi:10.5061/dryad.m2bq5>

## Details

Data from a prospective cohort study of triage scoring for an emergency
department (ED). The study examined whether the use of patient level
measurements would improve an existing triage score. These data are the
training data (called primary data in the original manuscript) used for
model building. Some variable names have been changed for readability,
but the data on 21 variables for the 6,249 participants are otherwise
unchanged.

## References

Kristensen, Michael, et al. "Routine blood tests are associated with
short term mortality and can improve emergency department triage: a
cohort study of\> 12,000 patients." Scandinavian Journal of Trauma,
Resuscitation and Emergency Medicine 25 (2017): 1-8.
<https://link.springer.com/article/10.1186/s13049-017-0458-x?report=reader>
