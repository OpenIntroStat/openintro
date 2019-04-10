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
# Definition
pallette <- c(
    "#569BBD", "#4C721D", "#F4DC00", "#F05133",
    "#000000", "#808080", "#D9D9D9")
fade <- c(
    "", "C0", "80", "40", "30", "20", "18",
    "10", "0A", "08", "06", "04", "02")
COL <- outer(pallette, fade, paste0)
rownames(COL) <- c(
    "blue", "green", "yellow", "red", "black",
    "gray", "lgray")
colnames(COL) <- c(
    "full", "f1", "f2", "f3", "f4", "f5", "f6", "f7",
    "f8", "f9", "f10", "f11", "f12")

# Explore The Colors
plot(1:7, 7:1, col=COL, pch=19, cex=6, xlab="", ylab="",
     xlim=c(0.5,7.5), ylim=c(-8,8), axes=FALSE)
text(1:7, 7:1+0.7, paste("COL[", 1:7, "]", sep=""), cex=0.9)
for (i in 2:13) {
  points(1:7, 7:1 - 0.7 * (i - 1),
      col = COL[, i], pch = 19, cex = 6)
}
}
\keyword{datasets}
