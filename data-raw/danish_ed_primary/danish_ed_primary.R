## code to prepare `danish.ed.primary` dataset goes here

#######################
#
# Publication date:
#  2017
# DOI for data:
#  10.5061/dryad.m2bq5
# Related identifiers:
#  DOI for paper
# 10.1186/s13049-017-0458-x
# Communities:
# Dryad
# License (for files):
#  Creative Commons Zero v1.0 Universal
#
#
#  https://zenodo.org/record/4995034#.YrmZe-zMKsA
#
##################################

load(here::here("data-raw/danish_ed_primary/PrimaryDataAkutDB_Upload2017.rda"))
danish.ed.primary <- data
rm(data)

danish.ed.primary = rename(danish.ed.primary,
        albumin = alb,
        creatinine = crea,
        hemaglobin = hb,
        potassium = k,
        leuk.count = leu,
        sodium = na,
        c.react.protein = crp,
        oxygen.sat = saturation,
        resp.rate = respirationsfrekvens,
        heart.rate = puls,
        systolic.bp = systoliskblodtryk,
        glasgow.coma.scale = gcs,
        readmit.hosp = genindl.1,
        days.in.hosp = inddage,
        icu.time = icutime,
        icu.status = icustatus)


usethis::use_data(danish.ed.primary, overwrite = TRUE)
