# script for reading inf mort/physican data by state

# the infant mortality and doctors columns in the
# small spreadsheet census_states.csv are abstracted from
# tables 113 and 159 in the 2010 Statistical Abstract of the
# United States.  Digital versions of these tables are  in the
# files statabs_2010_inf_mort.xls and statabs_2010_physicians.xls
# downloaded from
# https://www.census.gov/library/publications/2009/compendia/statab/129ed/births-deaths-marriages-divorces.html
# and
#https://www.census.gov/library/publications/2009/compendia/statab/129ed/health-nutrition.html

# census_states.csv contains additional data on crime statistics
# dropped from census.gov
#
# See documentation file for additional information
#

# mortality data

inf_mort <- readxl::read_excel(here::here("data-raw/census_2010/statabs_2010_inf_mort.xls"), sheet = "Data",
                       col_names = c("state",
                                     "PO",
                                     "ansi",
                                     "rt_80",
                                     "rt_90",
                                     "rt_00",
                                     "rt_01",
                                     "rt_02",
                                     "rt_03",
                                     "rt_04",
                                     "rt_05",
                                     "rt_06"),
                       range = "A11:L61")

inf_mort <- inf_mort %>%
  select(state, rt_06) %>%
  rename(inf.mort = rt_06)

# physician data
#
physician <- readxl::read_excel(here::here("data-raw/census_2010/statabs_2010_physicians.xls"),
                        sheet = "Data",
                        range = "A12:D62",
                        col_names = c("state",
                                      "state_code",
                                      "deaths",
                                      "doctors"))
physician <- physician %>%
  select(state, doctors)

census.2010 <- inner_join(inf_mort, physician,
                         by = "state")

usethis::use_data(census.2010, overwrite = TRUE)
