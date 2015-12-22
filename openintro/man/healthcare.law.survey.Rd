\name{healthcare.law.survey}
\alias{healthcare.law.survey}
\docType{data}
\title{Pew Research Center poll on health care, including question variants}
\description{For example, Pew Research Center conducted a survey with the following question: ``As you may know, by 2014 nearly all Americans will be required to have health insurance. [People who do not buy insurance will pay a penalty] while [People who cannot afford it will receive financial help from the government]. Do you approve or disapprove of this policy?'' For each randomly sampled respondent, the statements in brackets were randomized: either they were kept in the order given above, or the two statements were reversed.}
\usage{data("healthcare.law.survey")}
\format{
  A data frame with 1503 observations on the following 2 variables.
  \describe{
    \item{\code{order}}{a factor with levels \code{cannot_afford_second} \code{penalty_second}}
    \item{\code{response}}{a factor with levels \code{approve} \code{disapprove} \code{other}}
  }
}
\source{www.people-press.org/2012/03/26/public-remains-split-on-health-care-bill-opposed-to-mandate/. Sample sizes for each polling group are approximate.}
\examples{
data(healthcare.law.survey)
## maybe str(healthcare.law.survey) ; plot(healthcare.law.survey) ...
}
\keyword{datasets}
