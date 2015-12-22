\name{sinusitis}
\alias{sinusitis}
\docType{data}
\title{Sinusitis and antibiotic experiment}
\description{Researchers studying the effect of antibiotic treatment for acute sinusitis to one of two groups: treatment or control.}
\usage{data("sinusitis")}
\format{
  A data frame with 166 observations on the following 2 variables.
  \describe{
    \item{\code{group}}{a factor with levels \code{control} \code{treatment}}
    \item{\code{self.reported_improvement}}{a factor with levels \code{no} \code{yes}}
  }
}
\source{J.M. Garbutt et al. Amoxicillin for Acute Rhinosinusitis: A Randomized Controlled Trial. In: JAMA: The Journal of the American Medical Association 307.7 (2012), pp. 685-692.}
\examples{
data(sinusitis)
## maybe str(sinusitis) ; plot(sinusitis) ...
}
\keyword{datasets}