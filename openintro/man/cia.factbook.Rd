\name{cia.factbook}
\alias{cia.factbook}
\alias{cia_factbook}
\docType{data}
\title{
  CIA Factbook Details on Countries
}
\description{
  Country-level statistics from the US Central Intelligence Agency (CIA).
}
\usage{data("cia.factbook")}
\format{
  A data frame with 259 observations on the following 11 variables.
  \describe{
    \item{\code{country}}{Country name.}
    \item{\code{area}}{Land area, in square kilometers. (1 square kilometer is 0.386 square miles}
    \item{\code{birth_rate}}{Birth rate, in births per 1,000 people.}
    \item{\code{death_rate}}{Death rate, in deaths per 1,000 people.}
    \item{\code{infant_mortality_rate}}{Infant mortality, in deaths per 1,000 live births.}
    \item{\code{internet_users}}{Total number of internet users.}
    \item{\code{life_exp_at_birth}}{Live expectancy at birth, in years.}
    \item{\code{maternal_mortality_rate}}{Number of female deaths per 100,000 live births where the death is related to pregnancy or birth.}
    \item{\code{net_migration_rate}}{Net migration rate.}
    \item{\code{population}}{Total population.}
    \item{\code{population_growth_rate}}{Population growth rate.}
  }
}
\source{
  CIA Factbook, Country Comparisons, 2014.
  \url{https://www.cia.gov/library/publications/the-world-factbook/rankorder/rankorderguide.html}
}
\examples{
data(cia.factbook)
cia.factbook$internet.users.percent <-
    100 * cia.factbook$internet_users / cia.factbook$population
plot(cia.factbook$internet.users.percent, cia.factbook$life_exp_at_birth)
}
\keyword{datasets}
