# Load packages ----------------------------------------------------------------

library(openintro)
library(usethis)

# Create colors and color palettes ---------------------------------------------

openintro_colors <- COL[,1]

openintro_palettes <- list(
  main  = openintro_cols("blue", "green", "yellow", "red", "gray"),
  two   = openintro_cols("blue", "green"),
  three = openintro_cols("blue", "green", "yellow"),
  four  = openintro_cols("blue", "green", "yellow", "red"),
  five  = openintro_cols("blue", "green", "yellow", "red", "gray"),
  cool  = openintro_cols("blue", "green"),
  hot   = openintro_cols("yellow", "red"),
  gray  = openintro_cols("lgray", "gray", "black")
)

use_data(openintro_colors, overwrite = TRUE)

use_data(openintro_palettes, overwrite = TRUE)
