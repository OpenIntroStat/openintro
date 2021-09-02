# load packages ----------------------------------------------------------------

library(tidyverse)
library(readxl)
library(usethis)

# load data -------------------------------------------------------------------

lizard_habitat <- read_excel(here::here("data-raw/lizard_habitat/S. occidentalis perch sunlight data for Jo Hardin.xls"),
  skip = 14
)

lizard_habitat <- lizard_habitat %>%
  mutate(
    site = as.factor(site),
    sunlight = as.factor(sunlight),
    sunlight = fct_relevel(sunlight, "sun", "partial", "shade")
  )

# Save ------------------------------------------------------------------------

usethis::use_data(lizard_habitat, overwrite = TRUE)
