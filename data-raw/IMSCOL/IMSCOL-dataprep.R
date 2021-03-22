# load packages ----------------------------------------------------------------

library(tidyverse)
library(openintro)

# create adjusted color palette for IMS ----------------------------------------

# add pink

pink <- c("#D89A9E",
          "#D89A9EC0",
          "#D89A9E80",
          "#D89A9E40",
          "#D89A9E30",
          "#D89A9E20",
          "#D89A9E18",
          "#D89A9E10",
          "#D89A9E0A",
          "#D89A9E08",
          "#D89A9E06",
          "#D89A9E04",
          "#D89A9E02")

IMSCOL <- rbind(COL, pink)

# swap green

IMSCOL["green",] <- c("#114B5F",
                      "#114B5FC0",
                      "#114B5F80",
                      "#114B5F40",
                      "#114B5F30",
                      "#114B5F20",
                      "#114B5F18",
                      "#114B5F10",
                      "#114B5F0A",
                      "#114B5F08",
                      "#114B5F06",
                      "#114B5F04",
                      "#114B5F02")

# reorder

IMSCOL <- rbind(IMSCOL["blue",],
                IMSCOL["green",],
                IMSCOL["pink",],
                IMSCOL["yellow",],
                IMSCOL["red",],
                IMSCOL["black",],
                IMSCOL["gray",],
                IMSCOL["lgray",])

rownames(IMSCOL) <- c("blue", "green", "pink", "yellow", "red", "black", "gray", "lgray")

# check for color blind friendliness with https://color.adobe.com/create/color-accessibility
# check for grayscale friendliness with Sim Daltonism

# save ------------------------------------------------------------------------

usethis::use_data(IMSCOL, overwrite = TRUE)
