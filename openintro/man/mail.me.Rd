\name{mail.me}
\alias{mail.me}
\docType{data}
\title{Influence of a Good Mood on Helpfulness}
\description{
  This study investigated whether finding a coin influenced a person's
  likelihood of mailing a sealed but addressed letter that appeared
  to have been accidentally left in a conspicuous place.
  Several variables were collected during the experiment,
  including two randomized variables of whether there was
  a coin to be found and whether the letter already had a stamp
  on it.
}
\usage{data("mail.me")}
\format{
  A data frame with 42 observations on the following 4 variables.
  \describe{
    \item{\code{stamped}}{a factor with levels \code{no} \code{yes}}
    \item{\code{found.coin}}{a factor with levels \code{coin} \code{no_coin}}
    \item{\code{gender}}{a factor with levels \code{female} \code{male}}
    \item{\code{mailed.letter}}{a factor with levels \code{no} \code{yes}}
  }
}
\details{
  The precise context was in a phone booth (this study is from the 1970s!),
  where a person who entered a phone booth would find a dime in the phone
  tray, which would be sufficient to pay for their phone call. There was
  also a letter next to the phone, which sometimes had a stamp on it.
}
\source{
  Levin PF, Isen AM. 1975. Studies on the Effect of Feeling Good
  on Helping. Sociometry 31(1), p141-147.
}
\examples{
data(mail.me)
table(mail.me)
(x <- table(mail.me[, c("mailed.letter", "found.coin")]))
chisq.test(x)

(x <- table(mail.me[, c("mailed.letter", "stamped")]))
chisq.test(x)

m <- glm(mailed.letter ~ stamped + found.coin + gender,
    data = mail.me,
    family = binomial)
summary(m)
}
\keyword{datasets}
