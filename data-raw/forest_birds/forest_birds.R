library(dplyr)
library(devtools)

forest.birds = read.table(here::here("data-raw/forest_birds/loyn.csv"), header = T, sep = ",")


forest.birds = rename(forest.birds,
                      abundance = ABUND,
                      patch.area = AREA,
                      year.of.isolation = YR.ISOL,
                      distance.nearest.patch = DIST,
                      distance.larger.patch = LDIST,
                      grazing.intensity = GRAZE,
                      altitude = ALT)



forest.birds$grazing.intensity = factor(forest.birds$grazing.intensity,
                                        levels = c(1, 2, 3, 4, 5),
                                        labels = c("light", "less than average",
                                                   "average", "moderately heavy",
                                                   "heavy"))
forest.birds$years.isolation = 1983 - forest.birds$year.of.isolation

usethis::use_data(forest.birds, overwrite = TRUE)

