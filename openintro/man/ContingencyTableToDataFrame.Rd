\name{ContingencyTableToDataFrame}
\alias{ContingencyTableToDataFrame}
\title{Convert a Contingency Table to a Data Frame}
\description{Convert a contingency table to a data frame.}
\usage{
ContingencyTableToDataFrame(x,
                            rn = row.names(x),
                            cn = colnames(x),
                            dfn = c("row.var", "col.var"))
}
\arguments{
  \item{x}{A matrix.}
  \item{rn}{Row names of the matrix.}
  \item{cn}{Column names of the matrix.}
  \item{dfn}{Names of the row and column variables.}
}
\value{A data frame.}
\author{David Diez}
\seealso{\code{\link{WriteTable}}}
\examples{
x   <- matrix(1:4, 2)
rn  <- c("row1", "row2")
cn  <- c("col1", "col2")
dfn <- c("rows", "cols")
ContingencyTableToDataFrame(x, rn, cn, dfn)

x            <- matrix(1:4, 2)
row.names(x) <- c("r1", "r2")
colnames(x)  <- c("c1", "c2")
ContingencyTableToDataFrame(x)
}
