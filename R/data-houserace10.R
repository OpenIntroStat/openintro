#' Election results for the 2010 U.S. House of Represenatives races
#'
#' Election results for the 2010 U.S. House of Represenatives races
#'
#' This analysis in the Examples section was inspired by and is similar to that
#' of Nate Silver's district-level analysis on the FiveThirtyEight blog in the
#' New York Times: \url{https://fivethirtyeight.com/features/2010-an-aligning-election}
#'
#' @name houserace10
#' @docType data
#' @format A data frame with 435 observations on the following 24 variables.
#' \describe{
#'   \item{id}{Unique identifier for the race, which does not
#' overlap with other 2010 races (see \code{\link{govrace10}} and
#' \code{\link{senaterace10}})}
#'   \item{state}{State name}
#'   \item{abbr}{State name abbreviation}
#'   \item{num}{District number for the state}
#'   \item{name1}{Name of the winning candidate}
#'   \item{perc1}{Percentage of vote for winning candidate (if more than
#' one candidate)}
#'   \item{party1}{Party of winning candidate}
#'   \item{votes1}{Number of votes for winning candidate}
#'   \item{name2}{Name of candidate with second most votes}
#'   \item{perc2}{Percentage of vote for candidate who came in second}
#'   \item{party2}{Party of candidate with second most votes}
#'   \item{votes2}{Number of votes for candidate who came in second}
#'   \item{name3}{Name of candidate with third most votes}
#'   \item{perc3}{Percentage of vote for candidate who came in third}
#'   \item{party3}{Party of candidate with third most votes}
#'   \item{votes3}{Number of votes for candidate who came in third}
#'   \item{name4}{Name of candidate with fourth most votes}
#'   \item{perc4}{Percentage of vote for candidate who came in fourth}
#'   \item{party4}{Party of candidate with fourth most votes}
#'   \item{votes4}{Number of votes for candidate who came in fourth}
#'   \item{name5}{Name of candidate with fifth most votes}
#'   \item{perc5}{Percentage of vote for candidate who came in fifth}
#'   \item{party5}{Party of candidate with fifth most votes}
#'   \item{votes5}{Number of votes for candidate who came in fifth}
#'   }
#' @source Data was collected from MSNBC.com on November 9th, 2010.
#' @keywords datasets
#' @examples
#'
#' hr <- table(houserace10[,c("abbr", "party1")])
#' nr <- apply(hr, 1, sum)
#'
#' pr   <- prrace08[prrace08$state != "DC",c("state", "p_obama")]
#' hr   <- hr[as.character(pr$state),]
#' (fit <- glm(hr ~ pr$p_obama, family=binomial))
#'
#' x1 <- pr$p_obama[match(houserace10$abbr, pr$state)]
#' y1 <- (houserace10$party1 == "Democrat")+0
#' g  <- glm(y1 ~ x1, family=binomial)
#'
#'
#' x  <- pr$p_obama[pr$state != "DC"]
#' nr <- apply(hr, 1, sum)
#' plot(x, hr[,"Democrat"] / nr,
#'     pch = 19, cex = sqrt(nr), col = "#22558844",
#'     xlim = c(20, 80), ylim = c(0, 1),
#'     xlab = "Percent vote for Obama in 2008",
#'     ylab = "Probability of Democrat winning House seat")
#' X  <- seq(0, 100, 0.1)
#' lo <- -5.6079 + 0.1009*X
#' p  <- exp(lo)/(1+exp(lo))
#' lines(X, p)
#' abline(h=0:1, lty=2, col="#888888")
#'
"houserace10"
