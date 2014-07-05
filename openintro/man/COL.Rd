\name{COL}
\alias{COL}
\docType{data}
\title{ OpenIntro Statistics colors}
\description{ These are the core colors used for the OpenIntro Statistics textbook. The blue, green, yellow, and red colors are also gray-scaled, meaning no changes are required when printing black and white copies. }
\usage{data(COL)}
\format{
  A \code{7-by-4} matrix of 7 colors with four fading scales: blue, green, yellow, red, black, gray, and light gray.
}
\source{ Colors selected by OpenIntro's in-house graphic designer, \href{http://www.meenalpatel.com}{Meenal Patel}. }
\references{ OpenIntro Statistics, Second Edition, \href{http://www.openintro.org}{openintro.org}. }
\examples{
data(COL)
plot(1:7, 7:1, col=COL, pch=19, cex=6, xlab="", ylab="",
     xlim=c(0.5,7.5), ylim=c(-2.5,8), axes=FALSE)
text(1:7, 7:1+0.7, paste("COL[", 1:7, "]", sep=""), cex=0.9)
points(1:7, 7:1-0.7, col=COL[,2], pch=19, cex=6)
points(1:7, 7:1-1.4, col=COL[,3], pch=19, cex=6)
points(1:7, 7:1-2.1, col=COL[,4], pch=19, cex=6)
}
\keyword{datasets}
