\name{getCorr}
\alias{getCorr}
\title{Average correlation}
\description{
Determine the average correlation or average correlation by industry of a variance-covariance matrix.
}
\usage{
getCorr(V, industry = NULL)
}
\arguments{
  \item{V}{ Variance-covariance matrix.}
  \item{industry}{ A vector specifying the industry of the stocks in their order given in the columns (and rows) of \code{V}. This argument is optional.}
}
\value{
  If \code{industry} is not provided, then the average correlation in \code{V} in the matrix is returned but ignoring the diagonal. If \code{industry} is provided, then the output is a matrix with dimension \code{k}-by-\code{k}, where \code{k} is the number of unique values in \code{industry}.
}
\author{David Diez}
\seealso{\code{\link{stockModel}}}
\examples{
#===> the covariance matrix of stock94 <===#
data(stock94)
data(stock94Info)
V <- cov(stock94)

#===> the average correlation <===#
getCorr(V)
getCorr(V, industry=stock94Info$industry)
}
