\name{winery.cars}
\alias{winery.cars}
\docType{data}
\title{Time Between Gondola Cars at Sterling Winery}
\description{
  These times represent times between gondolas at Sterling Winery.
  The main take-away: there are 7 cars, as evidenced by the somewhat
  regular increases in splits between every 7 cars. The reason the
  times are slightly non-constant is that the gondolas come off the
  tracks, so times will change a little between each period.
}
\usage{data("winery.cars")}
\format{
  A data frame with 52 observations on the following 2 variables.
  \describe{
    \item{\code{obs.number}}{The observation number,
      e.g. observation 3 was immediately preceded by observation 2.}
    \item{\code{time.until.next}}{Time until this gondola car
      arrived since the last car had left.}
  }
}
\details{
  Important context: there was a sufficient line that people were
  leaving the winery.

  So why is this data valuable? It indicates that the winery should
  add one more car since it has a lot of time wasted every 7th car.
  By adding another car, fewer visitors are likely to be turned away,
  resulting in increased revenue.
}
\source{
  In-person data collection by David Diez (OpenIntro) on July 4th, 2013.
}
\examples{
data(winery.cars)
winery.cars$car.number <- rep(1:7, 10)[1:nrow(winery.cars)]
col <- COL[ifelse(winery.cars$car.number == 3, 4, 1)]
plot(winery.cars[, c("obs.number", "time.until.next")],
    col = col, pch = 19)
plot(winery.cars$car.number, winery.cars$time.until.next,
    col = fadeColor(col, "88"), pch = 19)
}
\keyword{datasets}
