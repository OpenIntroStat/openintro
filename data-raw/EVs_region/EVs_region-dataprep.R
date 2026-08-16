# load packages ----------------------------------------------------------------
library(tidyverse)
library(usethis)

# load data --------------------------------------------------------------------

EVs_region <- data.frame(
  region = c(rep("Urban", 1576),
                 rep("Suburban", 2797),
                 rep("Rural", 712)),
  consideration = c(rep("Not too or not at all likely", 748), rep("Very or somewhat likely", 621), rep("Don't expect to buy a vehicle", 207),
               rep("Not too or not at all likely", 1466), rep("Didn't take action", 978), rep("Don't expect to buy a vehicle", 353),
               rep("Not too or not at all likely", 460), rep("Did't take action", 130), rep("Don't expect to buy a vehicle", 122))
)

# Save -------------------------------------------------------------------------

use_data(EVs_region, overwrite = TRUE)
