\name{contTable}
\alias{contTable}
\title{ Generate Contingency Tables for LaTeX }
\description{ Input a data frame or a table, and the LaTeX output will be returned. Options exist for row and column proportions as well as for showing work. }
\usage{
contTable(x, prop = c("none", "row", "col"), 
          show = FALSE, digits = 3)
}
\arguments{
  \item{x}{ A data frame (with two columns) or a table. }
  \item{prop}{ Indicate whether row (\code{"r"}, \code{"R"}, \code{"row"}) or column  (\code{"c"}, \code{"C"}, \code{"col"}) proportions should be used. The default is to simply print the contingency table. }
  \item{show}{ If row or column proportions are specified, indicate whether work should be shown. }
  \item{digits}{ The number of digits after the decimal that should be shown for row or column proportions. }
}
\details{ The \code{contTable} function makes substantial use of the \code{\link[base]{cat}} function. }
\references{ OpenIntro Statistics, \href{http://www.openintro.org/stat}{openintro.org} }
\author{ David Diez }
\seealso{
\code{\link{email}}, \code{\link{cars}}, \code{\link{possum}}, \code{\link{marioKart}}
}
\examples{
data(email)
table(email[,c("spam", "sent_email")])
contTable(email[,c("spam", "sent_email")])
}
\keyword{ table }
\keyword{ LaTeX }
