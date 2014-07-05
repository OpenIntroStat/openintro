\name{run10}
\alias{run10}
\alias{run10Samp}
\alias{run10_09}
\docType{data}
\title{ Cherry Blossom 10 mile run data, 2009 }
\description{
14 variables for all 14,974 10 mile participants in the 2009 Cherry Blossom Run (\code{run10_09}) and 9 variables for all 16,924 participants in 2012.
}
\usage{data(run10)

data(run10_09)}
\format{
  The \code{run10_09} data frame summarizes 14,974 observations on the following 14 variables. The \code{run10} (2012 data) summarizes 16,924 observations on 9 variables, which are featured with an asterisk.
  \describe{
    \item{\code{place}}{ * Finishing position. Separate positions are provided for each gender. }
    \item{\code{time}}{ * The total run time. For \code{run10}, this is equivalent to \code{netTime}. }
    \item{\code{netTime}}{ The run time from the start line to the finish line. }
    \item{\code{pace}}{ * The listed pace for each runner. }
    \item{\code{age}}{ * Age. }
    \item{\code{gender}}{ * Gender. }
    \item{\code{first}}{ First name. }
    \item{\code{last}}{ Last name. }
    \item{\code{city}}{ Hometown city. }
    \item{\code{location}}{ * Hometown city. (\code{run10} data only.) }
    \item{\code{state}}{ * Hometown state. (For \code{run10}, this may also list a country.) }
    \item{\code{country}}{ Hometown country. }
    \item{\code{div}}{ Running division (age group). }
    \item{\code{divPlace}}{ * Division place, also broken up by gender. }
    \item{\code{divTot}}{ * Total number of people in the division (again, also split by gender). }
  }
}
\source{
  ~~ \href{http://www.cherryblossom.org/}{cherryblossom.org} ~~
}
\references{
  ~~ OpenIntro Statistics (\href{http://www.openintro.org/stat/textbook.php}{openintro.org}) ~~
}
\examples{
data(run10)

#===> men's times <===#
histPlot(run10$time[run10$gender == 'M'])

#===> times by gender <===#
densityPlot(run10$time, run10$gender, key=c('M','F'))
legend('topright', lty=2:1, col=c('red','black'),
       legend=c('M','F'))

#===> Examine Sample <===#
data(run10Samp)
}
\keyword{datasets}
