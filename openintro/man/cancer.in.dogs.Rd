\name{cancer.in.dogs}
\alias{cancer.in.dogs}
\docType{data}
\title{Cancer in dogs}
\description{A study in 1994 examined 491 dogs that had developed cancer and 945 dogs as a control group to determine whether there is an increased risk of cancer in dogs that are exposed to the herbicide 2,4-dichlorophenoxyacetic acid (2,4-D).}
\usage{data("cancer.in.dogs")}
\format{
  A data frame with 1436 observations on the following 2 variables.
  \describe{
    \item{\code{order}}{a factor with levels \code{2,4-D} \code{no 2,4-D}}
    \item{\code{response}}{a factor with levels \code{cancer} \code{no cancer}}
  }
}
\source{Hayes HM, Tarone RE, Cantor KP, Jessen CR, McCurnin DM, and Richardson RC. 1991. Case- Control Study of Canine Malignant Lymphoma: Positive Association With Dog Owner's Use of 2, 4- Dichlorophenoxyacetic Acid Herbicides. Journal of the National Cancer Institute 83(17):1226-1231.}
\examples{
data(cancer.in.dogs)
table(cancer.in.dogs)
}
\keyword{datasets}
