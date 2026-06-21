# this file writes the arenosa dataset
# It loads the .Rdata file from the Bomblies lab obtained via
# personal communication (Pierre)
#
load(here::here("data-raw/arenosa_rnaseq/arenosa_rnaseq.Rdata"))

arenosa <- arenosa.rnaseq

usethis::use_data(arenosa, overwrite = TRUE)
