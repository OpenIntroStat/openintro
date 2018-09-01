\name{env_regulation}
\alias{env_regulation}
\docType{data}
\title{
  American Adults on Regulation and Renewable Energy
}
\description{
  Pew Research conducted a poll to find whether American adults support
  regulation or believe the private market will move the American economy
  towards renewable energy.
}
\usage{data("env_regulation")}
\format{
  A data frame with 705 observations on the following variable.
  \describe{
    \item{\code{statement}}{There were three possible outcomes for each person:
    	    \code{"Regulations necessary"},
    	    \code{"Private marketplace will ensure"},
    	    and \code{"Don't know"}.}
  }
}
\details{
  The exact statements being selected were:
  \enumerate{
    \item{Government regulations are necessary to encourage businesses and consumers to rely more on renewable energy sources.}
  \item{The private marketplace will ensure that businesses and consumers rely more on renewable energy sources, even without government regulations.}
  }

  The actual sample size was 1012. However, the original data
  were not from a simple random sample; after accounting for
  the design, the equivalent sample size was about 705,
  which was what was used for the data set here to keep things
  simpler for intro stat analyses.
}
\source{
  \url{http://www.pewinternet.org/2017/05/16/public-divides-over-environmental-regulation-and-energy-policy/}
}
% options(stringsAsFactors = FALSE)
% outcomes <- c("Regulations necessary",
%     "Private marketplace will ensure",
%     "Don't know")
% num_responses <- round(705 * c(0.54, 0.38, 0.08))
% env_regulation <- data.frame(
%     statement = sample(rep(outcomes, num_responses)))
\examples{
data(env_regulation)
table(env_regulation)
}
\keyword{datasets}
