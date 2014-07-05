\name{gradesTV}
\alias{gradesTV}
\docType{data}
\title{
Simulated data for analyzing the relationship between watching TV and grades
}
\description{
This is a simulated data set to be used to estimate the relationship between number of hours per week students watch TV and the grade they got in a statistics class.
}
\usage{data(gradesTV)}
\format{
  A data frame with 25 observations on the following 2 variables.
  \describe{
    \item{\code{TV}}{Number of hours per week students watch TV.}
    \item{\code{Grades}}{Grades students got in a statistics class (out of 100).}
  }
}
\details{
There are a few potential outliers in this data set. When analyzing the data one should consider how (if at all) these outliers may affect the estimates of correlation coefficient and regression parameters.
}
\source{
Simulated data
}
\examples{
data(gradesTV)
str(gradesTV)

plot(gradesTV)
makeTube(gradesTV$TV, gradesTV$Grades, 1.5, type='robust', homosk=FALSE)

lmPlot(gradesTV$TV, gradesTV$Grades, xAxis=4, xlab='time watching TV',
	yR=0.2, highlight=c(1,15,20))
}
\keyword{datasets, correlation, regression}
