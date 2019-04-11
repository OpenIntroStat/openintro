\name{ask}
\alias{ask}
\docType{data}
\title{How important is it to ask pointed questions?}
\description{
  Something is wrong with this data set.

  In this experiment, each individual was asked to be a seller of an iPod
  (a product commonly used to store music on before smart phones...).
  They participant received $10 + 5\% of the sale price for participating.
  The iPod they were selling had frozen twice in the past inexplicably but
  otherwise worked fine. The prospective buyer starts off and then asks
  one of three final questions, depending on the seller's treatment group.

  The three possible questions:
  \itemize{
    \item{General: What can you tell me about it?}
    \item{Positive Assumption: It doesn't have any problems, does it?}
    \item{Negative Assumption: What problems does it have?}
  }

  The outcome variable is whether or not the participant discloses
  or hides the problem with the iPod.
}
\usage{data("ask")}
\format{
  A data frame with 219 observations on the following 3 variables.
  \describe{
    \item{\code{question.class}}{The type of question: \code{general},
      \code{pos_assumption}, and \code{neg_assumption}.}
    \item{\code{question}}{The question corresponding to the
      \code{question.class}}
    \item{\code{response}}{The classified response from the seller,
      either \code{disclose} or \code{hide}.}
  }
}
\source{
  Minson JA, Ruedy NE, Schweitzer ME. There \emph{is} such a thing as a stupid question: Question disclosure in strategic communication.
  \url{http://opim.wharton.upenn.edu/DPlab/papers/workingPapers/Minson_working_Ask\%20(the\%20Right\%20Way)\%20and\%20You\%20Shall\%20Receive.pdf}
}
\examples{
data(ask)
(ask.table <- table(ask[, c("question.class", "response")]))
(test <- chisq.test(ask.table))
barplot(t(ask.table), col = COL[1:2])

# Check the test's assumption around sufficient expected observations
# per table cell.
names(test)
test$expected
}
\keyword{datasets}
