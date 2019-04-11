\name{OIdata-package}
\alias{OIdata-package}
\alias{OIdata}
\docType{package}
\title{
Data sets and supplements (OpenIntro)
}
\description{
A collection of data sets from several sources that may be useful for teaching, practice, or other purposes. Functions have also been included to assist in the retrieval of table data from websites or in visualizing sample data.
}
\details{
\tabular{ll}{
Package: \tab OIdata\cr
Type: \tab Package\cr
Version: \tab 1.0\cr
Date: \tab 2011-11-03\cr
License: \tab GPL-2 | GPL-3\cr
LazyLoad: \tab yes\cr
}
}
\author{
Andrew P Bray and David M Diez

Maintainer: Andrew P Bray <andrew@openintro.org>
}
\references{
OpenIntro \href{http://www.openintro.org}{openintro.org}
}
\keyword{ package }
%\seealso{
%\link{\code{}}
%}
\examples{
data(military)
(tabFM <- table(military$branch, military$gender) /
          matrix(rep(table(military$branch), 2), ncol = 2))
barplot(tabFM[,1], main = "proportion female")

data(piracy)
pipa     <- piracy[piracy$chamber == "senate",]
keep     <- pipa$money_pro > 0 & pipa$money_con > 0
for_pipa <- pipa$stance[keep] == "yes"
col      <- ifelse(for_pipa, 2, 1)
pch      <- ifelse(for_pipa, 20, 1)
plot(pipa$money_pro[keep], pipa$money_con[keep],
     log="xy", col=col, pch=pch)
}
