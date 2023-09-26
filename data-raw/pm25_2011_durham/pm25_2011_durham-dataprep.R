# Load previous version of openintro package containing previous version
# of evals data frame. I took the last commit on 2023-09-25:
# remotes::install_github("https://github.com/OpenIntroStat/openintro@8cafe449728fa365c1914813aca53a85f2b3e9b2", force = TRUE)

# load packages ----------------------------------------------------------------

library(openintro)
library(tidyverse)

# pm25_2011_durham_raw ---------------------------------------------------------

pm25_2011_durham_raw <- openintro::pm25_2011_durham

pm25_2011_durham <- pm25_2011_durham_raw |>
    mutate(
        date = as.character(date),
        date = mdy(date),
    ) |>
    mutate(across(where(is.factor), as.character)) |>
    relocate(csa_code, csa_name, .after = site_longitude) |>
    mutate(aqs_parameter_desc = as.factor(aqs_parameter_desc))

# save data --------------------------------------------------------------------

usethis::use_data(pm25_2011_durham, overwrite = TRUE)
