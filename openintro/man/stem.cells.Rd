\name{stem.cells}
\alias{stem.cells}
\docType{data}
\title{Stem Cell Transplant Experiment}
\description{Stem cells were used as the treatment for sheep
    that had suffered a heart attack.}
\usage{data("stem.cells")}
\format{
  A data frame with 18 observations on the following 3 variables.
  \describe{
    \item{\code{trmt}}{Factor indicating the treatment group.}
    \item{\code{before}}{Heart pumping function, pre-experiment.}
    \item{\code{after}}{Heart pumping function, post-experiment.}
  }
}
\source{
  The data were estimated from a plot in Menard C, et al. 2005.
  Transplantation of cardiac-committed mouse embryonic stem
  cells to infarcted sheep myocardium: a preclinical study.
  The Lancet 366(9490):1005-1012.
}
\details{
  The animals used were sheep, and the embryonic stem cells
  were from mice. The control had no treatments. The ESC group
  had stem cells transplanted to their hearts.
}
\examples{
data(stem.cells)
change <- stem.cells$after - stem.cells$before
summary(lm(change ~ trmt, stem.cells))
}
\keyword{datasets}
