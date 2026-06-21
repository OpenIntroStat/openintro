# Data used to model a triage scoring scale for a Danish emergency department.

The Lackey study was a prospective cohort study of adult smear-positive
tuberculosis (TB) patients enrolled between January 2010 and December
2011 with no prior TB disease. Data from the cohort was used to model
the association of several predictors with a treatment interruption
before the complete courses of therapy. The analysis of treatment
outcome in original article uses methods for binary data. A
time-to-event analysis might be more appropriate but the dataset does
not have data sufficient for that analysis.

## Usage

``` r
tb.interruption
```

## Format

A tibble with 1293 rows and 18 variables:

- `id`:

  Character vector, unique participant ID

- `age.group`:

  A factor with 4 levels: `21 and younger`; `22 to 26`; `27 to 37`;
  `38 and older`

- `bmi`:

  a factor with 3 levels: `Normal`; `Overweight/Obese`; `Underweight`.
  These categories reflect older WHO coding and do not apply to all
  populations.

- `chronic.disease`:

  a factor with two levels: `No`, no other chronic disease; `Yes`, other
  chronic diseases present in the participant

- `hiv.test`:

  Outcome of HIV test, a factor with 3 levels: `Negative`; `Positive`;
  `Test not Done`

- `marital.status`:

  a factor with 4 levels: `Divorced/separated`; `Married/cohabitating`;
  `Single`; `Widowed`

- `poverty`:

  socioeconomic status, a factor with two levels: `No`, not living in
  extreme poverty; `Yes`, living in extreme poverty

- `prison.history`:

  a factor with 2 levels: `No`, no history of having been incarcerated;
  `Yes`, participant has been incarcerated

- `education`:

  a factor with 2 levels: `No`, participant does not have at least a
  secondary school education; `Yes`, participant does have a secondary
  school education

- `tobacco.use`:

  a factor with 3 levels: `Currently smokes`; `Never smoked`;
  `Used to Smoke`

- `alcohol.use`:

  a factor with 2 levels: `No`, participant does not use alcohol at
  least weekly; `Yes`, participant does use alcohol at least weekly

- `drug.use`:

  a factor with 2 levels: `No`, history of illicit drug use; `Yes`, a
  history of illicit drug use

- `rehab.history`:

  a factor with 2 levels: `No`, no history of residence in a
  rehabilitation facility; `Yes`, prior residence in a rehabilitation
  facility

- `mdr.tb`:

  a factor with two levels: `No`, participant has not been treated for
  multi-drug resistant TB; `Yes`, participant has been treated for MDR
  TB

- `diabetes`:

  a factor with 2 levels: `No`, participant does not have type 2
  diabetes; `Yes`, participant does have diabetes

- `trt.outcome`:

  a factor with 4 levels denoting treatment outcome: `Cured`; `Default`
  (treatment was interrupted before 2 months); `Died`;
  `Still in treatment`; `Transferred out`

## Source

doi:10.5061/dryad.fp94d

## References

Lackey, Brian, et al. "Patient characteristics associated with
tuberculosis treatment default: a cohort study in a high-incidence area
of Lima, Peru." PLoS One 10.6 (2015): e0128541.
doi:10.1371/journal.pone.0128541
