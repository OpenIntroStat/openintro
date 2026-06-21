library(devtools)

# data available at
# http://jse.amstat.org/v4n2/datasets.shoemaker.html

thermometry = read.csv(here::here("data-raw/thermometry/thermometry.csv"))

colnames(thermometry) <- c("body.temp", "gender", "heart.rate")

thermometry$gender <- factor(thermometry$gender,
                             levels = c(1, 2),
                             labels = c("female", "male"))


usethis::use_data(thermometry, overwrite = TRUE)





