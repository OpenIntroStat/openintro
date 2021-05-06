# Load packages ----------------------------------------------------------------

library(tidyverse)
library(usethis)
library(readxl)

# Load data --------------------------------------------------------------------

epa2021_raw <- read_excel(here::here("data-raw/epa2021/2021 FE Guide for DOE-release dates before 4-10-2021-no-sales -4-9-2021UpdatePorscheforpublic.xlsx"),
           sheet = 1)

epa2021_selected <- epa2021_raw %>%
  select(
    `Model Year`:`Comb FE (Guide) - Conventional Fuel`,
    `Guzzler?`:`Trans Desc`,
    `# Gears`:`Drive Desc`,
    `Fuel Usage  - Conventional Fuel`, `Fuel Usage Desc - Conventional Fuel`,
    `Carline Class Desc`:`Car/Truck Category - Cash for Clunkers Bill.`,
    `Release Date`, `Fuel Cell Vehicle (Y or N)`
  )

names(epa2021_selected) <- names(epa2012)

# Make empty levels NAs and fix date type
epa2021 <- epa2021_selected %>%
  mutate(
    guzzler = case_when(
      guzzler == "G" ~ "Y",
      is.na(guzzler) ~ "N"
    ),
    across(where(is.factor), str_replace, "^$", NA_character_),
    across(where(is.character), as.factor),
    air_aspir_method = if_else(air_aspir_method_desc == "Naturally Aspirated", "NA", as.character(air_aspir_method)),
    air_aspir_method = as.factor(air_aspir_method)
    )

# Add to package
use_data(epa2021, overwrite = TRUE)
