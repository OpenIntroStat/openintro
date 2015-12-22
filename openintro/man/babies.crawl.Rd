\name{babies.crawl}
\alias{babies.crawl}
\docType{data}
\title{Crawling age}
\description{Crawling age of babies along with the average outdoor temperature at 6 months of age.}
\usage{data("babies.crawl")}
\format{
  A data frame with 12 observations on the following 5 variables.
  \describe{
    \item{\code{birth_month}}{a factor with levels \code{April} \code{August} \code{December} \code{February} \code{January} \code{July} \code{June} \code{March} \code{May} \code{November} \code{October} \code{September}}
    \item{\code{avg_crawling_age}}{a numeric vector}
    \item{\code{SD}}{a numeric vector}
    \item{\code{n}}{a numeric vector}
    \item{\code{temperature}}{a numeric vector}
  }
}
\source{J.B. Benson. Season of birth and onset of locomotion: Theoretical and methodological implications. In: Infant behavior and development 16.1 (1993), pp. 69-81. issn: 0163-6383.}
\examples{
data(babies.crawl)
plot(babies.crawl$temperature, babies.crawl$avg_crawling_age)
}
\keyword{datasets}
