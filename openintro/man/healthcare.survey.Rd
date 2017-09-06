\name{healthcare.survey}
\alias{healthcare.survey}
\docType{data}
\title{Healthcare Survey with Two Different Wordings}
\description{
  How does survey wording and order of options impact responses?
}
\usage{data("healthcare.survey")}
\format{
  A data frame with 1503 observations on the following 2 variables.
  \describe{
    \item{\code{wording}}{Which phrasing came first: \code{first: pay penalty} or \code{first: receive help}.}
    \item{\code{response}}{Response classification of \code{approve}, \code{disapprove}, or \code{other}.}
  }
}
\details{
  The survey question, where the content in the brackets was switched for each respondent.
  "As you may know, by 2014 nearly all Americans will be required to have health insurance. [People who do not buy insurance will pay a penalty] while [People who cannot afford it will receive financial help from the government]. Do you approve or disapprove of this policy?"
}
\source{
  \url{http://www.people-press.org/2012/03/26/public-remains-split-on-health-care-bill-opposed-to-mandate/}
}
\examples{
data(healthcare.survey)
table(healthcare.survey)
}
\keyword{datasets}
