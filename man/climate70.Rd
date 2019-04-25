\name{climate70}
\alias{climate70}
\docType{data}
\title{
  Temperature Summary Data, Geography Limited
}
\description{
  A random set of monitoring locations were taken from NOAA data
  that had both years of interest (1948 and 2018) as well as data
  for both summary metrics of interest (dx70 and dx90, which are
  described below).

  Please keep in mind that these are two annual snapshots,
  and a complete analysis would consider much more than two years
  of data and much additional information for those years.
}
\usage{data("climate70")}
\format{
  A data frame with 197 observations on the following 7 variables.
  \describe{
    \item{\code{station}}{Station ID.}
    \item{\code{latitude}}{Latitude of the station.}
    \item{\code{longitude}}{Longitude of the station.}
    \item{\code{dx70_1948}}{Number of days above 70 degrees in 1948.}
    \item{\code{dx70_2018}}{Number of days above 70 degrees in 2018.}
    \item{\code{dx90_1948}}{Number of days above 90 degrees in 1948.}
    \item{\code{dx90_2018}}{Number of days above 90 degrees in 2018.}
  }
}
\source{
  Retrieved on 2019-04-24.
  \url{https://www.ncdc.noaa.gov/cdo-web/datasets}
}
\examples{
# Data sampled are from the US, Europe, and Australia.
# This geographic limitation may be due to the particular
# years considered, since locations without both 1948 and
# 2018 were discarded for this (simple) data set.
plot(d.$longitude, d.$latitude)

par(mfrow = c(2, 2))
plot(d.$dx70_1948, d.$dx70_2018)
abline(0, 1, lty = 2)
plot(d.$dx90_1948, d.$dx90_2018)
abline(0, 1, lty = 2)
hist(d.$dx70_2018 - d.$dx70_1948)
hist(d.$dx90_2018 - d.$dx90_1948)

t.test(d.$dx70_2018 - d.$dx70_1948)
t.test(d.$dx90_2018 - d.$dx90_1948)
}
\keyword{datasets}
