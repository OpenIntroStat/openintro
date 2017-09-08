\name{oscars}
\alias{oscars}
\docType{data}
\title{
Oscar winners, 1929 to 2012
}
\description{
Best actor and actress Oscar winners from 1929 to 2012.
}
\usage{data(oscars)}
\format{
  A data frame with 170 observations on the following 10 variables.
  \describe{
    \item{\code{gender}}{Gender of winner, \code{female} or \code{male}.}
    \item{\code{oscar_no}}{Denotes which Oscar ceremony.}
    \item{\code{oscar_yr}}{Denotes which Oscar year.}
    \item{\code{name}}{Name of winning actor or actress.}
    \item{\code{movie}}{Name of movie actor or actress got the Oscar for.}
    \item{\code{age}}{Age at which the actor or actress won the Oscar.}
    \item{\code{birth_pl}}{State where the actor or actress was born, country if foreign.}
    \item{\code{birth_mo}}{Birth month of actor or actress.}
    \item{\code{birth_d}}{Birth day of actor or actress.}
    \item{\code{birth_y}}{Birth year of actor or actress.}
  }
}
\details{
Although there have been only 84 Oscar ceremonies until 2012, there are 85 male winners and 85 female winners because ties happened on two occasions (1933 for the best actor and 1969 for the best actress).
}
\source{
Journal of Statistical Education, http://www.amstat.org/publications/jse/datasets/oscar2009.dat.txt (no longer valid), updated through 2012 using information from Wikipedia.org.
}
\examples{
data(oscars)
boxPlot(oscars$age, oscars$gender)
barplot(oscars$birth_mo)
barplot(table(oscars$birth_pl))
}
\keyword{datasets}
