\name{migraine}
\alias{migraine}
\docType{data}
\title{Migraines and acupuncture}
\description{Experiment involving acupuncture and sham acupunture (as placebo) in the treatment of migraines.}
\usage{data("migraine")}
\format{
  A data frame with 89 observations on the following 2 variables.
  \describe{
    \item{\code{group}}{a factor with levels \code{control} \code{treatment}}
    \item{\code{pain_free}}{a factor with levels \code{no} \code{yes}}
  }
}
\source{G. Allais et al. Ear acupuncture in the treatment of migraine attacks: a randomized trial on the efficacy of appropriate versus inappropriate acupoints. In: Neurological Sci. 32.1 (2011), pp. 173-175.}
\examples{
data(migraine)
## maybe str(migraine) ; plot(migraine) ...
}
\keyword{datasets}