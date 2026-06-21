library(WDI)
library(dplyr)
library(stringr)


# script for retrieving, formatting WDI data
#
#
# Indicator codes available using WDIsearch
# e.g. indicator_search <- WDIsearch("gni")
# or Google search on plain text name
# indicator_search <- WDIsearch("gdp")
#
#
# this call to WDI sometimes fails because of World Bank Server
# connections
#
# This download 17 July 2024

# wdi_download <-  WDI(indicator= c('NY.GNP.PCAP.PP.CD',
#                              'NY.GDP.PCAP.PP.CD',
#                              'SP.DYN.LE00.IN',
#                             'SP.ADO.TFRT',
#                              'SP.DYN.TFRT.IN',
#                              'SP.DYN.IMRT.IN',
#                              'SH.STA.BASS.ZS',
#                              'SE.ADT.LITR.ZS',
#                              'SE.XPD.TOTL.GD.ZS',
#                             'SE.PRM.CMPT.FE.ZS') ,
#                 country=c('all'), start=2022, end=2022)

# SH.STA.BASS.ZS  basic sanitation
# SH.STA.ACSN adequate sanitation does not download

# save(wdi_download, file = "wdi_download_17jul2024.Rdata")

load(here::here("data-raw/wdi_2022/wdi_download_17jul2024.Rdata"))

wdi_2022 <- wdi_download

# eliminate regions that are country groupings using iso2c
# iso2c of regions are composed of a character and a number,
# while the iso2c of countries are composed only of characters.
#
#
wdi_2022 <- wdi_2022 %>%
  dplyr::filter(!str_detect(iso2c, '\\d'))

# eliminate regions with two letter codes
#  several lines used because of problem with line
#  continuation
#
wdi_2022 <- wdi_2022 %>%
  dplyr::filter(!str_detect(iso2c,
                            'ZH|ZI|ZQ|ZT|ZJ|ZG|ZF')) %>%
  dplyr::filter(!str_detect(iso2c,
                            'XC|XE|XD|XF|XH')) %>%
  dplyr::filter(!str_detect(iso2c,
                            'XM|XN|XQ|XP')) %>%
  dplyr::filter(!str_detect(iso2c,
                            'XL|XT|XY|XU'))  %>%
  dplyr::filter(!str_detect(iso2c,
                            'XI|XJ|XL|XG|XO')) %>%
  dplyr::filter(!str_detect(iso2c,
                            'OE|EU'))

# drop year, iso codes, rename indicators
#
wdi_2022 <- wdi_2022 %>%
  select(-iso2c, -iso3c, -year) %>%
  dplyr::rename(
    gni_percap = NY.GNP.PCAP.PP.CD,
    gdp_percap = NY.GDP.PCAP.PP.CD,
    life_expect = SP.DYN.LE00.IN,
    adolesc_fert_rate = SP.ADO.TFRT,
    total_fert_rate = SP.DYN.TFRT.IN,
    infant_mortality_rate = SP.DYN.IMRT.IN,
    perc_basic_sanit = SH.STA.BASS.ZS,
    adult_lit_rate =  SE.ADT.LITR.ZS,
    govt_expend_edu = SE.XPD.TOTL.GD.ZS,
    female_prim_edu = SE.PRM.CMPT.FE.ZS
  )

# have not added the factor variable for sanitation access < 50%
# is adequate access (previous dataset) the same as basic access?
# should I retain earlier dataset

#
usethis::use_data(wdi_2022, overwrite = TRUE)



