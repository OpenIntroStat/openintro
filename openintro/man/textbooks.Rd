\name{textbooks}
\alias{textbooks}
\docType{data}
\title{
Textbook data for UCLA Bookstore and Amazon
}
\description{
A random sample was taken of nearly 10\% of UCLA courses. The most expensive textbook for each course was identified, and its new price at the UCLA Bookstore and on Amazon.com were recorded.
}
\usage{data(textbooks)}
\format{
  A data frame with 73 observations on the following 7 variables.
  \describe{
    \item{\code{deptAbbr}}{Course department (abbreviated).}
    \item{\code{course}}{Course number.}
    \item{\code{ibsn}}{Book ISBN.}
    \item{\code{uclaNew}}{New price at the UCLA Bookstore.}
    \item{\code{amazNew}}{New price on Amazon.com.}
    \item{\code{more}}{Whether additional books were required for the course (\code{Y} means "yes, additional books were required").}
    \item{\code{diff}}{The UCLA Bookstore price minus the Amazon.com price for each book.}
  }
}
\details{
The sample represents only courses where textbooks were listed online through UCLA Bookstore's website. The most expensive textbook was selected based on the UCLA Bookstore price, which may insert bias into the data; for this reason, it may be beneficial to analyze only the data where \code{more} is \code{"N"}.
}
\source{
This data was collected by David M Diez on April 24th.
}
\references{
See Section 5.1 of the Open Intro Statistics textbook:
   \url{http://www.openintro.org/}
}
\examples{
data(textbooks)
#===> an improper analysis <===#
boxPlot(textbooks$uclaNew, xlim=c(0.5,2.5))
boxPlot(textbooks$amazNew, add=2)
axis(1, at=1:2, labels=c('UCLA Bookstore', 'Amazon'))
t.test(textbooks$uclaNew, textbooks$amazNew)

#===> a reasonable analysis <===#
#     the differences are moderately skewed
#     the sample size is sufficiently large to justify t test
histPlot(textbooks$diff)
t.test(textbooks$diff)
}
\keyword{datasets}
