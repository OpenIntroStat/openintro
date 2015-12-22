\name{elmhurst}
\alias{elmhurst}
\docType{data}
\title{Elmhurst College gift aid}
\description{
  A random sample of 50 students gift aid for students
  at Elmhurst College.
}
\usage{data("elmhurst")}
\format{
  A data frame with 50 observations on the following 3 variables.
  \describe{
    \item{\code{family_income}}{Family income of the student.}
    \item{\code{gift_aid}}{Gift aid, in $1000s.}
    \item{\code{price_paid}}{
      Price paid by the student (tuition - gift aid).
    }
  }
}
\source{
  These data were sampled from a table of data for
  all freshman from the 2011 class at Elmhurst College
  that accompanied an article titled What Students
  Really Pay to Go to College published online by
  The Chronicle of Higher Education:
  \url{http://chronicle.com/article/What-Students-Really-Pay-to-Go/131435}.
}
\examples{
data(elmhurst)
plot(elmhurst$family_income, elmhurst$gift_aid)
m <- lm(gift_aid ~ family_income, data = elmhurst)
abline(m)
summary(m)
}
\keyword{datasets}
