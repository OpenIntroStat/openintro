# This file creates the dds.disc dataset from the source data file
# in the Taylor and Mickel paper https://doi.org/10.1080/10691898.2014.11889697
# The dataset is contained in the supplemental files (B) for the paper:
# https://www.tandfonline.com/doi/suppl/10.1080/10691898.2014.11889697?scroll=top

X_JSE13_067_rev1_data <- readr::read_csv(here::here("data-raw/dds_discr/#JSE13-067.rev1.data.csv"))
dds.discr <- X_JSE13_067_rev1_data

# renaming vars for analysis
#
dds.discr = rename(dds.discr,
                   id = ID,
                   age.cohort = "Age Cohort",
                   age = Age,
                   gender = Gender,
                   expenditures = Expenditures,
                   ethnicity = Ethnicity)


usethis::use_data(dds.discr, overwrite = TRUE)
