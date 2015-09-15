\name{london_boroughs}
\alias{london_boroughs}
\docType{data}
\title{
London Borough Boundaries
}
\description{
This dataset contains the coordinates of the boundaries of all 32 boroughs of the Greater London area.
}
\usage{data(london_boroughs)}
\format{
  A data frame with 45341 observations on the following 3 variables.
  \describe{
    \item{\code{name}}{Name of the borough.}
    \item{\code{x}}{The "easting" component of the coordinate, see details.}
    \item{\code{y}}{The "northing" component of the coordinate, see details.}
  }
}
\details{
Map data was made available through the Ordnance Survey Open Data initiative.  The data use the \href{http://www.ordnancesurvey.co.uk/oswebsite/gps/information/coordinatesystemsinfo/guidetonationalgrid/page1.html}{National Grid} coordinate system, based upon eastings (\code{x}) and northings (\code{y}) instead of longitude and latitude.

The \code{name} variable covers all 32 boroughs in Greater London: \code{Barking & Dagenham}, \code{Barnet}, \code{Bexley}, \code{Brent}, \code{Bromley}, \code{Camden}, \code{Croydon}, \code{Ealing}, \code{Enfield}, \code{Greenwich}, \code{Hackney}, \code{Hammersmith & Fulham}, \code{Haringey}, \code{Harrow}, \code{Havering}, \code{Hillingdon}, \code{Hounslow}, \code{Islington}, \code{Kensington & Chelsea}, \code{Kingston}, \code{Lambeth}, \code{Lewisham}, \code{Merton}, \code{Newham}, \code{Redbridge}, \code{Richmond}, \code{Southwark}, \code{Sutton}, \code{Tower Hamlets}, \code{Waltham Forest}, \code{Wandsworth}, \code{Westminster}
}
\source{
\url{https://www.ordnancesurvey.co.uk/opendatadownload/products.html}

Contains Ordinance Survey data, Crown copyright and database right [2012], used under the \href{http://www.ordnancesurvey.co.uk/oswebsite/docs/licences/os-opendata-licence.pdf}{Open Data License}.
}
\references{OpenIntro, \href{http://www.openintro.org}{openintro.org}}
\examples{
data(london_boroughs)
\dontrun{
# install.packages("ggplot2")
# install.packages("RColorBrewer")
library(ggplot2)
library(RColorBrewer)
data(murders)
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
\keyword{map}
\keyword{borough}
