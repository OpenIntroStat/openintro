\name{murders}
\alias{murders}
\docType{data}
\title{
London Murders, 2006-2011
}
\description{
This dataset contains the victim name, age, and location of every murder recorded in the Greater London area by the Metropolitan Police from January 1, 2006 to September 7, 2011.
}
\usage{data(murders)}
\format{
  A data frame with 838 observations on the following 5 variables.
  \describe{
    \item{\code{forename}}{First name(s) of the victim.}
    \item{\code{age}}{Age of the victim.}
    \item{\code{date}}{Date of the murder (MM/DD/YY).}
    \item{\code{year}}{Year of the murder.}
    \item{\code{borough}}{The London borough in which the murder took place.  See the Details section for a list of all the boroughs.}
 }
}
\details{
To visualize this data set using a map, see the \code{\link{london_boroughs}} dataset, which contains the latitude and longitude of polygons that define the boundaries of the 32 boroughs of Greater London.

The \code{borough} variable covers all 32 boroughs in Greater London: \code{Barking & Dagenham}, \code{Barnet}, \code{Bexley}, \code{Brent}, \code{Bromley}, \code{Camden}, \code{Croydon}, \code{Ealing}, \code{Enfield}, \code{Greenwich}, \code{Hackney}, \code{Hammersmith & Fulham}, \code{Haringey}, \code{Harrow}, \code{Havering}, \code{Hillingdon}, \code{Hounslow}, \code{Islington}, \code{Kensington & Chelsea}, \code{Kingston}, \code{Lambeth}, \code{Lewisham}, \code{Merton}, \code{Newham}, \code{Redbridge}, \code{Richmond}, \code{Southwark}, \code{Sutton}, \code{Tower Hamlets}, \code{Waltham Forest}, \code{Wandsworth}, \code{Westminster}
}
\source{
\url{http://www.met.police.uk/foi/pdfs/disclosure_2011/september/2011080003610.pdf}
}
\references{
Inspired by \href{http://www.guardian.co.uk/news/datablog/interactive/2011/oct/05/murder-london-map}{The Guardian Datablog}.
}
\examples{
data(murders)
date1    <- as.Date(murders$date,"\%m/\%d/\%y")
date2    <- julian(date1,origin = as.Date("2006-01-02"))
date_cut <- cut(date2, seq(0, 2073, 90))
barplot(table(date_cut), xaxt = "n",
        xlab = "date from 01/2006 - 09/2011",
        ylab = "n deaths per 90 days")

\dontrun{
# install.packages("ggplot2")
# install.packages("RColorBrewer")
library(ggplot2)
library(RColorBrewer)
data(london_boroughs)
LB          <- london_boroughs
mtab        <- table(murders$borough)
LB$nmurders <- rep(mtab, rle(as.character(LB$name))$lengths)
p           <- ggplot()
p +
  geom_polygon(data=LB, aes(x=x, y=y, group = name, fill = nmurders),
               colour="white" ) +
  scale_fill_gradientn(colours = brewer.pal(7, "Blues"),
               limits=range(LB$nmurders))
}
}
\keyword{datasets}
\keyword{London}
\keyword{murder}
\keyword{crime}
\keyword{map}
