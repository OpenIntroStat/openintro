\name{loop}
\alias{loop}
\title{
Output a message while inside a loop
}
\description{
(NOTE: \code{\link[utils]{txtProgressBar}} and \code{\link[utils]{setTxtProgressBar}} are better.) Output a message while inside a for loop to update the user on progress. This function is useful in tracking progress when the number of iterations is large or the procedures in each iteration take a long time.
}
\usage{
loop(i, n = NULL, every = 1, extra=NULL)
}
\arguments{
  \item{i}{ The index value used in the loop. }
  \item{n}{ The last entry in the loop. }
  \item{every}{ The number of loops between messages. }
  \item{extra}{ Additional information to print. }
}
\author{
David M Diez
}
\seealso{
\code{\link{myPDF}}
}
\examples{
for(i in 1:160){
	loop(i, 160, 20, paste("iter", i))
}
}
\keyword{ for loop }
\keyword{ looping }
\keyword{ index }
\keyword{ message }
