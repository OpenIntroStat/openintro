\name{helium}
\alias{helium}
\docType{data}
\title{
Helium football
}
\description{
At the 1976 Pro Bowl, Ray Guy, a punter for the Oakland Raiders, punted a ball that hung mid-air long enough for officials to question whether the pigskin was filled with helium. The ball was found to be filled with air, but since then many have tossed around the idea that a helium-filled football would outdistance an air-filled one. Students at Ohio State University conducted an experiment to test this myth. They used two identical footballs, one air filled with air and one filled with helium. Each football was kicked 39 times and the two footballs were alternated with each kick.
}
\usage{data(helium)}
\format{
  A data frame with 39 observations on the following 3 variables.
  \describe{
    \item{\code{trial}}{Trial number.}
    \item{\code{air}}{Distance in years for air-filled football.}
    \item{\code{helium}}{Distance in years for helium-filled football.}
  }
}
\details{
Lafferty, M. B. (1993), "OSU scientists get a kick out of sports controversy, "The Columbus Dispatch (November, 21, 1993), B7.
}
\source{
Data and Story Library, \url{http://lib.stat.cmu.edu/DASL/Datafiles/Heliumfootball.html}.
}
\examples{
data(helium)
par(mfrow = c(1,2))
boxPlot(helium$air, xlab = "air")
boxPlot(helium$helium, xlab = "helium")
}
\keyword{datasets}
