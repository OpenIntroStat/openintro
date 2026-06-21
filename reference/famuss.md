# A dataset to examine the relationship between muscle strength and the single nucleotide polymorphism (SNP) actn3.r577x.

This dataset is a subset of the larger data set from the Functional SNPs
Associated with Muscle Size and Strength (FAMuSS) by Thompson et.al. It
contains demographic, response and coding for the SNP for the study
participants. Unlike the data in the previous version of the `oibiostat`
data package, this dataset retains the missing values. The data are also
discussed in the Foulkes text. Strength was measured in both dominant
and non-dominant arms before and after resistance training. The
particular gene of interest was ACTN3, the "sports gene."

## Usage

``` r
famuss
```

## Format

A tibble with 1397 rows and 10 variables

- `ndrm.ch`:

  A numeric vector, the percent change in strength in a non-dominant
  arm, from before training and after.

- `drm.ch`:

  A numeric vector, percent change in strength in dominant arm.

- `sex`:

  A factor with levels `Female` and `Male`

- `age`:

  A numeric vector, age in years.

- `race`:

  A factor with levels `African Am` `Asian` `Caucasian` `Hispanic`
  `Other`

- `height`:

  A numeric vector, height in inches.

- `weight`:

  A numeric vector, weight in pounds.

- `actn3.r577x`:

  A factor with levels `CC` `CT` `TT`, that shows the genotype at
  residue rs540874 (location r577x) within the ACTN3 SNP.

- `bmi`:

  A numeric vector, body mass index

## Source

Personal communication from A. Foulkes

## References

Thompson PMoyna NSeip R et al. Medicine and Science in Sports and
Exercise, (2004), 1132-1139, 36(7). Clarkson P, et al., Journal of
Applied Physiology 99: 154-163, 2005.Pescatello L, et al. Highlights
from the functional single nucleotide polymorphisms associated with
human muscle size and strength or FAMuSS study, BioMed Research
International 2013. Foulkes, Andrea S. Applied Statistical Genetics
using R for Population Association Studies. Springer, 2009).
