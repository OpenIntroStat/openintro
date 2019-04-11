\name{piracy}
\alias{piracy}
\docType{data}
\title{
Piracy and PIPA/SOPA 
}
\description{
This data set contains observations on all 100 US Senators and 434 of the 325 US Congressional Representatives related to their support of anti-piracy legislation that was introduced at the end of 2011.
}
\usage{data(piracy)}
\format{
  A data frame with 534 observations on the following 8 variables.
  \describe{
    \item{\code{name}}{Name of legislator.}
    \item{\code{party}}{Party affiliation as democrat (\code{D}), Republican (\code{R}), or Independent (\code{I}).}
    \item{\code{state}}{Two letter state abbreviation.}
    \item{\code{money_pro}}{Amount of money in dollars contributed to the legislator's campaign in 2010 by groups generally thought to be supportive of PIPA/SOPA: movie and TV studios, record labels.}
    \item{\code{money_con}}{Amount of money in dollars contributed to the legislator's campaign in 2010 by groups generally thought to be opposed to PIPA/SOPA: computer and internet companies.}
    \item{\code{years}}{Number of years of service in Congress.}
    \item{\code{stance}}{Degree of support for PIPA/SOPA with levels \code{Leaning No}, \code{No}, \code{Undecided}, \code{Unknown}, \code{Yes}}
    \item{\code{chamber}}{Whether the legislator is a member of either the \code{house} or \code{senate}.}
  }
}
\details{
The Stop Online Piracy Act (SOPA) and the Protect Intellectual Property Act (PIPA) were two bills introduced in the US House of Representatives and the US Senate, respectively, to curtail copyright infringement.  The bill was controversial because there were concerns the bill limited free speech rights.  ProPublica, the independent and non-profit news organization, compiled this data set to compare the stance of legislators towards the bills with the amount of campaign funds that they received from groups considered to be supportive of or in opposition to the legislation.

For more background on the legislation and the formulation of \code{money_pro} and \code{money_con}, read the documentation on ProPublica, linked below.
}
\source{
\url{http://projects.propublica.org/sopa/}

The list may be slightly out of date since many politician's perspectives on the legislation were in flux at the time of data collection.
}
\references{OpenIntro, \href{http://www.openintro.org}{openintro.org}}
\examples{
data(piracy)

pipa <- piracy[piracy$chamber == "senate",]
tab  <- aggregate(money_pro ~ stance, data = pipa, mean)
barplot(tab$money_pro, names.arg = tab$stance)
boxplot(money_pro ~ stance, data = pipa)
boxplot(money_con ~ stance, data = pipa)

keep     <- pipa$money_pro > 0 & pipa$money_con > 0
for_pipa <- pipa$stance[keep] == "yes"
col      <- ifelse(for_pipa, 2, 1)
pch      <- ifelse(for_pipa, 20, 1)
plot(pipa$money_pro[keep], pipa$money_con[keep],
     log="xy", col=col, pch=pch)
}
\keyword{Congress}
\keyword{SOPA}
\keyword{PIPA}
\keyword{copyright infringement}
\keyword{legislation}
\keyword{datasets}
