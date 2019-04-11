\name{russian_influence_on_us_election_2016}
\alias{russian_influence_on_us_election_2016}
\docType{data}
\title{
  Russians' Opinions on US Election Influence in 2016
}
\description{
  Survey of Russian citizens on whether they believed their
  government tried to influence the 2016 US election. The
  survey was taken in Spring 2018 by Pew Research.
}
\usage{data("russian_influence_on_us_election_2016")}
\format{
  A data frame with 506 observations on the following variable.
  \describe{
    \item{\code{influence_2016}}{
    	    Response of the Russian survey participant to the question of
    	    whether their government tried to influence the 2016 election
    	    in the United States.}
  }
}
\details{
  The actual sample size was 1000. However, the original data
  were not from a simple random sample; after accounting for
  the design, the equivalent sample size was 506, which was what
  was used for the data set here to keep things simpler for
  intro stat analyses.
}
\source{
 \url{http://www.pewglobal.org/2018/08/21/russians-say-their-government-did-not-try-to-influence-u-s-presidential-election/}
}
% outcomes <- c("Did try", "Did not try", "Don't know")
% # Design factor is 1.98
% num_responses <- round((1000 / 1.98) * c(0.15, 0.71, 0.14))
% russian_influence_on_us_election_2016 <- data.frame(
%     influence_2016 = sample(rep(outcomes, num_responses)))
\examples{
data(russian_influence_on_us_election_2016)
table(russian_influence_on_us_election_2016)
}
\keyword{datasets}
