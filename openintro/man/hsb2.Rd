\name{hsb2}
\alias{hsb2}
\docType{data}
\title{
High School and Beyond survey
}
\description{
Two hundred observations were randomly sampled from the High School and Beyond survey, a survey conducted on high school seniors by the National Center of Education Statistics.
}
\usage{data(hsb2)}
\format{
  A data frame with 200 observations and 11 variables.
  \describe{
	\item{\code{id}}{Student ID.}
	\item{\code{gender}}{Student's gender, with levels \code{female} and \code{male}.}
	\item{\code{race}}{Student's race, with levels \code{african american}, \code{asian}, \code{hispanic}, and \code{white}.}
	\item{\code{ses}}{Socio economic status of student's family, with levels \code{low}, \code{middle}, and \code{high}.}
	\item{\code{schtyp}}{Type of school, with levels \code{public} and \code{private}.}
	\item{\code{prog}}{Type of program, with levels \code{general}, \code{academic}, and \code{vocational}.}
	\item{\code{read}}{Standardized reading score.}
	\item{\code{write}}{Standardized writing score.}
	\item{\code{math}}{Standardized math score.}	\item{\code{science}}{Standardized science score.}	\item{\code{socst}}{Standardized social studies score.} 	}
}
\source{
UCLA Academic Technology Services, \url{http://www.ats.ucla.edu/stat/data/hsb2.csv}.
}
\examples{
data(hsb2)
boxPlot(hsb2$read - hsb2$write, fact =  hsb2$gender,
        ylab = "diff. bet. reading and writing scores")
}
\keyword{datasets}
