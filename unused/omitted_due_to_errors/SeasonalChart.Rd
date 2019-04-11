\name{SeasonalChart}
\alias{SeasonalChart}
%- Also NEED an '\alias' for EACH other topic documented here.
\title{
%%  ~~function to do ... ~~
}
\description{
%%  ~~ A concise (1-5 lines) description of what the function does. ~~
}
\usage{
SeasonalChart(dates, x, col.axis = "#00000044", ...)
}
%- maybe also 'usage' for other objects documented here.
\arguments{
  \item{dates}{
%%     ~~Describe \code{dates} here~~
}
  \item{x}{
%%     ~~Describe \code{x} here~~
}
  \item{col.axis}{
%%     ~~Describe \code{col.axis} here~~
}
  \item{\dots}{
%%     ~~Describe \code{\dots} here~~
}
}
\details{
%%  ~~ If necessary, more details than the description above ~~
}
\value{
%%  ~Describe the value returned
%%  If it is a LIST, use
%%  \item{comp1 }{Description of 'comp1'}
%%  \item{comp2 }{Description of 'comp2'}
%% ...
}
\references{
%% ~put references to the literature/web site here ~
}
\author{
%%  ~~who you are~~
}
\note{
%%  ~~further notes~~
}

%% ~Make other sections like Warning with \section{Warning }{....} ~

\seealso{
%% ~~objects to See Also as \code{\link{help}}, ~~~
}
\examples{
dates <- c("2010-07", "2010-08", "2010-09", "2010-10",
    "2010-11", "2010-12", "2011-01", "2011-02", "2011-03",
    "2011-04", "2011-05", "2011-06", "2011-07", "2011-08",
    "2011-09", "2011-10", "2011-11", "2011-12", "2012-01",
    "2012-02", "2012-03", "2012-04", "2012-05", "2012-06",
    "2012-07", "2012-08", "2012-09", "2012-10", "2012-11",
    "2012-12", "2013-01", "2013-02", "2013-03", "2013-04",
    "2013-05", "2013-06", "2013-07", "2013-08", "2013-09",
    "2013-10", "2013-11", "2013-12", "2014-01", "2014-02",
    "2014-03", "2014-04", "2014-05", "2014-06", "2014-07",
    "2014-08", "2014-09", "2014-10", "2014-11", "2014-12",
    "2015-01")
x <- c(2, 35, 28, 4, 11, 4, 189, 85, 19, 5, 5, 3, 8,
    84, 121, 15, 11, 20, 196, 17, 8, 18, 12, 11, 126,
    216, 112, 38, 13, 119, 225, 81, 79, 84, 59, 34,
    52, 419, 252, 66, 52, 83, 674, 521, 249, 166, 212,
    152, 223, 1151, 979, 298, 331, 465, 1246)
SeasonalChart(dates, x)

}
% Add one or more standard keywords, see file 'KEYWORDS' in the
% R documentation directory.
\keyword{ ~kwd1 }% use one of  RShowDoc("KEYWORDS")
\keyword{ ~kwd2 }% __ONLY ONE__ keyword per line
