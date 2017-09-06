\name{treeDiag}
\alias{treeDiag}
\title{
Construct tree diagrams
}
\description{
Construct beautiful tree diagrams
}
\usage{
treeDiag(main, p1, p2, out1 = c("Yes", "No"), out2 = c("Yes", "No"),
   textwd = 0.15, solwd = 0.2, SBS = c(TRUE, TRUE), showSol = TRUE,
   solSub = NULL, digits = 4, textadj = 0.015, cex.main = 1.3,
   col.main = "#999999", showWork = FALSE)
}
\arguments{
  \item{main}{Character vector with two variable names, descriptions, or questions}
  \item{p1}{Vector of probabilities for the primary branches}
  \item{p2}{List for the secondary branches, where each list item should be a numerical vector of probabilities corresponding to the primary branches of \code{p1}}
  \item{out1}{Character vector of the outcomes corresponding to the primary branches}
  \item{out2}{Character vector of the outcomes corresponding to the secondary branches}
  \item{textwd}{The width provided for text with a default of \code{0.15}}
  \item{solwd}{The with provided for the solution with a default of \code{0.2}}
  \item{SBS}{A boolean vector indicating whether to place text and probability side-by-side for the primary and secondary branches}
  \item{showSol}{Boolean indicating whether to show the solution in the tree diagram}
  \item{solSub}{An optional list of vectors corresponding to \code{p2} to list alternative text or solutions}
  \item{digits}{The number of digits to show in the solution}
  \item{textadj}{Vertical adjustment of text}
  \item{cex.main}{Size of \code{main} in the plot}
  \item{col.main}{Color of \code{main} in the plot}
  \item{showWork}{Whether work should be shown for the solutions}
}
\value{
  No value is given.
%   A sample plot is given below:
%
%   \figure{treeDiag01.png}{Tree Diagram Example Figure}
}
\references{
OpenIntro Statistics, Chapter 2.
}
\author{
David M Diez, Christopher D Barr
}
\seealso{
\code{\link{histPlot}}
}
\examples{
# Examples
# generic with random probabilities

treeDiag(c('Flight on time?','Luggage on time?'),
   c(.8,.2), list(c(.97,.03), c(.15,.85)))

treeDiag(c('Breakfast?','Go to class'), c(.4,.6),
   list(c(.4,.36,.34),c(.6,.3,.1)), c('Yes','No'),
   c('Statistics','English','Sociology'), showWork=TRUE)

treeDiag(c('Breakfast?','Go to class'), c(.4,.11,.49),
   list(c(.4,.36,.24),c(.6,.3,.1),c(.1,.4,.5)),
   c('one','two','three'), c('Statistics','English','Sociology'))

treeDiag(c('Dow Jones rise?', 'NASDAQ rise?'),
   c(0.53, 0.47), list(c(0.75, 0.25), c(0.72, 0.28)),
   solSub=list(c("(a)", "(b)"), c("(c)", "(d)")), solwd=0.08)
}
\keyword{ Tree diagram }
\keyword{ Conditional probability }
\keyword{ Bayes Theorem }
