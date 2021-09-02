# Load packages ----------------------------------------------------------------

library(openintro)
library(usethis)

# Create colors and color palettes ---------------------------------------------
# Uses IMD colors
# TO DO: Add option to choose COL (official OpenIntro colors) as well

openintro_colors <- IMSCOL[, 1]

openintro_palettes <- list(
  main  = openintro_cols("blue", "green", "pink", "yellow", "red"),
  two   = openintro_cols("blue", "green"),
  three = openintro_cols("blue", "green", "pink"),
  four  = openintro_cols("blue", "green", "pink", "yellow"),
  five  = openintro_cols("blue", "green", "pink", "yellow", "red"),
  six   = openintro_cols("blue", "green", "pink", "yellow", "red", "gray"),
  cool  = openintro_cols("blue", "green"),
  hot   = openintro_cols("pink", "yellow", "red"),
  gray  = openintro_cols("lgray", "gray", "black")
)

use_data(openintro_colors, overwrite = TRUE)

use_data(openintro_palettes, overwrite = TRUE)
