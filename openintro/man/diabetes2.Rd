\name{diabetes2}
\alias{diabetes2}
\docType{data}
\title{Type 2 Diabetes Clinical Trial for Patients 10-17 Years Old}
\description{
  Three treatments were compared to test their relative efficacy
  (effectiveness) in treating Type 2 Diabetes in patients aged 10-17
  who were being treated with metformin. The primary outcome was
  lack of glycemic control (or not); lacking glycemic control means
  the patient still needed insulin, which is not the preferred outcome
  for a patient.

  Each of the 699 patients in the experiment were randomized to one of
  the following treatments:
  \itemize{
    \item{continued treatment with metformin (coded as \code{met})}
    \item{metformin combined with rosiglitazone (coded as \code{rosi}), or}
    \item{or a lifestyle-intervention program (coded as \code{lifestyle}).}
  }
}
\usage{data("diabetes2")}
\format{
  A data frame with 699 observations on the following 2 variables.
  \describe{
    \item{\code{treatment}}{The treatment the patient received.}
    \item{\code{outcome}}{
      Whether there patient still needs insulin (\code{failure})
      or met a basic positive outcome bar (\code{success}).
    }
  }
}
\source{
  Zeitler P, et al. 2012. A Clinical Trial to Maintain Glycemic Control
  in Youth with Type 2 Diabetes. N Engl J Med.
}
\examples{
data(diabetes2)
lapply(diabetes2, table)
(cont.table <- table(diabetes2))
(m <- chisq.test(cont.table))
m$expected
}
\keyword{datasets}
