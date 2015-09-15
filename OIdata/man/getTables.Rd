\name{getTables}
\alias{getTables}
\alias{rowScrape}
\alias{stripTags}
\alias{scrapeTable}
\alias{print.htmlTables}
\title{
Get the tables from a web page
}
\description{
Retrieve each of the tables in a web page. Tables that have tables nested within them will be ignored.
}
\usage{
getTables(URL)
}
\arguments{
  \item{URL}{A character string of a URL, usually beginning with \code{http://}}
}
\value{
A list, where each item is a table in the webpage.
}
\author{ David Diez, Andrew Bray }
\seealso{
\code{\link{processTable}}, \code{\link[RCurl]{getURL}}
}
\examples{
\dontrun{
URL     <- "http://en.wikipedia.org/wiki/Poverty_in_the_United_States"
Tables  <- getTables(URL)
thisOne <- which(sapply(Tables, "[", 1, 1) == "Persons in Family Unit")
if(length(thisOne) > 0){
  Tables[[thisOne[1]]]
}
}
}
\keyword{ web }
\keyword{ scrape }
