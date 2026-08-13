# load packages ----------------------------------------------------------------
library(tidyverse)
library(usethis)

# load data --------------------------------------------------------------------

generation_climate_action <- data.frame(
  generation = c(rep("Gen Z", 912),
                 rep("Millennial", 3160),
                 rep("Gen X", 3518),
                 rep("Boomer & older", 6074)),
  response = c(rep("Took action", 292), rep("Didn't take action", 620),
               rep("Took action", 885), rep("Didn't take action", 2275),
               rep("Took action", 809), rep("Didn't take action", 2709),
               rep("Took action", 1276), rep("Did't take action", 4798))
)

# Save -------------------------------------------------------------------------

use_data(generation_climate_action, overwrite = TRUE)
