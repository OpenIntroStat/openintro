\name{mammals}
\alias{mammals}
\docType{data}
\title{
Sleep in Mammals
}
\description{
This data set includes data for 39 species of mammals distributed over 13 orders. The data were used for analyzing the relationship between constitutional and ecological factors and sleeping in mammals. Two qualitatively different sleep variables (dreaming and non dreaming) were recorded. Constitutional variables such as life span, body weight, brain weight and gestation time were evaluated. Ecological variables such as severity of predation, safety of sleeping place and overall danger were inferred from field observations in the literature.
}
\usage{data(mammals)}
\format{
  A data frame with 62 observations on the following 11 variables.
  \describe{
    \item{\code{Species}}{Species of mammals}
    \item{\code{BodyWt}}{Total body weight of the mammal (in kg)}
    \item{\code{BrainWt}}{Brain weight of the mammal (in kg)}
    \item{\code{NonDreaming}}{Number of hours of non dreaming sleep}
    \item{\code{Dreaming}}{Number of hours of dreaming sleep}
    \item{\code{TotalSleep}}{Total number of hours of sleep}
    \item{\code{LifeSpan}}{Life span (in years)}
    \item{\code{Gestation}}{Gestation time (in days)}
    \item{\code{Predation}}{An index of how likely the mammal is to be preyed upon. 1 = least likely to be preyed upon. 5 = most likely to be preyed upon.}
    \item{\code{Exposure}}{An index of the how exposed the mammal is during sleep. 1 = least exposed (e.g., sleeps in a well-protected den). 5 = most exposed.}
    \item{\code{Danger}}{An index of how much danger the mammal faces from other animals. This index is based upon Predation and Exposure. 1 = least danger from other animals. 5 = most danger from other animals.}
  }
}
\source{
\url{http://www.statsci.org/data/general/sleep.txt}
}
\references{
T. Allison and D. Cicchetti, "Sleep in mammals: ecological and constitutional correlates," Arch. Hydrobiol, vol. 75, p. 442, 1975.
}
\examples{
data(mammals)
lmPlot(log(mammals$BodyWt), log(mammals$BrainWt))
}
\keyword{datasets}
