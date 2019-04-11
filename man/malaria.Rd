\name{malaria}
\alias{malaria}
\docType{data}
\title{
  Malaria Vaccine Trial
}
\description{
  Volunteer patients were randomized into one of two
  experiment groups where they would receive an
  experimental vaccine or a placebo.
  They were subsequently exposed to a drug-sensitive
  strain of malaria and observed to see whether they
  came down with an infection.
}
\usage{data("malaria")}
\format{
  A data frame with 20 observations on the following 2 variables.
  \describe{
    \item{\code{treatment}}{Whether a person was
    	    given the experimental \code{vaccine} or
    	    a \code{placebo}.}
    \item{\code{outcome}}{Whether the person got
    	    an \code{infection} or \code{no infection}.}
  }
}
\details{
  In this study, volunteer patients were randomized
  into one of two experiment groups:
  14 patients received an experimental vaccine
  or 6 patients received a placebo vaccine.
  Nineteen weeks later, all 20 patients were exposed
  to a drug-sensitive malaria virus strain;
  the motivation of using a drug-sensitive strain
  of virus here is for ethical considerations,
  allowing any infections to be treated effectively.
}
\source{
  Lyke et al. 2017.
  PfSPZ vaccine induces strain-transcending T cells
  and durable protection against heterologous controlled
  human malaria infection.
  PNAS 114(10):2711-2716.
  \url{http://www.pnas.org/content/114/10/2711}
}
\examples{
data(malaria)
table(malaria)
fisher.test(table(malaria))
}
\keyword{datasets}
