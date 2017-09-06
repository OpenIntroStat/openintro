\name{ReadDatSas}
\alias{ReadDatSas}
\title{Read in a .dat and .sas file}
\description{
  Hacky function that grabs a .dat file (CSV format) along with
  a .sas file of the same name, then processes both. This function
  has undergone very minimal testing, and it is likely to change
  in the future and may not work retroactively or reliably.
}
\usage{
ReadDatSas(dat, ...)
}
\arguments{
  \item{dat}{
    Path to a csv file. It is assumed that there is another file
    by the same name in the same directory that has a \code{.sas}
    extension and follows a prescribed format.
  }
  \item{\dots}{Additional arguments are not currently used.}
}
\value{
  A list with two elements:
    \item{data}{}
    \item{fields}{}
}
\author{David Diez}
\seealso{
  %% \code{\link{help}}
}
\examples{

}
