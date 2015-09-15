\name{state}
\alias{state}
\docType{data}
\title{State-level data}
\description{Information about each state collected from both the official US Census website and from various other sources.}
\usage{data(state)}
\format{
  A data frame with 51 observations on the following 23 variables.
  \describe{
    \item{\code{state}}{State name.}
    \item{\code{abbr}}{State abbreviation (e.g. \code{"MN"}).}
    \item{\code{fips}}{FIPS code.}
    \item{\code{pop2010}}{Population in 2010.}
    \item{\code{pop2000}}{Population in 2000.}
    \item{\code{homeownership}}{Homeownership rate.}
    \item{\code{multiunit}}{Percent of living units that are in multi-unit structures.}
    \item{\code{income}}{Average income per capita.}
    \item{\code{med_income}}{Median household income.}
    \item{\code{poverty}}{Poverty rate.}
    \item{\code{fed_spend}}{Federal spending per capita.}
    \item{\code{land_area}}{Land area.}
    \item{\code{smoke}}{Percent of population that smokes.}
    \item{\code{murder}}{Murders per 100,000 people.}
    \item{\code{robbery}}{Robberies per 100,000.}
    \item{\code{agg_assault}}{Aggravated assaults per 100,000.}
    \item{\code{larceny}}{Larcenies per 100,000.}
    \item{\code{motor_theft}}{Vehicle theft per 100,000.}
    \item{\code{soc_sec}}{Percent of individuals collecting social security.}
    \item{\code{nuclear}}{Percent of power coming from nuclear sources.}
    \item{\code{coal}}{Percent of power coming from coal sources.}
    \item{\code{tr_deaths}}{Traffic deaths per 100,000.}
    \item{\code{tr_deaths_no_alc}}{Traffic deaths per 100,000 where alcohol was not a factor.}
    \item{\code{unempl}}{Unemployment rate (February 2012, preliminary).}
  }
}
\source{Please note that we have not validated the Infochimps data. The other data were collected directly from the corresponding websites.

US Census website (\code{pop2010}, \code{pop2000}, \code{homeownership}, \code{multiunits}, \code{income}, \code{med_income}, \code{poverty}, \code{fed_spend}, \code{land_area}), \url{http://quickfacts.census.gov/qfd/index.html}

Infochimps (\href{http://www.infochimps.com/datasets/crime-rates-by-state-2004-and-2005-and-by-type-2005-cleaned-up-v}{\code{murder}, \code{robbery}, \code{agg_assault}, \code{larcent}, \code{motor_theft}}, \href{http://www.infochimps.com/datasets/social-security-beneficiaries-annual-payments-and-average-monthl}{\code{soc_sec}}, \href{http://www.infochimps.com/datasets/electric-power-industry-net-generation-and-net-summer-capacity-b}{\code{coal}}, \href{http://www.infochimps.com/datasets/nuclear-power-plants-number-of-units-net-generation-and-net-summ}{\code{nuclear}}), \url{http://www.infochimps.com} (see linked pages and corresponding downloadable data sets for original source information)

National Highway Traffic Safety Administration (\href{http://www-fars.nhtsa.dot.gov/QueryTool/QuerySection/SelectFields.aspx}{\code{tr_deaths}, \code{tr_deaths_no_alc}}), \url{http://www-fars.nhtsa.dot.gov/}

Bureau of Labor Statistics (\code{unempl}), \url{http://www.bls.gov/web/laus/laumstrk.htm}
}
\references{ OpenIntro, \href{http://www.openintro.org}{openintro.org} }
\examples{
data(state)
mapvar(state$unempl, state$abbr, 3:1, Legend="Unemployment (\%)")

mapvar(state$soc_sec, state$abbr, 1:3, Legend="Social Security (\%)")

DC         <- state$state == "District of Columbia"
murder     <- state$murder
murder[DC] <- NA
mapvar(murder, state$abbr, c(3,2,2), Legend="Murders per 100k")

mapvar(state$nuclear, state$abbr, c(2,3,2), Legend="Nuclear Energy (\%)")
}
\keyword{datasets}
\keyword{state}
\keyword{United States}
\keyword{crime}
\keyword{energy}
