######################
#
#    This file creates the dataset tb.interruption, and use the
#    full dataset posted by Lackey et. al. including the missing
#    values.  The Lackey paper reports 1294 enrolled, but 1293 are in
#    the dataset.  Suspect the case not in the data is the one where treatment
#    was stopped at option of treating physician
#
######################

# Data are available from the Dryad Digital Repository
# (datadryad.org, doi:10. 5061/dryad.fp94d).

Lima_TB_Treatment_Default_Data <-
  readxl::read_excel(here::here("data-raw/tb_interruption/Lima TB Treatment Default Data.xls"))

tb <- Lima_TB_Treatment_Default_Data

library(dplyr)


#rename columns
colnames(tb) <- c("id","age.group", "sex", "marital.status",
                        "poverty", "prison.history",
                        "education", "tobacco.use", "alcohol.use", "drug.use",
                        "rehab.history", "mdr.tb", "bmi", "chronic.disease", "hiv.test",
                        "diabetes", "trt.outcome", "time.to.interruption")

tb <- subset(tb, select = -c(time.to.interruption))

# df <- df %>% mutate_at(c('team', 'position'), as.factor)

tb <- tb %>% mutate_at(c('sex',
                         'poverty',
                         'age.group',
                         'bmi',
                         'chronic.disease',
                         'education',
                         'alcohol.use',
                         'drug.use',
                         'rehab.history',
                         'mdr.tb',
                         'diabetes',
                         'tobacco.use',
                         'prison.history',
                         'hiv.test',
                         'trt.outcome',
                         'marital.status'),
                       as.factor)


# recode some factor levels

tb$poverty = recode_factor(tb$poverty,
                              "Not in poverty" =  "No",
                              "Poverty/extreme poverty" = "Yes" )

#create binary version of trt.outcome

tb$two.mo.interrupt <-
  (tb$trt.outcome == "Default")

# check for 1233 complete cases, and for
# match to initial analysis

# tb.complete <- tb[complete.cases(tb), ]

# prop.table(table(tb.complete$two.mo.interrupt))
# addmargins(table(tb.complete$two.mo.interrupt))
# addmargins(table(tb.complete$education, tb.complete$two.mo.interrupt))

tb.interruption <- tb

usethis::use_data(tb.interruption, overwrite = TRUE)

