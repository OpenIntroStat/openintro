\name{antibiotics.in.children}
\alias{antibiotics.in.children}
\alias{antibiotics_in_children}
\docType{data}
\title{
  Pre-existing conditions in 92 children
}
\description{
  Pre-existing medical conditions of 92 children involved in a study on the
  optimal duration of antibiotic use in treatment of tracheitis, which is an
  upper respiratory infection. 

}
\usage{data("antibiotics.in.children")}
\format{
  A data frame with 92 observations, each representing a child, on the following variable.
  \describe{
    \item{\code{condition}}{Pre-existing medical conditions.}
  }
}
\examples{
data(antibiotics.in.children)
(tab <- table(antibiotics.in.children))
barplot(tab)
}
\keyword{datasets}
