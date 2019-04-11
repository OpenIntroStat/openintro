\name{photo_classify}
\alias{photo_classify}
\docType{data}
\title{
  Photo classifications: fashion or not
}
\description{
  This is a simulated data set for photo classifications
  based on a machine learning algorithm versus what the true
  classification is for those photos.
  While the data are not real, they resemble performance that
  would be reasonable to expect in a well-built classifier.
}
\usage{data("photo_classify")}
\format{
  A data frame with 1822 observations on the following 2 variables.
  \describe{
    \item{\code{mach_learn}}{The prediction by the machine
    	    learning system as to whether the photo is about
    	    fashion or not.}
    \item{\code{truth}}{The actual classification of the
    	    photo by a team of humans.}
  }
}
\details{
  The hypothetical ML algorithm has a precision of 90\%,
  meaning of those photos it claims are fashion, about 90\%
  of them are actually about fashion.
  The recall of the ML algorithm is about 64\%, meaning
  of the photos that are about fashion, it correctly
  predicts that they are about fashion about 64\% of the time.
}
\source{
  The data are simulated / hypothetical.
}
\examples{
data(photo_classify)
table(photo_classify)
}
\keyword{datasets}
