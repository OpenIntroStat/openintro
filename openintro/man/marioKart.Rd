\name{marioKart}
\alias{marioKart}
\docType{data}
\title{Wii Mario Kart auctions from Ebay}
\description{
Auction data from Ebay for the game Mario Kart for the Nintendo Wii. This data was collected in early October, 2009.
}
\usage{data(marioKart)}
\format{
  A data frame with 143 observations on the following 12 variables. All prices are in US dollars.
  \describe{
    \item{\code{ID}}{ Auction ID assigned by Ebay. }
    \item{\code{duration}}{ Auction length, in days. }
    \item{\code{nBids}}{ Number of bids. }
    \item{\code{cond}}{ Game condition, either \code{new} or \code{used}. }
    \item{\code{startPr}}{ Start price of the auction. }
    \item{\code{shipPr}}{ Shipping price. }
    \item{\code{totalPr}}{ Total price, which equals the auction price plus the shipping price. }
    \item{\code{shipSp}}{ Shipping speed or method. }
    \item{\code{sellerRate}}{ The seller's rating on Ebay. This is the number of positive ratings minus the number of negative ratings for the seller. }
    \item{\code{stockPhoto}}{ Whether the auction feature photo was a stock photo or not. If the picture was used in many auctions, then it was called a stock photo. }
    \item{\code{wheels}}{ Number of Wii wheels included in the auction. These are steering wheel attachments to make it seem as though you are actually driving in the game. When used with the controller, turning the wheel actually causes the character on screen to turn. }
    \item{\code{title}}{ The title of the auctions. }
  }
}
\details{
There are several interesting features in the data. First off, note that there are two outliers in the data, as shown below. These serve as a nice example of what one should do when encountering an outlier: examine the data point and remove it only if there is a good reason. In these two cases, we can see from the auction titles that they included other items in their auctions besides the game, which justifies removing them from the data set.

\figure{marioKartOutliers01.png}{Full Mario Kart data set}

This data set includes all auctions for a full week in October, 2009. Auctions were included in the data set if they satisfied a number of conditions. (1) They were included in a search for "wii mario kart" on ebay.com, (2) items were in the Video Games > Games > Nintendo Wii section of Ebay, (3) the listing was an auction and not exclusively a "Buy it Now" listing (sellers sometimes offer an optional higher price for a buyer to end bidding and win the auction immediately, which is an \emph{optional} Buy it Now auction), (4) the item listed was the actual game, (5) the item was being sold from the US, (6) the item had at least one bidder, (7) there were no other items included in the auction with the exception of racing wheels, either generic or brand-name being acceptable, and (8) the auction did not end with a Buy It Now option.
}
\references{
\url{http://www.ebay.com/}

\url{http://www.openintro.org/}
}
\examples{
data(marioKart)

#===> Identify the outliers <===#
boxPlot(marioKart$totalPr, marioKart$cond, horiz=TRUE)
toss <- which(marioKart$totalPr > 80)
lines(rep(marioKart$totalPr[toss[1]], 2), c(2.4, 2))
text(marioKart$totalPr[toss[1]]-55, 2.4, marioKart$title[toss[1]],
	pos=3, cex=0.5)
lines(rep(marioKart$totalPr[toss[2]], 2), c(1.6, 2))
text(marioKart$totalPr[toss[2]], 1.6, marioKart$title[toss[2]],
	pos=1, cex=0.5)
marioKart[toss, ]
# the other two points marked on the boxplot are legitimate auctions

#===> Replot without the outliers <===#
boxPlot(marioKart$totalPr[-toss], marioKart$cond[-toss], horiz=TRUE)

#===> Fit a Multiple Regression Model <===#
mk <- marioKart[-toss,]
summary(lm(totalPr ~ cond + stockPhoto + duration + wheels, mk))
summary(lm(totalPr ~ cond + stockPhoto + wheels, mk))
summary(fit <- lm(totalPr ~ cond + wheels, mk))

#===> Fit Diagnostics <===#
e <- fit$res
f <- fit$fit
par(mfrow=c(2,3), mar=c(4, 4, 2, 1))
qqnorm(e, ylab="Residuals", main="")
plot(e, xlab="Order of collection", ylab="Residuals")
plot(f, e, xlab="Fitted values", ylab="Residuals")
plot(f, (abs(e)), xlab="Fitted values",
     ylab="Absolute value of residuals")
boxPlot(e, mk$cond, xlab="Condition", ylab="Residuals")
plot(mk$wheels, e, xlab="Number of wheels", ylab="Residuals",
     main="Notice curvature")
}
\keyword{datasets}
