\name{toy_anova}
\alias{toy_anova}
\docType{data}
\title{
  Sample outcomes, by group
}
\description{
  These are fake data and were simulated for the purposes of an example.
}
\usage{data("toy_anova")}
\format{
  A data frame with 140 observations on the following 2 variables.
  \describe{
    \item{\code{group}}{Group.}
    \item{\code{outcome}}{Outcome value for the case.}
  }
}
\examples{
data(toy_anova)
by(toy_anova$outcome, toy_anova$group, mean)
these <- toy_anova$group \%in\% c("I", "II", "III")
anova(lm(outcome ~ group, toy_anova[these, ]))
anova(lm(outcome ~ group, toy_anova[!these, ]))
}
\keyword{datasets}
