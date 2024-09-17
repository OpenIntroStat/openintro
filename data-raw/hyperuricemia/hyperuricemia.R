
# this file creates the dataset hyperuricemia

####################################
#
#  data available from the Dryad database
# (doi:10.5061/dryad.n5j23).
#
####################################




hyperuricemia <- readxl::read_excel(here::here("data-raw/hyperuricemia/Mg intake and HU; raw data.xlsx"))

# rename columns

colnames(hyperuricemia) <- c("sex", "age", "height", "weight", "bmi",
                             "uric.acid", "magnesium.intake")

# hyperuricemia$sex <- as.character(hyperuricemia$sex)

hyperuricemia$sex <- as.factor(hyperuricemia$sex)
levels(hyperuricemia$sex) = c("male", "female")

#
# threshhold values used in paper
# HU uric acid >= 416 μ mol/L for male and >= 360 μ mol/L for female
# hu indicator for hyperuricemia


hyperuricemia$hu = 0

a = hyperuricemia$sex == "male" &
  hyperuricemia$uric.acid >= 416

#  table(a)
hyperuricemia$hu[a] = 1

b = hyperuricemia$sex == "female" &
  hyperuricemia$uric.acid >= 360

# table(b)
hyperuricemia$hu[b] = 1
#
#table(hyperuricemia$sex, hyperuricemia$hu)
hyperuricemia$hu <- as.factor(hyperuricemia$hu)
levels(hyperuricemia$hu) <- c("no", "yes")

usethis::use_data(hyperuricemia, overwrite = TRUE)
