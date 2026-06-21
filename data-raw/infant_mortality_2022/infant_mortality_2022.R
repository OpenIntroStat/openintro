# updated infant mortality data
# Downloaded 20 Jul 2024 from
# https://www.cdc.gov/nchs/pressroom/sosmap/infant_mortality_rates/infant_mortality.htm
# Infant mortalily listed as provisional 2022
#
#
library(usdata)
library(tidyverse)
library(readr)
library(readxl)


# infant mortality data
# excel file created from csv download
#
infant_mort_2022 <- read_excel(here::here("data-raw/infant_mortality_2022/infant_mort_2022.xls"),
                             col_names = c("year", "state_code","rate",
                                           "deaths", "url"))[2:52,]


infant_mort_2022 <- infant_mort_2022 %>%
  dplyr:: select(state_code, rate) %>%
  mutate(state_code = if_else(state_code == "District of Columbia",
                              "DC", state_code))


infant_mort_2022 <- infant_mort_2022 %>%
  mutate(state_name = abbr2state(state_code)) %>%
  dplyr::select(-state_code)


# data on physicians per 100,000 residents
#
# downloaded 20 jul 20243 from
# https://www.ncbi.nlm.nih.gov/books/NBK569310/table/ch2.tab16/

#

physicians_per_cap <- read_excel(here::here("data-raw/infant_mortality_2022/physicians_pc_state_2018.xlsx"),
                        col_names = c("state_name",
                                      "physicians_per_100000"))[5:55, 1:2]


colnames(physicians_per_cap)
colnames(infant_mort_2022)

# joining the data
infant_mortality_2022 <- inner_join(infant_mort_2022, physicians_per_cap,
                  by = 'state_name')
infant_mortality_2022 <- infant_mortality_2022 %>%
  rename(infant_mortality_rate = rate) %>%
  rename(doctors = physicians_per_100000)


usethis::use_data(infant_mortality_2022, overwrite = TRUE)
