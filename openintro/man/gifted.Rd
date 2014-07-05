\name{gifted}
\alias{gifted}
\docType{data}
\title{
Analytical skills of young gifted children}
\description{
An investigator is interested in understanding the relationship, if any, between the analytical skills of young gifted children and the following variables: father's IQ, mother's IQ, age in month when the child first said `mummy' or `daddy', age in month when the child first counted to 10 successfully, average number of hours per week the child's mother or father reads to the child, average number of hours per week the child watched an educational program on TV during the past three months, average number of hours per week the child watched cartoons on TV during the past three months. The analytical skills are evaluated using a standard testing procedure, and the score on this test is used as the response variable.
Data were collected from schools in a large city on a set of thirty-six children who were identified as gifted children soon after they reached the age of four. 
}
\usage{data(gifted)}
\format{
  A data frame with 36 observations and 8 variables.
  \describe{
	\item{\code{score}}{Score in test of analytical skills.}
	\item{\code{fatheriq}}{Father's IQ.}
	\item{\code{motheriq}}{Mother's IQ.}
	\item{\code{speak}}{Age in months when the child first said `mummy' or `daddy'.}
	\item{\code{count}}{Age in months when the child first counted to 10 successfully.}
	\item{\code{read}}{Average number of hours per week the child's mother or father reads to the child.}
	\item{\code{edutv}}{Average number of hours per week the child watched an educational program on TV during the past three months.}
	\item{\code{cartoons}}{Average number of hours per week the child watched cartoons on TV during the past three months.} 	}
}
\source{
Graybill, F.A. & Iyer, H.K., (1994) Regression Analysis: Concepts and Applications, Duxbury, p. 511-6.
}
\examples{
data(gifted)
histPlot(gifted$count)
histPlot(gifted$fatheriq)
histPlot(gifted$motheriq)
histPlot(gifted$motheriq - gifted$fatheriq)
plot(gifted$score ~ gifted$motheriq)
lm(gifted$score ~ gifted$motheriq + gifted$fatheriq + gifted$speak +
                                    gifted$count + gifted$read + 
                                    gifted$edutv + gifted$cartoons)
}
\keyword{datasets, regression}
