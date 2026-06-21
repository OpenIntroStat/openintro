# Creates the dataset famuss

# import data from URL
# link below no longer active, as is the case with the AF UMass
# page

# fms <- read.delim("http://www.stat-gen.org/book.e1/data/FMS_data.txt",
#                  header=T, sep="\t")

# data loaded from the famuss dataset that is no longer publicly available

# this version of famuss retains missing values.  Cases with missing values
#  should be eliminated at the analysis stage

load(here::here("data-raw/famuss/famuss.Rdata"))

fms = rename(fms,
                ndrm.ch = NDRM.CH,
                drm.ch = DRM.CH,
                sex = Gender,
                age = Age,
                race = Race,
                height = Pre.height,
                weight = Pre.weight,
                bmi = pre.BMI,
                actn3.r577x = actn3_r577x
                )

famuss = subset(fms,
                select = c(id,
                ndrm.ch,
                drm.ch,
                sex,
                age,
                race,
                height,
                weight,
                bmi,
                actn3.r577x
                )
)

# when cases with missing values are removed in a later analysis the datais
# reduced to 595 rows.  This is 1 or 2 cases different from the analysis reported
# in the Clark paper

usethis::use_data(famuss, overwrite = TRUE)

