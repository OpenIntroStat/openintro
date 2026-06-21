library(readr)
library(tidyverse)

# loading the LEAP data
#
# The data are archived on
#  https://www.itntrialshare.org
# Downloads come through
#  https://www.immport.org/shared/study/SDY660
#
# Clinical outcome data appears is contained in tab separated text file
#      ADSTART0_2015-03-03_14-20-10.txt.  More details on adverse events
#      and other patient level data are in additional files not used here
#
# Downloaded 28 jul 2024
#


LEAP <- read_delim(here::here("data-raw/LEAP/ADSTART0_2015-03-03_14-20-10.txt"),
                                           delim = "\t",
                                           escape_double = FALSE,
                                           trim_ws = TRUE)
LEAP <- LEAP %>%
  dplyr::select(-c("ImmPort Accession",
                   "Sequence Num",
                   "Visit Number",
                   "As Treated Population",
                   "Intent-to-treat (ITT) Sample",
                   "As Treated Population",
                   "Did subject meet all PP Definitions?")) %>%
  rename(participant.ID = "Participant ID",
         stratum = "Stratum (char)",
         treatment.group = "Treatment Group (Char)",
         age.months = "Age (months)",
         sex = "Sex (char)",
         primary.ethnicity = "Primary Ethnicity",
         overall.V60.outcome = "Overall V60 Outcome (OFC + Indeterm.)")


LEAP <- LEAP %>%
  mutate(stratum = if_else(stratum == "SPT-negative Stratum",
                           "SPT-Negative", stratum)) %>%
  mutate(stratum = if_else(stratum == "SPT-positive Stratum",
                           "SPT-positive", stratum)) %>%
  mutate(stratum = as.factor(stratum)) %>%
  mutate(treatment.group = as.factor(treatment.group)) %>%
  mutate(sex = as.factor(sex)) %>%
  mutate(primary.ethnicity = as.factor(primary.ethnicity)) %>%
  mutate(overall.V60.outcome = as.factor(overall.V60.outcome)) %>%
  mutate(primary.ethnicity = na_if(primary.ethnicity, "Missing")) %>%
  mutate(primary.ethnicity = droplevels(primary.ethnicity))


usethis::use_data(LEAP, overwrite = TRUE)
