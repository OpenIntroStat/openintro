\name{acs12}
\alias{acs12}
\docType{data}
\title{American Community Survey, 2012}
\description{Results from the US Census American Community Survey, 2012.}
\usage{data("acs12")}
\format{
  A data frame with 2000 observations on the following 13 variables.
  \describe{
    \item{\code{income}}{Annual income.}
    \item{\code{employment}}{Employment status.}
    \item{\code{hrs_work}}{Hours worked per week.}
    \item{\code{race}}{Race.}
    \item{\code{age}}{Age, in years.}
    \item{\code{gender}}{Gender.}
    \item{\code{citizen}}{Whether the person is a U.S. citizen.}
    \item{\code{time_to_work}}{Travel time to work, in minutes.}
    \item{\code{lang}}{Language spoken at home.}
    \item{\code{married}}{Whether the person is married.}
    \item{\code{edu}}{Education level.}
    \item{\code{disability}}{Whether the person is disabled.}
    \item{\code{birth_qrtr}}{The quarter of the year that the person was born,
        e.g. \code{Jan thru Mar}.}
  }
}
\source{\url{http://www.census.gov/acs}}
\examples{
data(acs12)
d <- subset(acs12, 30 <= age & age <= 60)
d <- subset(d, employment == "employed" & income > 0)
d <- na.omit(d[c("age", "income")])

par(mfrow = c(2, 1), mar = c(5, 5, 1, 1))
plot(d$age, d$income)
m <- lm(income ~ age, data = d)
abline(m)
summary(m)

plot(d$age, log(d$income))
ml <- lm(log(income) ~ age, data = d)
abline(ml)
summary(ml)
}
\keyword{datasets}
