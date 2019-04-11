\name{teacher}
\alias{teacher}
\docType{data}
\title{
Teacher Salaries in St. Louis, Michigan
}
\description{
This data set contains teacher salaries from 2009-2010 for 71 teachers employed by the St. Louis Public School in Michigan, as well as several covariates.
}
\usage{data(teacher)}
\format{
  A data frame with 71 observations on the following 8 variables.
  \describe{
    \item{\code{id}}{Identification code for each teacher, assigned randomly.}
    \item{\code{degree}}{Highest educational degree attained: \code{BA} (bachelor's degree) or \code{MA} (master's degree).}
    \item{\code{fte}}{Full-time enrollement status: full-time \code{1} or part-time \code{0.5}.}
    \item{\code{years}}{Number of years employed by the school district.}
    \item{\code{base}}{Base annual salary, in dollars.}
    \item{\code{fica}}{Amount paid into Social Security and Medicare per year through the Federal Insurance Contribution Act (FICA), in dollars.}
    \item{\code{retirement}}{Amount paid into the retirement fund of the teacher per year, in dollars.}
    \item{\code{total}}{Total annual salary of the teacher, resulting from the sum of base salary + fica + retirement, in dollars.}
  }
}
%\details{
%}
\source{
Posted on \href{https://opendata.socrata.com/Education/St-Louis-Teachers-Salaries-2009-2010-/nvag-9887}{opendata.socrata.com} by Jeff Kowalski.

Original source: \url{http://stlouis.edzone.net}
}
\references{OpenIntro, \href{http://www.openintro.org}{openintro.org}}
\examples{
data(teacher)
boxplot(base ~ degree, teacher)

plot(base ~ years, teacher, pch = 16)
cond1 <- teacher$degree == "MA"
points(teacher$years[cond1], teacher$base[cond1],
       pch = 16, col = "orange")
}
\keyword{teacher}
\keyword{salary}
\keyword{Michigan}
\keyword{degree}
\keyword{education}
\keyword{datasets}
