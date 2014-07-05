\name{satGPA}
\alias{satGPA}
\docType{data}
\title{
SAT and GPA data
}
\description{
SAT and GPA data for 1000 students at an unnamed college.
}
\usage{data(satGPA)}
\format{
  A data frame with 1000 observations on the following 6 variables.
  \describe{
    \item{\code{sex}}{Gender of the student.}
    \item{\code{SATV}}{Verbal SAT percentile.}
    \item{\code{SATM}}{Math SAT percentile.}
    \item{\code{SATSum}}{Total of verbal and math SAT percentiles.}
    \item{\code{HSGPA}}{High school grade point average.}
    \item{\code{FYGPA}}{First year (college) grade point average.}
  }
}
\source{
Educational Testing Service originally collected the data.
}
\references{
Data retrieved from

\url{https://www.dartmouth.edu/~chance/course/Syllabi/Princeton96/Class12.html}

Data utilized in Chapter 7 of the Open Intro Statistics book: \url{http://www.openintro.org/}
}
\examples{
data(satGPA)

par(mfrow=2:1)

plot(satGPA$SATSum/2, satGPA$FYGPA)
g <- lm(satGPA$FYGPA ~ I(satGPA$SATSum/2))
summary(g)
abline(g)

plot(satGPA$SATM, satGPA$FYGPA)
g <- lm(satGPA$FYGPA ~ satGPA$SATM)
summary(g)
abline(g)
}
\keyword{datasets}
