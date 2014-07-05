\name{ncbirths}
\alias{ncbirths}
\docType{data}
\title{
North Carolina births
}
\description{
In 2004, the state of North Carolina released to the public a large data set containing information on births recorded in this state.  This data set has been of interest to medical researchers who are studying the relation between habits and practices of expectant mothers and the birth of their children. This is a random sample of 1,000 cases from this data set.
}
\usage{data(ncbirths)}
\format{
  A data frame with 1000 observations on the following 13 variables.
  \describe{
	\item{\code{fage}}{Father's age in years. }
	\item{\code{mage}}{Mother's age in years. }
	\item{\code{mature}}{Maturity status of mother. }
	\item{\code{weeks}}{Length of pregnancy in weeks. }
	\item{\code{premie}}{Whether the birth was classified as premature (premie) or 	full-term. }
	\item{\code{visits}}{Number of hospital visits during pregnancy. }
	\item{\code{gained}}{Weight gained by mother during pregnancy in pounds. }
	\item{\code{weight}}{Weight of the baby at birth in pounds. }
	\item{\code{lowbirthweight}}{Whether baby was classified as low birthweight (\code{low}) or not (\code{not low}). }
	\item{\code{gender}}{Gender of the baby, \code{female} or \code{male}. }
	\item{\code{habit}}{Status of the mother as a \code{nonsmoker} or a 	\code{smoker}. }
	\item{\code{marital}}{Whether mother is \code{married} or \code{not married} at birth. }
	\item{\code{whitemom}}{Whether mom is \code{white} or \code{not white}. }
  }
}
\examples{
data(ncbirths)
boxPlot(ncbirths$weight, fact = ncbirths$habit)
boxPlot(ncbirths$visits, fact = ncbirths$whitemom)
boxPlot(ncbirths$gained, fact = ncbirths$mature)
}
\keyword{datasets}
