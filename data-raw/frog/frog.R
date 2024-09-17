### setting up frog data
# data-JEB.xls is the original data file inside the zip archive
# doi_10_5061_dryad_6v0c1_v20140310.zip from
# https://datadryad.org/stash/dataset/doi:10.5061/dryad.6v0c1

frog.altitude = readxl::read_xls(here::here("data-raw/frog/data-JEB.xls"))

# original measurements are log_10 units

frog <- frog.altitude %>%
  rename(clutchvolume = "clutch volume") %>%
  dplyr::mutate(clutch.size = 10^clutchsize) %>%
  mutate(body.size = 10^bodysize) %>%
  mutate(clutch.volume = 10^clutchvolume) %>%
  mutate(egg.size = 10^eggsize) %>%
  select(altitude, latitude,
         clutch.size,
         body.size,
         clutch.volume,
         egg.size)

usethis::use_data(frog, overwrite = TRUE)
