\name{run17}
\alias{run17}
\docType{data}
\title{Cherry Blossom Run data, 2017}
\description{
  Details for all 19,961 runners in the 2017 Cherry Blossom Run,
  which is an annual road race that takes place in Washington, DC.
  Most runners participate in a 10-mile run while a smaller
  fraction take part in a 5k run or walk.
}
\usage{data("run17")}
\format{
  A data frame with 19961 observations on the following 9 variables.
  \describe{
    \item{\code{bib}}{Number on the runner's bib.}
    \item{\code{name}}{
        Name of the runner, with only the initial of their last name.
      }
    \item{\code{sex}}{Gender of the runner.}
    \item{\code{age}}{Age of the runner.}
    \item{\code{city}}{Home city of the runner.}
    \item{\code{net_sec}}{
      Time to complete the race, after accounting
      for the staggered starting time, in seconds.
    }
    \item{\code{clock_sec}}{
      Time to complete the race, ignoring the
      staggered starting time, in seconds.
    }
    \item{\code{pace_sec}}{
      Average time per mile, in seconds.
    }
    \item{\code{event}}{
      The event the racer participated in,
      either the \code{"10 Mile"} race or
      the \code{"5K"}.
    }
  }
}
\details{
  There was a time limit where all 10 Mile racers had
  to finish by. Can you figure out what that time is?
}
\source{
  \url{http://www.cherryblossom.org}
}
\examples{
data(run17)
histPlot(subset(run17, event == "10 Mile")$pace,
    hollow = TRUE, probability = TRUE,
    xlim = c(200, 2000),
    border = COL[1], lwd = 2)
histPlot(subset(run17, event == "5K")$pace,
    hollow = TRUE, add = TRUE, probability = TRUE,
    border = COL[2], lty = 1, lwd = 2)
}
\keyword{datasets}
