library(readr)


# load data --------------------------------------------------------------------

raw_data <- read_csv(here::here("data-raw/gss_wordsum_class/gss_wordsum_class.csv"))

# cleaning: none required

gss_wordsum_class <- raw_data

usethis::use_data(gss_wordsum_class, overwrite = TRUE)
