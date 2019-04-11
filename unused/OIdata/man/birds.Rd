\name{birds}
\alias{birds}
\docType{data}
\title{
Aircraft-Wildlife Collisions
}
\description{
A collection of all collisions between aircraft in wildlife that were reported to the US Federal Aviation Administration between 1990 and 1997, with details on the circumstances of the collision.
}
\usage{data(birds)}
\format{
  A data frame with 19302 observations on the following 17 variables.
  \describe{
    \item{\code{opid}}{Three letter identification code for the operator (carrier) of the aircraft.}
    \item{\code{operator}}{Name of the aircraft operator.}
    \item{\code{atype}}{Make and model of aircraft.}
    \item{\code{remarks}}{Verbal remarks regarding the collision.}
    \item{\code{phase_of_flt}}{Phase of the flight during which the collision occurred: \code{Approach}, \code{Climb}, \code{Descent}, \code{En Route}, \code{Landing Roll}, \code{Parked}, \code{Take-off run}, \code{Taxi}.}
    \item{\code{ac_mass}}{Mass of the aircraft classified as 2250 kg or less (1), 2251-5700 kg (2), 5701-27000 kg (3), 27001-272000 kg (4), above 272000 kg (5).}
    \item{\code{num_engs}}{Number of engines on the aircraft.}
    \item{\code{date}}{Date of the collision (MM/DD/YYYY).}
    \item{\code{time_of_day}}{Light conditions: \code{Dawn}, \code{Day}, \code{Dusk}, \code{Night}.}
    \item{\code{state}}{Two letter abbreviation of the US state in which the collision occurred.}
    \item{\code{height}}{Feet above ground level.}
    \item{\code{speed}}{Knots (indicated air speed).}
    \item{\code{effect}}{Effect on flight: \code{Aborted Take-off}, \code{Engine Shut Down}, \code{None}, \code{Other}, \code{Precautionary Landing}.}
    \item{\code{sky}}{Type of cloud cover, if any: \code{No Cloud}, \code{Overcast}, \code{Some Cloud}.}
    \item{\code{species}}{Common name for bird or other wildlife.}
    \item{\code{birds_seen}}{Number of birds/wildlife seen by pilot: \code{1}, \code{2-10}, \code{11-100}, \code{Over 100}.}
    \item{\code{birds_struck}}{Number of birds/wildlife struck: \code{0}, \code{1}, \code{2-10}, \code{11-100}, \code{Over 100}.}
  }
}
\details{
The FAA National Wildlife Strike Database contains strike reports that are voluntarily reported to the FAA by pilots, airlines, airports and others. Current research indicates that only about 20\% of strikes are reported. Wildlife strike reporting is not uniform as some organizations have more robust voluntary reporting procedures. Because of variations in reporting, users are cautioned that the comparisons between individual airports or airlines may be misleading.
}
\source{
\url{http://opendata.socrata.com/Government/1990-1999-Reported-Aircraft-Wildlife-Bird-Strikes/inea-i3an}. 
Original date from \href{http://wildlife-mitigation.tc.faa.gov/wildlife/default.aspx}{faa.gov}.  Retrieval date: Feb 4, 2012.
}
\references{OpenIntro, \href{http://www.openintro.org}{openintro.org}}
\examples{
data(birds)
table(birds$phase_of_flt)
phase.ord <- sort(table(birds$phase_of_flt), decreasing = TRUE)
par(mar=c(6, 4, 4, 2) + 0.1)
barplot(phase.ord, las = 2)
summary(birds$height)

mosaicplot(birds$phase_of_flt ~ birds$effect, las = 2)
}
\keyword{datasets}
\keyword{bird}
\keyword{airplane}
\keyword{flight}
\keyword{wildlife}
