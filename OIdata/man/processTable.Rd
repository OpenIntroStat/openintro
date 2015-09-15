\name{processTable}
\alias{processTable}
\title{ Process selected columns of a table into numbers}
\description{ Given a table where some columns represent numeric values but are cluttered with info like dollar signs, percent signs, among other symbols, this function cleans up those columns and converts the entire table into a data frame.}
\usage{ processTable(Table, num = NULL, Names = NULL) }
\arguments{
  \item{Table}{ A table of character entries, usually an item from the list of tables returned by \code{\link{getTables}}. }
  \item{num}{ Column numbers for the numerical columns. }
  \item{Names}{ Column names to add to the final data frame. }
}
\value{ A data frame. }
\references{ OpenIntro (\url{http://www.openintro.org/}) }
\author{ David M Diez }
\seealso{ \code{\link{getTables}} }
\examples{
\dontrun{
URL     <- "http://en.wikipedia.org/wiki/Poverty_in_the_United_States"
Tables  <- getTables(URL)
thisOne <- which(sapply(Tables, "[", 1, 1) == "Persons in Family Unit")
if(length(thisOne) > 0){
  temp <- Tables[[thisOne[1]]]
  processTable(temp[-c(1),], 1:4)
}
# warning may be produced for one entry
#  "each additional person adds"
}
}
\keyword{ data frame }
\keyword{ data processing }
\keyword{ regular expressions }
\keyword{ clean data }
