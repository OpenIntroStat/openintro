\name{heartTr}
\alias{heartTr}
\docType{data}
\title{
Heart Transplant Data
}
\description{
The Stanford University Heart Transplant Study was conducted to determine whether an experimental heart transplant program increased lifespan. Each patient entering the program was designated officially a heart transplant candidate, meaning that he was gravely ill and would most likely benefit from a new heart. Then the actual heart transplant occurs between a few weeks to several months depending on the availability of a donor. Very few candidates during this waiting period show improvement and get \emph{deselected} as a heart transplant candidate, but for the purposes of this experiment those patients were kept in the data as continuing candidates.
}
\usage{data(heartTr)}
\format{
  A data frame with 103 observations on the following 8 variables.
  \describe{
    \item{\code{id}}{ID number of the patient.}
    \item{\code{acceptyear}}{Year of acceptance as a heart transplant candidate.}
    \item{\code{age}}{Age of the patient at the beginning of the study.}
    \item{\code{survived}}{Survival status with levels \code{alive} and \code{dead}.}
    \item{\code{survtime}}{Number of days patients were alive after the date they were determined to be a candidate for a heart transplant until the termination date of the study}
    \item{\code{prior}}{Whether or not the patient had prior surgery with levels \code{yes} and \code{no}.}
    \item{\code{transplant}}{Transplant status with levels \code{control} (did not receive a transplant) and \code{treatment} (received a transplant).}
    \item{\code{wait}}{Waiting Time for Transplant}
  }
}
\source{
\url{http://www.stat.ucla.edu/~jsanchez/data/stanford.txt}
}
\references{
Turnbull B, Brown B, and Hu M (1974). "Survivorship of heart transplant data." Journal of the American Statistical Association, vol. 69, pp. 74-80.
}
\examples{
data(heartTr)
str(heartTr) 
boxPlot(heartTr$survtime, heartTr$transplant,
	ylab = 'Survival Time (days)')
mosaicplot(~ transplant + survived, data = heartTr)
}
\keyword{datasets}
\keyword{heart transplant}
\keyword{categorical data}
\keyword{contingency tables}
\keyword{randomization tests}
