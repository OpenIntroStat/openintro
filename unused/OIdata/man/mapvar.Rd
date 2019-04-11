\name{mapvar}
\alias{mapvar}
\title{Map a state-level numerical variable}
\description{Generate a map of a state-level numerical variable}
\usage{ mapvar(val, abbr, col = 1:3, Legend="") }
\arguments{
  \item{val}{A vector of numerical values.}
  \item{abbr}{The state abbreviations that correspond to each of the numerical values.}
  \item{col}{A numerical vector of length 3 with positive entries. The numbers correspond to weightings of red, green, and blue in the final map.}
  \item{Legend}{Legend name as a character string.}
}
\details{ Relies heavily on the \code{\link[maps]{map}} function. See the unemployment example for sample code that may help explain how the \code{mapvar} function works.}
\value{A data frame of the \code{\link[maps]{state.fips}} data set together with a standardized form of the values.}
\references{OpenIntro, \href{http://www.openintro.org}{openintro.org}}
\author{ David Diez }
\seealso{\code{\link{state}}}
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
\keyword{ map }
\keyword{ United States }
