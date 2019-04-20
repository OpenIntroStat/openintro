#' Predicting Who'd Vote for NSA Mass Surveillance
#'
#' In 2013, the House of Representatives voted to not stop the National
#' Security Agency's (NSA's) mass surveillance of phone behaviors. We look at
#' two predictors for how a representative voted: their party and how much
#' money they have received from the private defense industry.
#'
#'
#' @name vote_nsa
#' @docType data
#' @format A tibble with 434 observations on the following 5 variables.
#' \describe{
#'   \item{name}{Name of the Congressional representative.}
#'   \item{party}{The party of the representative: \code{D} for Democrat and
#'   \code{R} for Republican.}
#'   \item{state}{State for the representative.}
#'   \item{money}{Money received from the defense industry for their campaigns.}
#'   \item{phone_spy_vote}{Voting to rein in the phone dragnet or continue
#'   allowing mass surveillance.}
#'   }
#' @references Article by Wired: \emph{Lawmakers Who Upheld NSA Phone Spying
#' Received Double the Defense Industry Cash}.
#' \url{http://www.wired.com/threatlevel/2013/07/money-nsa-vote}
#' @source Maplight (\url{maplight.org}).
#' \url{http://s3.documentcloud.org/documents/741074/amash-amendment-vote-maplight.pdf}
#' @keywords datasets
#' @examples
#'
#' table(vote_nsa$party, vote_nsa$phone_spy_vote)
#' boxplot(vote_nsa$money / 1000 ~ vote_nsa$phone_spy_vote,
#'         ylab = "$1000s Received from Defense Industry")
#'
"vote_nsa"
